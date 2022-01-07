
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int * rss_lut_user; int * rss_hkey_user; } ;


 int kfree (int *) ;

__attribute__((used)) static void i40e_clear_rss_config_user(struct i40e_vsi *vsi)
{
 if (!vsi)
  return;

 kfree(vsi->rss_hkey_user);
 vsi->rss_hkey_user = ((void*)0);

 kfree(vsi->rss_lut_user);
 vsi->rss_lut_user = ((void*)0);
}
