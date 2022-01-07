
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {int speed_ability; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 int EINVAL ;
 int HCLGE_SUPPORT_100G_BIT ;
 int HCLGE_SUPPORT_100M_BIT ;
 int HCLGE_SUPPORT_10G_BIT ;
 int HCLGE_SUPPORT_10M_BIT ;
 int HCLGE_SUPPORT_1G_BIT ;
 int HCLGE_SUPPORT_25G_BIT ;
 int HCLGE_SUPPORT_40G_BIT ;
 int HCLGE_SUPPORT_50G_BIT ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static int hclge_check_port_speed(struct hnae3_handle *handle, u32 speed)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 u32 speed_ability = hdev->hw.mac.speed_ability;
 u32 speed_bit = 0;

 switch (speed) {
 case 132:
  speed_bit = HCLGE_SUPPORT_10M_BIT;
  break;
 case 134:
  speed_bit = HCLGE_SUPPORT_100M_BIT;
  break;
 case 131:
  speed_bit = HCLGE_SUPPORT_1G_BIT;
  break;
 case 133:
  speed_bit = HCLGE_SUPPORT_10G_BIT;
  break;
 case 130:
  speed_bit = HCLGE_SUPPORT_25G_BIT;
  break;
 case 129:
  speed_bit = HCLGE_SUPPORT_40G_BIT;
  break;
 case 128:
  speed_bit = HCLGE_SUPPORT_50G_BIT;
  break;
 case 135:
  speed_bit = HCLGE_SUPPORT_100G_BIT;
  break;
 default:
  return -EINVAL;
 }

 if (speed_bit & speed_ability)
  return 0;

 return -EINVAL;
}
