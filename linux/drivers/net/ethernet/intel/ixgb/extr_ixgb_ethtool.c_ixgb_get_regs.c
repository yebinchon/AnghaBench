
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgb_hw {int revision_id; int device_id; } ;
struct ixgb_adapter {struct ixgb_hw hw; } ;
struct ethtool_regs {int version; int len; } ;


 int AIS ;
 int APAE ;
 int ARD ;
 int CTRL0 ;
 int CTRL1 ;
 int EECD ;
 int FCRTH ;
 int FCRTL ;
 int ICR ;
 int ICS ;
 int IMC ;
 int IMS ;
 int IXGB_ALL_RAR_ENTRIES ;
 void* IXGB_GET_STAT (struct ixgb_adapter*,int ) ;
 void* IXGB_READ_REG (struct ixgb_hw*,int ) ;
 void* IXGB_READ_REG_ARRAY (struct ixgb_hw*,int ,int) ;
 int MACA ;
 int MFS ;
 int MSCA ;
 int MSRWD ;
 int PAP ;
 int PCSC1 ;
 int PCSC2 ;
 int PCSS1 ;
 int PCSS2 ;
 int RAH ;
 int RAIDC ;
 int RAL ;
 int RCTL ;
 int RDBAH ;
 int RDBAL ;
 int RDH ;
 int RDLEN ;
 int RDT ;
 int RDTR ;
 int RXCSUM ;
 int RXDCTL ;
 int STATUS ;
 int TCTL ;
 int TDBAH ;
 int TDBAL ;
 int TDH ;
 int TDLEN ;
 int TDT ;
 int TIDV ;
 int TSPMT ;
 int TXDCTL ;
 int UCCR ;
 int XPCSS ;
 int XPCSTC ;
 int bprch ;
 int bprcl ;
 int bptch ;
 int bptcl ;
 int crcerrs ;
 int dc ;
 int ecbc ;
 int gorch ;
 int gorcl ;
 int gotch ;
 int gotcl ;
 int gprch ;
 int gprcl ;
 int gptch ;
 int gptcl ;
 int ibic ;
 int icbc ;
 int jprch ;
 int jprcl ;
 int jptch ;
 int jptcl ;
 int lfc ;
 int mcfrc ;
 int mcftc ;
 int mpc ;
 int mprch ;
 int mprcl ;
 int mptch ;
 int mptcl ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int pfrc ;
 int pftc ;
 int plt64c ;
 int rfc ;
 int rjc ;
 int rlec ;
 int rnbc ;
 int roc ;
 int ruc ;
 int torh ;
 int torl ;
 int toth ;
 int totl ;
 int tprh ;
 int tprl ;
 int tpth ;
 int tptl ;
 int tsctc ;
 int tsctfc ;
 int uprch ;
 int uprcl ;
 int uptch ;
 int uptcl ;
 int vprch ;
 int vprcl ;
 int vptch ;
 int vptcl ;
 int xoffrxc ;
 int xofftxc ;
 int xonrxc ;
 int xontxc ;

__attribute__((used)) static void
ixgb_get_regs(struct net_device *netdev,
     struct ethtool_regs *regs, void *p)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct ixgb_hw *hw = &adapter->hw;
 u32 *reg = p;
 u32 *reg_start = reg;
 u8 i;




 regs->version = (1<<24) | hw->revision_id << 16 | hw->device_id;


 *reg++ = IXGB_READ_REG(hw, CTRL0);
 *reg++ = IXGB_READ_REG(hw, CTRL1);
 *reg++ = IXGB_READ_REG(hw, STATUS);
 *reg++ = IXGB_READ_REG(hw, EECD);
 *reg++ = IXGB_READ_REG(hw, MFS);


 *reg++ = IXGB_READ_REG(hw, ICR);
 *reg++ = IXGB_READ_REG(hw, ICS);
 *reg++ = IXGB_READ_REG(hw, IMS);
 *reg++ = IXGB_READ_REG(hw, IMC);


 *reg++ = IXGB_READ_REG(hw, RCTL);
 *reg++ = IXGB_READ_REG(hw, FCRTL);
 *reg++ = IXGB_READ_REG(hw, FCRTH);
 *reg++ = IXGB_READ_REG(hw, RDBAL);
 *reg++ = IXGB_READ_REG(hw, RDBAH);
 *reg++ = IXGB_READ_REG(hw, RDLEN);
 *reg++ = IXGB_READ_REG(hw, RDH);
 *reg++ = IXGB_READ_REG(hw, RDT);
 *reg++ = IXGB_READ_REG(hw, RDTR);
 *reg++ = IXGB_READ_REG(hw, RXDCTL);
 *reg++ = IXGB_READ_REG(hw, RAIDC);
 *reg++ = IXGB_READ_REG(hw, RXCSUM);


 for (i = 0; i < IXGB_ALL_RAR_ENTRIES; i++) {
  *reg++ = IXGB_READ_REG_ARRAY(hw, RAL, (i << 1));
  *reg++ = IXGB_READ_REG_ARRAY(hw, RAH, (i << 1));
 }


 *reg++ = IXGB_READ_REG(hw, TCTL);
 *reg++ = IXGB_READ_REG(hw, TDBAL);
 *reg++ = IXGB_READ_REG(hw, TDBAH);
 *reg++ = IXGB_READ_REG(hw, TDLEN);
 *reg++ = IXGB_READ_REG(hw, TDH);
 *reg++ = IXGB_READ_REG(hw, TDT);
 *reg++ = IXGB_READ_REG(hw, TIDV);
 *reg++ = IXGB_READ_REG(hw, TXDCTL);
 *reg++ = IXGB_READ_REG(hw, TSPMT);
 *reg++ = IXGB_READ_REG(hw, PAP);


 *reg++ = IXGB_READ_REG(hw, PCSC1);
 *reg++ = IXGB_READ_REG(hw, PCSC2);
 *reg++ = IXGB_READ_REG(hw, PCSS1);
 *reg++ = IXGB_READ_REG(hw, PCSS2);
 *reg++ = IXGB_READ_REG(hw, XPCSS);
 *reg++ = IXGB_READ_REG(hw, UCCR);
 *reg++ = IXGB_READ_REG(hw, XPCSTC);
 *reg++ = IXGB_READ_REG(hw, MACA);
 *reg++ = IXGB_READ_REG(hw, APAE);
 *reg++ = IXGB_READ_REG(hw, ARD);
 *reg++ = IXGB_READ_REG(hw, AIS);
 *reg++ = IXGB_READ_REG(hw, MSCA);
 *reg++ = IXGB_READ_REG(hw, MSRWD);


 *reg++ = IXGB_GET_STAT(adapter, tprl);
 *reg++ = IXGB_GET_STAT(adapter, tprh);
 *reg++ = IXGB_GET_STAT(adapter, gprcl);
 *reg++ = IXGB_GET_STAT(adapter, gprch);
 *reg++ = IXGB_GET_STAT(adapter, bprcl);
 *reg++ = IXGB_GET_STAT(adapter, bprch);
 *reg++ = IXGB_GET_STAT(adapter, mprcl);
 *reg++ = IXGB_GET_STAT(adapter, mprch);
 *reg++ = IXGB_GET_STAT(adapter, uprcl);
 *reg++ = IXGB_GET_STAT(adapter, uprch);
 *reg++ = IXGB_GET_STAT(adapter, vprcl);
 *reg++ = IXGB_GET_STAT(adapter, vprch);
 *reg++ = IXGB_GET_STAT(adapter, jprcl);
 *reg++ = IXGB_GET_STAT(adapter, jprch);
 *reg++ = IXGB_GET_STAT(adapter, gorcl);
 *reg++ = IXGB_GET_STAT(adapter, gorch);
 *reg++ = IXGB_GET_STAT(adapter, torl);
 *reg++ = IXGB_GET_STAT(adapter, torh);
 *reg++ = IXGB_GET_STAT(adapter, rnbc);
 *reg++ = IXGB_GET_STAT(adapter, ruc);
 *reg++ = IXGB_GET_STAT(adapter, roc);
 *reg++ = IXGB_GET_STAT(adapter, rlec);
 *reg++ = IXGB_GET_STAT(adapter, crcerrs);
 *reg++ = IXGB_GET_STAT(adapter, icbc);
 *reg++ = IXGB_GET_STAT(adapter, ecbc);
 *reg++ = IXGB_GET_STAT(adapter, mpc);
 *reg++ = IXGB_GET_STAT(adapter, tptl);
 *reg++ = IXGB_GET_STAT(adapter, tpth);
 *reg++ = IXGB_GET_STAT(adapter, gptcl);
 *reg++ = IXGB_GET_STAT(adapter, gptch);
 *reg++ = IXGB_GET_STAT(adapter, bptcl);
 *reg++ = IXGB_GET_STAT(adapter, bptch);
 *reg++ = IXGB_GET_STAT(adapter, mptcl);
 *reg++ = IXGB_GET_STAT(adapter, mptch);
 *reg++ = IXGB_GET_STAT(adapter, uptcl);
 *reg++ = IXGB_GET_STAT(adapter, uptch);
 *reg++ = IXGB_GET_STAT(adapter, vptcl);
 *reg++ = IXGB_GET_STAT(adapter, vptch);
 *reg++ = IXGB_GET_STAT(adapter, jptcl);
 *reg++ = IXGB_GET_STAT(adapter, jptch);
 *reg++ = IXGB_GET_STAT(adapter, gotcl);
 *reg++ = IXGB_GET_STAT(adapter, gotch);
 *reg++ = IXGB_GET_STAT(adapter, totl);
 *reg++ = IXGB_GET_STAT(adapter, toth);
 *reg++ = IXGB_GET_STAT(adapter, dc);
 *reg++ = IXGB_GET_STAT(adapter, plt64c);
 *reg++ = IXGB_GET_STAT(adapter, tsctc);
 *reg++ = IXGB_GET_STAT(adapter, tsctfc);
 *reg++ = IXGB_GET_STAT(adapter, ibic);
 *reg++ = IXGB_GET_STAT(adapter, rfc);
 *reg++ = IXGB_GET_STAT(adapter, lfc);
 *reg++ = IXGB_GET_STAT(adapter, pfrc);
 *reg++ = IXGB_GET_STAT(adapter, pftc);
 *reg++ = IXGB_GET_STAT(adapter, mcfrc);
 *reg++ = IXGB_GET_STAT(adapter, mcftc);
 *reg++ = IXGB_GET_STAT(adapter, xonrxc);
 *reg++ = IXGB_GET_STAT(adapter, xontxc);
 *reg++ = IXGB_GET_STAT(adapter, xoffrxc);
 *reg++ = IXGB_GET_STAT(adapter, xofftxc);
 *reg++ = IXGB_GET_STAT(adapter, rjc);

 regs->len = (reg - reg_start) * sizeof(u32);
}
