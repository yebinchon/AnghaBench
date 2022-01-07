
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dev; int pp4; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {unsigned int sfp_mux_address; unsigned int sfp_mux_channel; int sfp_comm; } ;


 int MUX_ADDR_HI ;
 int MUX_ADDR_LO ;
 int MUX_CHAN ;
 int XGBE_SFP_COMM_PCA9545 ;
 unsigned int XGBE_SFP_DIRECT ;
 void* XP_GET_BITS (int ,int ,int ) ;
 int XP_PROP_4 ;
 int dev_dbg (int ,char*,unsigned int) ;
 scalar_t__ netif_msg_probe (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_sfp_comm_setup(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 unsigned int mux_addr_hi, mux_addr_lo;

 mux_addr_hi = XP_GET_BITS(pdata->pp4, XP_PROP_4, MUX_ADDR_HI);
 mux_addr_lo = XP_GET_BITS(pdata->pp4, XP_PROP_4, MUX_ADDR_LO);
 if (mux_addr_lo == XGBE_SFP_DIRECT)
  return;

 phy_data->sfp_comm = XGBE_SFP_COMM_PCA9545;
 phy_data->sfp_mux_address = (mux_addr_hi << 2) + mux_addr_lo;
 phy_data->sfp_mux_channel = XP_GET_BITS(pdata->pp4, XP_PROP_4,
      MUX_CHAN);

 if (netif_msg_probe(pdata)) {
  dev_dbg(pdata->dev, "SFP: mux_address=%#x\n",
   phy_data->sfp_mux_address);
  dev_dbg(pdata->dev, "SFP: mux_channel=%u\n",
   phy_data->sfp_mux_channel);
 }
}
