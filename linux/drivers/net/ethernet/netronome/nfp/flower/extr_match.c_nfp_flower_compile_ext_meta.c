
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_flower_ext_meta {int nfp_flow_key_layer2; } ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static void
nfp_flower_compile_ext_meta(struct nfp_flower_ext_meta *frame, u32 key_ext)
{
 frame->nfp_flow_key_layer2 = cpu_to_be32(key_ext);
}
