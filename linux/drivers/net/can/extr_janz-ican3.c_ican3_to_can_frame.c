
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_fast_desc {int command; int* data; } ;
struct ican3_dev {int dummy; } ;
struct can_frame {int can_id; void* can_dlc; int data; } ;


 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int ICAN3_CAN_DLC_MASK ;
 int ICAN3_CAN_TYPE_MASK ;
 int ICAN3_CAN_TYPE_SFF ;
 int ICAN3_EFF ;
 int ICAN3_EFF_RTR ;
 int ICAN3_SFF_RTR ;
 void* get_can_dlc (int) ;
 int memcpy (int ,int*,void*) ;

__attribute__((used)) static void ican3_to_can_frame(struct ican3_dev *mod,
          struct ican3_fast_desc *desc,
          struct can_frame *cf)
{
 if ((desc->command & ICAN3_CAN_TYPE_MASK) == ICAN3_CAN_TYPE_SFF) {
  if (desc->data[1] & ICAN3_SFF_RTR)
   cf->can_id |= CAN_RTR_FLAG;

  cf->can_id |= desc->data[0] << 3;
  cf->can_id |= (desc->data[1] & 0xe0) >> 5;
  cf->can_dlc = get_can_dlc(desc->data[1] & ICAN3_CAN_DLC_MASK);
  memcpy(cf->data, &desc->data[2], cf->can_dlc);
 } else {
  cf->can_dlc = get_can_dlc(desc->data[0] & ICAN3_CAN_DLC_MASK);
  if (desc->data[0] & ICAN3_EFF_RTR)
   cf->can_id |= CAN_RTR_FLAG;

  if (desc->data[0] & ICAN3_EFF) {
   cf->can_id |= CAN_EFF_FLAG;
   cf->can_id |= desc->data[2] << 21;
   cf->can_id |= desc->data[3] << 13;
   cf->can_id |= desc->data[4] << 5;
   cf->can_id |= (desc->data[5] & 0xf8) >> 3;
  } else {
   cf->can_id |= desc->data[2] << 3;
   cf->can_id |= desc->data[3] >> 5;
  }

  memcpy(cf->data, &desc->data[6], cf->can_dlc);
 }
}
