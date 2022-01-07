
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_fl_payload {int tc_flower_cookie; } ;


 int jhash2 (int *,int,int ) ;

__attribute__((used)) static u32 nfp_fl_obj_hashfn(const void *data, u32 len, u32 seed)
{
 const struct nfp_fl_payload *flower_entry = data;

 return jhash2((u32 *)&flower_entry->tc_flower_cookie,
        sizeof(flower_entry->tc_flower_cookie) / sizeof(u32),
        seed);
}
