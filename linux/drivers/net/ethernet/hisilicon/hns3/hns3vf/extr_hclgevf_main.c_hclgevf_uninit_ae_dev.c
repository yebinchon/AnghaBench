
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct hclgevf_dev {int dummy; } ;


 int hclgevf_uninit_hdev (struct hclgevf_dev*) ;

__attribute__((used)) static void hclgevf_uninit_ae_dev(struct hnae3_ae_dev *ae_dev)
{
 struct hclgevf_dev *hdev = ae_dev->priv;

 hclgevf_uninit_hdev(hdev);
 ae_dev->priv = ((void*)0);
}
