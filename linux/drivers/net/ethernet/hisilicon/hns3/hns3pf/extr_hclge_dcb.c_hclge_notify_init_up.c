
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int HNAE3_INIT_CLIENT ;
 int HNAE3_UP_CLIENT ;
 int hclge_notify_client (struct hclge_dev*,int ) ;

__attribute__((used)) static int hclge_notify_init_up(struct hclge_dev *hdev)
{
 int ret;

 ret = hclge_notify_client(hdev, HNAE3_INIT_CLIENT);
 if (ret)
  return ret;

 return hclge_notify_client(hdev, HNAE3_UP_CLIENT);
}
