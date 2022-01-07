
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_ae_dev {struct hclge_dev* priv; } ;
struct hclge_dev {int flr_state; } ;


 int HNAE3_FLR_DONE ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hclge_flr_done(struct hnae3_ae_dev *ae_dev)
{
 struct hclge_dev *hdev = ae_dev->priv;

 set_bit(HNAE3_FLR_DONE, &hdev->flr_state);
}
