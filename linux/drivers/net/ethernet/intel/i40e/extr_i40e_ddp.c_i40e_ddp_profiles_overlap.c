
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct i40e_profile_info {int track_id; } ;



__attribute__((used)) static bool i40e_ddp_profiles_overlap(struct i40e_profile_info *new,
          struct i40e_profile_info *old)
{
 unsigned int group_id_old = (u8)((old->track_id & 0x00FF0000) >> 16);
 unsigned int group_id_new = (u8)((new->track_id & 0x00FF0000) >> 16);


 if (group_id_new == 0)
  return 1;

 if (group_id_new == 0xFF || group_id_old == 0xFF)
  return 0;

 return group_id_old != group_id_new;
}
