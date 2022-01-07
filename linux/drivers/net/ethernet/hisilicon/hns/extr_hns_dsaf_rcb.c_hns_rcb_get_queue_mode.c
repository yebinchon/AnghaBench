
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum dsaf_mode { ____Placeholder_dsaf_mode } dsaf_mode ;
void hns_rcb_get_queue_mode(enum dsaf_mode dsaf_mode, u16 *max_vfn,
       u16 *max_q_per_vf)
{
 switch (dsaf_mode) {
 case 131:
  *max_vfn = 1;
  *max_q_per_vf = 16;
  break;
 case 129:
 case 128:
  *max_vfn = 1;
  *max_q_per_vf = 1;
  break;
 case 132:
  *max_vfn = 64;
  *max_q_per_vf = 1;
  break;
 case 130:
  *max_vfn = 16;
  *max_q_per_vf = 1;
  break;
 default:
  *max_vfn = 1;
  *max_q_per_vf = 16;
  break;
 }
}
