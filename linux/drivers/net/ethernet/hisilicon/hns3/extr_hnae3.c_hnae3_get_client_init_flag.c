
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_client {int type; } ;
struct hnae3_ae_dev {int flag; } ;




 int HNAE3_KNIC_CLIENT_INITED_B ;
 int HNAE3_ROCE_CLIENT_INITED_B ;
 int hnae3_get_bit (int ,int ) ;

__attribute__((used)) static int hnae3_get_client_init_flag(struct hnae3_client *client,
          struct hnae3_ae_dev *ae_dev)
{
 int inited = 0;

 switch (client->type) {
 case 129:
  inited = hnae3_get_bit(ae_dev->flag,
           HNAE3_KNIC_CLIENT_INITED_B);
  break;
 case 128:
  inited = hnae3_get_bit(ae_dev->flag,
           HNAE3_ROCE_CLIENT_INITED_B);
  break;
 default:
  break;
 }

 return inited;
}
