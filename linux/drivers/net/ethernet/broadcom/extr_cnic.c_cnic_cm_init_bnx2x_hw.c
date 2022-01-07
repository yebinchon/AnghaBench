
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cnic_dev {int netdev; } ;
struct bnx2x {int pfid; } ;


 scalar_t__ BAR_TSTRORM_INTMEM ;
 scalar_t__ BAR_XSTRORM_INTMEM ;
 int BP_PORT (struct bnx2x*) ;
 int CNIC_WR (struct cnic_dev*,scalar_t__,int) ;
 int CNIC_WR16 (struct cnic_dev*,scalar_t__,int ) ;
 int CNIC_WR8 (struct cnic_dev*,scalar_t__,int) ;
 int DEF_MAX_CWND ;
 int DEF_MAX_DA_COUNT ;
 int DEF_SWS_TIMER ;
 int DEF_TOS ;
 int DEF_TTL ;
 scalar_t__ TSTORM_TCP_MAX_CWND_OFFSET (int ) ;
 scalar_t__ XSTORM_ISCSI_LOCAL_VLAN_OFFSET (int ) ;
 scalar_t__ XSTORM_ISCSI_TCP_VARS_ADV_WND_SCL_OFFSET (int ) ;
 scalar_t__ XSTORM_ISCSI_TCP_VARS_TOS_OFFSET (int ) ;
 scalar_t__ XSTORM_ISCSI_TCP_VARS_TTL_OFFSET (int ) ;
 scalar_t__ XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_ENABLED_OFFSET (int ) ;
 scalar_t__ XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_MAX_COUNT_OFFSET (int ) ;
 scalar_t__ XSTORM_TCP_TX_SWS_TIMER_VAL_OFFSET (int ) ;
 int cnic_bnx2x_set_tcp_options (struct cnic_dev*,int ,int) ;
 int cnic_init_bnx2x_mac (struct cnic_dev*) ;
 struct bnx2x* netdev_priv (int ) ;

__attribute__((used)) static int cnic_cm_init_bnx2x_hw(struct cnic_dev *dev)
{
 struct bnx2x *bp = netdev_priv(dev->netdev);
 u32 pfid = bp->pfid;
 u32 port = BP_PORT(bp);

 cnic_init_bnx2x_mac(dev);
 cnic_bnx2x_set_tcp_options(dev, 0, 1);

 CNIC_WR16(dev, BAR_XSTRORM_INTMEM +
    XSTORM_ISCSI_LOCAL_VLAN_OFFSET(pfid), 0);

 CNIC_WR(dev, BAR_XSTRORM_INTMEM +
  XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_ENABLED_OFFSET(port), 1);
 CNIC_WR(dev, BAR_XSTRORM_INTMEM +
  XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_MAX_COUNT_OFFSET(port),
  DEF_MAX_DA_COUNT);

 CNIC_WR8(dev, BAR_XSTRORM_INTMEM +
   XSTORM_ISCSI_TCP_VARS_TTL_OFFSET(pfid), DEF_TTL);
 CNIC_WR8(dev, BAR_XSTRORM_INTMEM +
   XSTORM_ISCSI_TCP_VARS_TOS_OFFSET(pfid), DEF_TOS);
 CNIC_WR8(dev, BAR_XSTRORM_INTMEM +
   XSTORM_ISCSI_TCP_VARS_ADV_WND_SCL_OFFSET(pfid), 2);
 CNIC_WR(dev, BAR_XSTRORM_INTMEM +
  XSTORM_TCP_TX_SWS_TIMER_VAL_OFFSET(pfid), DEF_SWS_TIMER);

 CNIC_WR(dev, BAR_TSTRORM_INTMEM + TSTORM_TCP_MAX_CWND_OFFSET(pfid),
  DEF_MAX_CWND);
 return 0;
}
