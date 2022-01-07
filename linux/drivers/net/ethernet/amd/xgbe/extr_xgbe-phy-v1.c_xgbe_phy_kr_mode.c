
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int * dfe_tap_ena; int * dfe_tap_cfg; int * pq_skew; int * blwc; int * tx_amp; int * cdr_rate; } ;


 int BLWC_ENA ;
 int CDR_RATE ;
 int DATARATE ;
 int MDIO_CTRL1 ;
 unsigned int MDIO_CTRL1_SPEED10G ;
 unsigned int MDIO_CTRL1_SPEEDSEL ;
 int MDIO_CTRL2 ;
 int MDIO_MMD_PCS ;
 unsigned int MDIO_PCS_CTRL2_10GBR ;
 unsigned int MDIO_PCS_CTRL2_TYPE ;
 int PLLSEL ;
 int PQ_REG ;
 int RXDFE_CONFIG ;
 int RXTX_REG114 ;
 int RXTX_REG129 ;
 int RXTX_REG20 ;
 int RXTX_REG22 ;
 int SIR1_SPEED ;
 int TXAMP ;
 int WORDMODE ;
 size_t XGBE_SPEED_10000 ;
 int XGBE_SPEED_10000_PLL ;
 int XGBE_SPEED_10000_RATE ;
 int XGBE_SPEED_10000_WORD ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;
 int XRXTX_IOWRITE (struct xgbe_prv_data*,int ,int ) ;
 int XRXTX_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int XSIR1_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int xgbe_phy_complete_ratechange (struct xgbe_prv_data*) ;
 int xgbe_phy_pcs_power_cycle (struct xgbe_prv_data*) ;
 int xgbe_phy_start_ratechange (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_kr_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 unsigned int reg;


 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL2);
 reg &= ~MDIO_PCS_CTRL2_TYPE;
 reg |= MDIO_PCS_CTRL2_10GBR;
 XMDIO_WRITE(pdata, MDIO_MMD_PCS, MDIO_CTRL2, reg);

 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
 reg &= ~MDIO_CTRL1_SPEEDSEL;
 reg |= MDIO_CTRL1_SPEED10G;
 XMDIO_WRITE(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);

 xgbe_phy_pcs_power_cycle(pdata);


 xgbe_phy_start_ratechange(pdata);

 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, DATARATE, XGBE_SPEED_10000_RATE);
 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, WORDMODE, XGBE_SPEED_10000_WORD);
 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, PLLSEL, XGBE_SPEED_10000_PLL);

 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, CDR_RATE,
      phy_data->cdr_rate[XGBE_SPEED_10000]);
 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, TXAMP,
      phy_data->tx_amp[XGBE_SPEED_10000]);
 XRXTX_IOWRITE_BITS(pdata, RXTX_REG20, BLWC_ENA,
      phy_data->blwc[XGBE_SPEED_10000]);
 XRXTX_IOWRITE_BITS(pdata, RXTX_REG114, PQ_REG,
      phy_data->pq_skew[XGBE_SPEED_10000]);
 XRXTX_IOWRITE_BITS(pdata, RXTX_REG129, RXDFE_CONFIG,
      phy_data->dfe_tap_cfg[XGBE_SPEED_10000]);
 XRXTX_IOWRITE(pdata, RXTX_REG22,
        phy_data->dfe_tap_ena[XGBE_SPEED_10000]);

 xgbe_phy_complete_ratechange(pdata);

 netif_dbg(pdata, link, pdata->netdev, "10GbE KR mode set\n");
}
