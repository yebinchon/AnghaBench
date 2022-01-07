
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iavf_aq_desc {void* flags; void* opcode; } ;


 int IAVF_AQ_FLAG_SI ;
 void* cpu_to_le16 (int ) ;
 int memset (void*,int ,int) ;

void iavf_fill_default_direct_cmd_desc(struct iavf_aq_desc *desc, u16 opcode)
{

 memset((void *)desc, 0, sizeof(struct iavf_aq_desc));
 desc->opcode = cpu_to_le16(opcode);
 desc->flags = cpu_to_le16(IAVF_AQ_FLAG_SI);
}
