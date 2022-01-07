
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int HCLGE_LINK_STATUS_DOWN ;
 int HCLGE_LINK_STATUS_UP ;
 int hclge_mac_link_status_wait (struct hclge_dev*,int) ;
 int hclge_phy_link_status_wait (struct hclge_dev*,int) ;

__attribute__((used)) static int hclge_mac_phy_link_status_wait(struct hclge_dev *hdev, bool en,
       bool is_phy)
{



 int link_ret;

 link_ret = en ? 1 : 0;

 if (is_phy)
  hclge_phy_link_status_wait(hdev, link_ret);

 return hclge_mac_link_status_wait(hdev, link_ret);
}
