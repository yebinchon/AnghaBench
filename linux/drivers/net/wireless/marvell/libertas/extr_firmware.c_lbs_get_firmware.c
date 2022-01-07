
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lbs_fw_table {scalar_t__ model; int * fwname; int * helper; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;


 int BUG_ON (int ) ;
 int ENOENT ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int *,struct device*) ;

int lbs_get_firmware(struct device *dev, u32 card_model,
   const struct lbs_fw_table *fw_table,
   const struct firmware **helper,
   const struct firmware **mainfw)
{
 const struct lbs_fw_table *iter;
 int ret;

 BUG_ON(helper == ((void*)0));
 BUG_ON(mainfw == ((void*)0));


 iter = fw_table;
 while (iter && iter->helper) {
  if (iter->model != card_model)
   goto next;

  if (*helper == ((void*)0)) {
   ret = request_firmware(helper, iter->helper, dev);
   if (ret)
    goto next;





   if (iter->fwname == ((void*)0))
    return 0;
  }

  if (*mainfw == ((void*)0)) {
   ret = request_firmware(mainfw, iter->fwname, dev);
   if (ret) {



    release_firmware(*helper);
    *helper = ((void*)0);
   }
  }

  if (*helper && *mainfw)
   return 0;

  next:
  iter++;
 }


 release_firmware(*helper);
 *helper = ((void*)0);
 release_firmware(*mainfw);
 *mainfw = ((void*)0);

 return -ENOENT;
}
