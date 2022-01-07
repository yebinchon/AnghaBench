
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hnae3_handle {TYPE_1__* pdev; } ;
typedef enum hnae3_hw_error_type { ____Placeholder_hnae3_hw_error_type } hnae3_hw_error_type ;
struct TYPE_5__ {int type; int msg; } ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int dev_err (int *,char*,int ) ;
 TYPE_2__* hns3_hw_err ;

__attribute__((used)) static void hns3_process_hw_error(struct hnae3_handle *handle,
      enum hnae3_hw_error_type type)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(hns3_hw_err); i++) {
  if (hns3_hw_err[i].type == type) {
   dev_err(&handle->pdev->dev, "Detected %s!\n",
    hns3_hw_err[i].msg);
   break;
  }
 }
}
