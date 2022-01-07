
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct timespec64 {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct ixgbe_hw {int dummy; } ;
struct TYPE_2__ {int cycle_last; } ;
struct cyclecounter {int shift; int mult; } ;
struct ixgbe_adapter {int flags2; int tmreg_lock; TYPE_1__ hw_tc; struct ixgbe_hw hw; struct cyclecounter hw_cc; } ;


 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP0_DIR ;
 int IXGBE_ESDP_SDP0_NATIVE ;
 int IXGBE_FLAG2_PTP_PPS_ENABLED ;
 int IXGBE_FREQOUT0 ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TRGTTIMH0 ;
 int IXGBE_TRGTTIML0 ;
 int IXGBE_TSAUXC ;
 int IXGBE_TSAUXC_DIS_TS_CLEAR ;
 int IXGBE_TSAUXC_EN_CLK ;
 int IXGBE_TSAUXC_EN_TT0 ;
 int IXGBE_TSAUXC_SDP0_INT ;
 int IXGBE_TSAUXC_ST0 ;
 int IXGBE_TSSDP ;
 int IXGBE_TSSDP_TS_SDP0_CLK0 ;
 int IXGBE_TSSDP_TS_SDP0_EN ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int NS_PER_HALF_SEC ;
 int NS_PER_SEC ;
 int div_u64 (int,int ) ;
 int div_u64_rem (int,int,int*) ;
 struct timespec64 ns_to_timespec64 (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_read (TYPE_1__*) ;

__attribute__((used)) static void ixgbe_ptp_setup_sdp_X550(struct ixgbe_adapter *adapter)
{
 u32 esdp, tsauxc, freqout, trgttiml, trgttimh, rem, tssdp;
 struct cyclecounter *cc = &adapter->hw_cc;
 struct ixgbe_hw *hw = &adapter->hw;
 u64 ns = 0, clock_edge = 0;
 struct timespec64 ts;
 unsigned long flags;


 IXGBE_WRITE_REG(hw, IXGBE_TSAUXC, 0x0);
 IXGBE_WRITE_FLUSH(hw);

 if (!(adapter->flags2 & IXGBE_FLAG2_PTP_PPS_ENABLED))
  return;

 esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);




 esdp |= IXGBE_ESDP_SDP0_DIR |
  IXGBE_ESDP_SDP0_NATIVE;





 tsauxc = (IXGBE_TSAUXC_EN_CLK | IXGBE_TSAUXC_ST0 |
    IXGBE_TSAUXC_EN_TT0 | IXGBE_TSAUXC_SDP0_INT |
    0x40000000);

 tssdp = (IXGBE_TSSDP_TS_SDP0_EN |
   IXGBE_TSSDP_TS_SDP0_CLK0);





 freqout = div_u64(NS_PER_HALF_SEC << cc->shift, cc->mult);


 spin_lock_irqsave(&adapter->tmreg_lock, flags);
 ns = timecounter_read(&adapter->hw_tc);
 clock_edge = adapter->hw_tc.cycle_last;
 spin_unlock_irqrestore(&adapter->tmreg_lock, flags);


 div_u64_rem(ns, NS_PER_SEC, &rem);




 rem = (NS_PER_SEC - rem);


 clock_edge += div_u64(((u64)rem << cc->shift), cc->mult);
 ts = ns_to_timespec64(clock_edge);
 trgttiml = (u32)ts.tv_nsec;
 trgttimh = (u32)ts.tv_sec;

 IXGBE_WRITE_REG(hw, IXGBE_FREQOUT0, freqout);
 IXGBE_WRITE_REG(hw, IXGBE_TRGTTIML0, trgttiml);
 IXGBE_WRITE_REG(hw, IXGBE_TRGTTIMH0, trgttimh);

 IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp);
 IXGBE_WRITE_REG(hw, IXGBE_TSSDP, tssdp);
 IXGBE_WRITE_REG(hw, IXGBE_TSAUXC, tsauxc);

 IXGBE_WRITE_FLUSH(hw);
}
