
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_client {int type; } ;
struct hnae3_ae_dev {TYPE_2__* pdev; TYPE_1__* ops; int flag; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* init_client_instance ) (struct hnae3_client*,struct hnae3_ae_dev*) ;} ;


 int HNAE3_DEV_INITED_B ;
 int dev_err (int *,char*,int) ;
 scalar_t__ hnae3_client_match (int ) ;
 scalar_t__ hnae3_get_bit (int ,int ) ;
 int stub1 (struct hnae3_client*,struct hnae3_ae_dev*) ;

__attribute__((used)) static int hnae3_init_client_instance(struct hnae3_client *client,
          struct hnae3_ae_dev *ae_dev)
{
 int ret;


 if (!(hnae3_client_match(client->type) &&
       hnae3_get_bit(ae_dev->flag, HNAE3_DEV_INITED_B))) {
  return 0;
 }

 ret = ae_dev->ops->init_client_instance(client, ae_dev);
 if (ret)
  dev_err(&ae_dev->pdev->dev,
   "fail to instantiate client, ret = %d\n", ret);

 return ret;
}
