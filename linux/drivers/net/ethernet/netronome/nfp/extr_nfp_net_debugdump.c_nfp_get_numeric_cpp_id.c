
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_dumpspec_cpp_isl_id {int island; int token; int action; int target; } ;


 int NFP_CPP_ISLAND_ID (int ,int ,int ,int ) ;

__attribute__((used)) static u32 nfp_get_numeric_cpp_id(struct nfp_dumpspec_cpp_isl_id *cpp_id)
{
 return NFP_CPP_ISLAND_ID(cpp_id->target, cpp_id->action, cpp_id->token,
     cpp_id->island);
}
