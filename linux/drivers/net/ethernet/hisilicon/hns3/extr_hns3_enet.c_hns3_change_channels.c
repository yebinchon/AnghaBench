
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hnae3_handle {TYPE_3__* pdev; TYPE_2__* ae_algo; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* set_channels ) (struct hnae3_handle*,int ,int) ;} ;


 int HNAE3_INIT_CLIENT ;
 int HNAE3_UNINIT_CLIENT ;
 int HNAE3_UP_CLIENT ;
 int dev_err (int *,char*,int ) ;
 int hns3_reset_notify (struct hnae3_handle*,int ) ;
 int stub1 (struct hnae3_handle*,int ,int) ;

__attribute__((used)) static int hns3_change_channels(struct hnae3_handle *handle, u32 new_tqp_num,
    bool rxfh_configured)
{
 int ret;

 ret = handle->ae_algo->ops->set_channels(handle, new_tqp_num,
       rxfh_configured);
 if (ret) {
  dev_err(&handle->pdev->dev,
   "Change tqp num(%u) fail.\n", new_tqp_num);
  return ret;
 }

 ret = hns3_reset_notify(handle, HNAE3_INIT_CLIENT);
 if (ret)
  return ret;

 ret = hns3_reset_notify(handle, HNAE3_UP_CLIENT);
 if (ret)
  hns3_reset_notify(handle, HNAE3_UNINIT_CLIENT);

 return ret;
}
