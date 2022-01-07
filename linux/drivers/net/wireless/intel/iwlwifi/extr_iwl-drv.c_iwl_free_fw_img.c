
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_drv {int dummy; } ;
struct fw_img {int num_sec; int * sec; } ;


 int iwl_free_fw_desc (struct iwl_drv*,int *) ;
 int kfree (int *) ;

__attribute__((used)) static void iwl_free_fw_img(struct iwl_drv *drv, struct fw_img *img)
{
 int i;
 for (i = 0; i < img->num_sec; i++)
  iwl_free_fw_desc(drv, &img->sec[i]);
 kfree(img->sec);
}
