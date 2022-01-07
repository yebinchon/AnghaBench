
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int codec_state; } ;


 int HFI_FLUSH_ALL ;
 int HFI_FLUSH_INPUT ;




 int VENUS_DEC_STATE_SEEK ;

 int hfi_session_flush (struct venus_inst*,int ) ;

__attribute__((used)) static int vdec_stop_output(struct venus_inst *inst)
{
 int ret = 0;

 switch (inst->codec_state) {
 case 131:
 case 130:
 case 128:
  ret = hfi_session_flush(inst, HFI_FLUSH_ALL);
  inst->codec_state = VENUS_DEC_STATE_SEEK;
  break;
 case 129:
 case 132:
  ret = hfi_session_flush(inst, HFI_FLUSH_INPUT);
  break;
 default:
  break;
 }

 return ret;
}
