
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int EBUSY ;
 int HCLGE_LINK_STATUS_MS ;
 int HCLGE_MAC_LINK_STATUS_NUM ;
 int hclge_get_mac_link_status (struct hclge_dev*) ;
 int msleep (int ) ;

__attribute__((used)) static int hclge_mac_link_status_wait(struct hclge_dev *hdev, int link_ret)
{


 int i = 0;
 int ret;

 do {
  ret = hclge_get_mac_link_status(hdev);
  if (ret < 0)
   return ret;
  else if (ret == link_ret)
   return 0;

  msleep(HCLGE_LINK_STATUS_MS);
 } while (++i < 100);
 return -EBUSY;
}
