
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_profile_info {scalar_t__ track_id; int name; int version; } ;


 int I40E_DDP_NAME_SIZE ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static bool i40e_ddp_profiles_eq(struct i40e_profile_info *a,
     struct i40e_profile_info *b)
{
 return a->track_id == b->track_id &&
  !memcmp(&a->version, &b->version, sizeof(a->version)) &&
  !memcmp(&a->name, &b->name, I40E_DDP_NAME_SIZE);
}
