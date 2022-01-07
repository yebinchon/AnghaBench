
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int codec_state; int registeredbufs; } ;


 int HFI_FLUSH_ALL ;
 int HFI_FLUSH_OUTPUT ;
 int INIT_LIST_HEAD (int *) ;
 int VENUS_DEC_STATE_CAPTURE_SETUP ;



 int VENUS_DEC_STATE_STOPPED ;
 int hfi_session_flush (struct venus_inst*,int ) ;
 int vdec_cancel_dst_buffers (struct venus_inst*) ;
 int venus_helper_free_dpb_bufs (struct venus_inst*) ;

__attribute__((used)) static int vdec_stop_capture(struct venus_inst *inst)
{
 int ret = 0;

 switch (inst->codec_state) {
 case 130:
  ret = hfi_session_flush(inst, HFI_FLUSH_ALL);

 case 129:
  vdec_cancel_dst_buffers(inst);
  inst->codec_state = VENUS_DEC_STATE_STOPPED;
  break;
 case 128:
  ret = hfi_session_flush(inst, HFI_FLUSH_OUTPUT);
  vdec_cancel_dst_buffers(inst);
  inst->codec_state = VENUS_DEC_STATE_CAPTURE_SETUP;
  INIT_LIST_HEAD(&inst->registeredbufs);
  venus_helper_free_dpb_bufs(inst);
  break;
 default:
  return 0;
 }

 return ret;
}
