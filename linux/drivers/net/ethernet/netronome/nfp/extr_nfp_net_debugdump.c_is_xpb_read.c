
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_dumpspec_cpp_isl_id {scalar_t__ target; scalar_t__ action; scalar_t__ token; } ;


 scalar_t__ NFP_CPP_TARGET_ISLAND_XPB ;

__attribute__((used)) static bool is_xpb_read(struct nfp_dumpspec_cpp_isl_id *cpp_id)
{
 return cpp_id->target == NFP_CPP_TARGET_ISLAND_XPB &&
        cpp_id->action == 0 && cpp_id->token == 0;
}
