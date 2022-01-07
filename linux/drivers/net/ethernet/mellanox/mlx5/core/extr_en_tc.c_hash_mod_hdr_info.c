
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mod_hdr_key {int num_actions; int actions; } ;


 int MLX5_MH_ACT_SZ ;
 int jhash (int ,int,int ) ;

__attribute__((used)) static inline u32 hash_mod_hdr_info(struct mod_hdr_key *key)
{
 return jhash(key->actions,
       key->num_actions * MLX5_MH_ACT_SZ, 0);
}
