
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int nic; } ;


 int ETH_P_8021Q ;
 int hclgevf_set_vlan_filter (int *,int ,int ,int) ;
 int htons (int ) ;

__attribute__((used)) static int hclgevf_init_vlan_config(struct hclgevf_dev *hdev)
{
 return hclgevf_set_vlan_filter(&hdev->nic, htons(ETH_P_8021Q), 0,
           0);
}
