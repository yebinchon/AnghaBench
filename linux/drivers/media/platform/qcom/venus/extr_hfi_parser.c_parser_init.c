
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int session_type; int hfi_codec; int core; } ;


 int IS_V1 (int ) ;

__attribute__((used)) static void parser_init(struct venus_inst *inst, u32 *codecs, u32 *domain)
{
 if (!inst || !IS_V1(inst->core))
  return;

 *codecs = inst->hfi_codec;
 *domain = inst->session_type;
}
