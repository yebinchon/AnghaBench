
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int dummy; } ;


 int hclgevf_cmd_set_promisc_mode (struct hclgevf_dev*,int) ;

__attribute__((used)) static int hclgevf_set_promisc_mode(struct hclgevf_dev *hdev, bool en_bc_pmc)
{
 return hclgevf_cmd_set_promisc_mode(hdev, en_bc_pmc);
}
