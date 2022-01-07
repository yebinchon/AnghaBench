
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;


 int hclge_cfg_mac_speed_dup (struct hclge_dev*,int,int ) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static int hclge_cfg_mac_speed_dup_h(struct hnae3_handle *handle, int speed,
         u8 duplex)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 return hclge_cfg_mac_speed_dup(hdev, speed, duplex);
}
