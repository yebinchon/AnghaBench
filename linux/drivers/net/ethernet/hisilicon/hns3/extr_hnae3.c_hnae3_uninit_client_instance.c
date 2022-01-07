
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_client {int type; } ;
struct hnae3_ae_dev {TYPE_1__* ops; int flag; } ;
struct TYPE_2__ {int (* uninit_client_instance ) (struct hnae3_client*,struct hnae3_ae_dev*) ;} ;


 int HNAE3_DEV_INITED_B ;
 scalar_t__ hnae3_client_match (int ) ;
 scalar_t__ hnae3_get_bit (int ,int ) ;
 scalar_t__ hnae3_get_client_init_flag (struct hnae3_client*,struct hnae3_ae_dev*) ;
 int hnae3_set_client_init_flag (struct hnae3_client*,struct hnae3_ae_dev*,int ) ;
 int stub1 (struct hnae3_client*,struct hnae3_ae_dev*) ;

__attribute__((used)) static void hnae3_uninit_client_instance(struct hnae3_client *client,
      struct hnae3_ae_dev *ae_dev)
{

 if (!(hnae3_client_match(client->type) &&
       hnae3_get_bit(ae_dev->flag, HNAE3_DEV_INITED_B)))
  return;

 if (hnae3_get_client_init_flag(client, ae_dev)) {
  ae_dev->ops->uninit_client_instance(client, ae_dev);

  hnae3_set_client_init_flag(client, ae_dev, 0);
 }
}
