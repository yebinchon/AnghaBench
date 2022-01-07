
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dmae_command {int comp_val; int comp_addr_hi; int comp_addr_lo; int opcode; } ;
struct bnx2x {int dummy; } ;


 int DMAE_COMP_PCI ;
 int DMAE_COMP_VAL ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_dmae_opcode (struct bnx2x*,int ,int ,int,int ) ;
 int bnx2x_sp_mapping (struct bnx2x*,int ) ;
 int memset (struct dmae_command*,int ,int) ;
 int wb_comp ;

void bnx2x_prep_dmae_with_comp(struct bnx2x *bp,
          struct dmae_command *dmae,
          u8 src_type, u8 dst_type)
{
 memset(dmae, 0, sizeof(struct dmae_command));


 dmae->opcode = bnx2x_dmae_opcode(bp, src_type, dst_type,
      1, DMAE_COMP_PCI);


 dmae->comp_addr_lo = U64_LO(bnx2x_sp_mapping(bp, wb_comp));
 dmae->comp_addr_hi = U64_HI(bnx2x_sp_mapping(bp, wb_comp));
 dmae->comp_val = DMAE_COMP_VAL;
}
