
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_aq_desc {void* flags; void* opcode; } ;


 int ICE_AQ_FLAG_SI ;
 void* cpu_to_le16 (int ) ;
 int memset (struct ice_aq_desc*,int ,int) ;

void ice_fill_dflt_direct_cmd_desc(struct ice_aq_desc *desc, u16 opcode)
{

 memset(desc, 0, sizeof(*desc));
 desc->opcode = cpu_to_le16(opcode);
 desc->flags = cpu_to_le16(ICE_AQ_FLAG_SI);
}
