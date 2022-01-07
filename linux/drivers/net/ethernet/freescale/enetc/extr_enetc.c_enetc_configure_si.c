
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_hw {int dummy; } ;
struct enetc_si {scalar_t__ num_rss; int cbd_ring; struct enetc_hw hw; } ;
struct enetc_ndev_priv {int num_rx_rings; struct enetc_si* si; } ;


 int ENETC_SICAR0 ;
 int ENETC_SICAR1 ;
 int ENETC_SICAR_MSI ;
 int ENETC_SICAR_RD_COHERENT ;
 int ENETC_SICAR_WR_COHERENT ;
 int ENETC_SIMR ;
 int ENETC_SIMR_EN ;
 int enetc_setup_cbdr (struct enetc_hw*,int *) ;
 int enetc_setup_default_rss_table (struct enetc_si*,int ) ;
 int enetc_wr (struct enetc_hw*,int ,int) ;

__attribute__((used)) static int enetc_configure_si(struct enetc_ndev_priv *priv)
{
 struct enetc_si *si = priv->si;
 struct enetc_hw *hw = &si->hw;
 int err;

 enetc_setup_cbdr(hw, &si->cbd_ring);

 enetc_wr(hw, ENETC_SICAR0,
   ENETC_SICAR_RD_COHERENT | ENETC_SICAR_WR_COHERENT);
 enetc_wr(hw, ENETC_SICAR1, ENETC_SICAR_MSI);

 enetc_wr(hw, ENETC_SIMR, ENETC_SIMR_EN);

 if (si->num_rss) {
  err = enetc_setup_default_rss_table(si, priv->num_rx_rings);
  if (err)
   return err;
 }

 return 0;
}
