
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int canid_t ;


 int AT91_MID_MIDE ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_SFF_MASK ;

__attribute__((used)) static inline u32 at91_can_id_to_reg_mid(canid_t can_id)
{
 u32 reg_mid;

 if (can_id & CAN_EFF_FLAG)
  reg_mid = (can_id & CAN_EFF_MASK) | AT91_MID_MIDE;
 else
  reg_mid = (can_id & CAN_SFF_MASK) << 18;

 return reg_mid;
}
