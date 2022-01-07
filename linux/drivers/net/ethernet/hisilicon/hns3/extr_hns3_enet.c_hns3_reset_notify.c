
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
typedef enum hnae3_reset_notify_type { ____Placeholder_hnae3_reset_notify_type } hnae3_reset_notify_type ;







 int hns3_reset_notify_down_enet (struct hnae3_handle*) ;
 int hns3_reset_notify_init_enet (struct hnae3_handle*) ;
 int hns3_reset_notify_restore_enet (struct hnae3_handle*) ;
 int hns3_reset_notify_uninit_enet (struct hnae3_handle*) ;
 int hns3_reset_notify_up_enet (struct hnae3_handle*) ;

__attribute__((used)) static int hns3_reset_notify(struct hnae3_handle *handle,
        enum hnae3_reset_notify_type type)
{
 int ret = 0;

 switch (type) {
 case 128:
  ret = hns3_reset_notify_up_enet(handle);
  break;
 case 132:
  ret = hns3_reset_notify_down_enet(handle);
  break;
 case 131:
  ret = hns3_reset_notify_init_enet(handle);
  break;
 case 129:
  ret = hns3_reset_notify_uninit_enet(handle);
  break;
 case 130:
  ret = hns3_reset_notify_restore_enet(handle);
  break;
 default:
  break;
 }

 return ret;
}
