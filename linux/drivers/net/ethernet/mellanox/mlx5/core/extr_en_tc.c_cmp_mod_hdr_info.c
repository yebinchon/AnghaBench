
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_hdr_key {int num_actions; int actions; } ;


 int MLX5_MH_ACT_SZ ;
 int memcmp (int ,int ,int) ;

__attribute__((used)) static inline int cmp_mod_hdr_info(struct mod_hdr_key *a,
       struct mod_hdr_key *b)
{
 if (a->num_actions != b->num_actions)
  return 1;

 return memcmp(a->actions, b->actions, a->num_actions * MLX5_MH_ACT_SZ);
}
