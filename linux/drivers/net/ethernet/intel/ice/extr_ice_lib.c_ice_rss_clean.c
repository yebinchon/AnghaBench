
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {int rss_lut_user; int rss_hkey_user; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int devm_kfree (int *,int ) ;

__attribute__((used)) static void ice_rss_clean(struct ice_vsi *vsi)
{
 struct ice_pf *pf;

 pf = vsi->back;

 if (vsi->rss_hkey_user)
  devm_kfree(&pf->pdev->dev, vsi->rss_hkey_user);
 if (vsi->rss_lut_user)
  devm_kfree(&pf->pdev->dev, vsi->rss_lut_user);
}
