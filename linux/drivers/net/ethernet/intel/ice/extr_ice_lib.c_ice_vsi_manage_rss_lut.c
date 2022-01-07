
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ice_vsi {TYPE_2__* back; int rss_table_size; int rss_size; int rss_lut_user; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kfree (int *,int *) ;
 int * devm_kzalloc (int *,int ,int ) ;
 int ice_fill_rss_lut (int *,int ,int ) ;
 int ice_set_rss (struct ice_vsi*,int *,int *,int ) ;
 int memcpy (int *,int ,int ) ;

int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
{
 int err = 0;
 u8 *lut;

 lut = devm_kzalloc(&vsi->back->pdev->dev, vsi->rss_table_size,
      GFP_KERNEL);
 if (!lut)
  return -ENOMEM;

 if (ena) {
  if (vsi->rss_lut_user)
   memcpy(lut, vsi->rss_lut_user, vsi->rss_table_size);
  else
   ice_fill_rss_lut(lut, vsi->rss_table_size,
      vsi->rss_size);
 }

 err = ice_set_rss(vsi, ((void*)0), lut, vsi->rss_table_size);
 devm_kfree(&vsi->back->pdev->dev, lut);
 return err;
}
