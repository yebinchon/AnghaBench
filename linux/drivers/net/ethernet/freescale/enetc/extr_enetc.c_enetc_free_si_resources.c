
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_si {int cbd_ring; int hw; } ;
struct enetc_ndev_priv {int cls_rules; int dev; struct enetc_si* si; } ;


 int enetc_clear_cbdr (int *) ;
 int enetc_free_cbdr (int ,int *) ;
 int kfree (int ) ;

void enetc_free_si_resources(struct enetc_ndev_priv *priv)
{
 struct enetc_si *si = priv->si;

 enetc_clear_cbdr(&si->hw);
 enetc_free_cbdr(priv->dev, &si->cbd_ring);

 kfree(priv->cls_rules);
}
