
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {scalar_t__ codec_state; int lock; scalar_t__ streamon_cap; scalar_t__ streamon_out; } ;
struct v4l2_decoder_cmd {scalar_t__ cmd; } ;
struct hfi_frame_data {int device_addr; int flags; int buffer_type; int member_0; } ;
struct file {int dummy; } ;


 int HFI_BUFFERFLAG_EOS ;
 int HFI_BUFFER_INPUT ;
 scalar_t__ V4L2_DEC_CMD_STOP ;
 scalar_t__ VENUS_DEC_STATE_DECODING ;
 scalar_t__ VENUS_DEC_STATE_DRAIN ;
 int hfi_session_process_buf (struct venus_inst*,struct hfi_frame_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct venus_inst* to_inst (struct file*) ;
 int v4l2_m2m_ioctl_try_decoder_cmd (struct file*,void*,struct v4l2_decoder_cmd*) ;

__attribute__((used)) static int
vdec_decoder_cmd(struct file *file, void *fh, struct v4l2_decoder_cmd *cmd)
{
 struct venus_inst *inst = to_inst(file);
 struct hfi_frame_data fdata = {0};
 int ret;

 ret = v4l2_m2m_ioctl_try_decoder_cmd(file, fh, cmd);
 if (ret)
  return ret;

 mutex_lock(&inst->lock);

 if (cmd->cmd == V4L2_DEC_CMD_STOP) {




  if (!(inst->streamon_out && inst->streamon_cap))
   goto unlock;

  fdata.buffer_type = HFI_BUFFER_INPUT;
  fdata.flags |= HFI_BUFFERFLAG_EOS;
  fdata.device_addr = 0xdeadb000;

  ret = hfi_session_process_buf(inst, &fdata);

  if (!ret && inst->codec_state == VENUS_DEC_STATE_DECODING)
   inst->codec_state = VENUS_DEC_STATE_DRAIN;
 }

unlock:
 mutex_unlock(&inst->lock);
 return ret;
}
