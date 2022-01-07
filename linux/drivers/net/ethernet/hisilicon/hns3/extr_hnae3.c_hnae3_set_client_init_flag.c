
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_client {int type; } ;
struct hnae3_ae_dev {int flag; } ;




 int HNAE3_KNIC_CLIENT_INITED_B ;
 int HNAE3_ROCE_CLIENT_INITED_B ;
 int hnae3_set_bit (int ,int ,unsigned int) ;

void hnae3_set_client_init_flag(struct hnae3_client *client,
    struct hnae3_ae_dev *ae_dev,
    unsigned int inited)
{
 if (!client || !ae_dev)
  return;

 switch (client->type) {
 case 129:
  hnae3_set_bit(ae_dev->flag, HNAE3_KNIC_CLIENT_INITED_B, inited);
  break;
 case 128:
  hnae3_set_bit(ae_dev->flag, HNAE3_ROCE_CLIENT_INITED_B, inited);
  break;
 default:
  break;
 }
}
