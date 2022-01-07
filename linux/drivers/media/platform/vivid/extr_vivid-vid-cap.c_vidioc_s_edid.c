
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct vivid_dev {size_t num_inputs; scalar_t__* input_type; int edid_blocks; int edid_max_blocks; unsigned int num_outputs; scalar_t__* output_type; int* display_present; scalar_t__* cec_tx_adap; scalar_t__ cec_rx_adap; int ctrl_tx_hotplug; int ctrl_tx_edid_present; int edid; int vb_vid_cap_q; } ;
struct v4l2_edid {size_t pad; int blocks; int edid; scalar_t__ start_block; int reserved; } ;
struct file {int dummy; } ;


 int CEC_PHYS_ADDR_INVALID ;
 int E2BIG ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ HDMI ;
 unsigned int MAX_OUTPUTS ;
 int cec_get_edid_phys_addr (int ,int,int *) ;
 int cec_s_phys_addr (scalar_t__,int ,int) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int v4l2_ctrl_s_ctrl (int ,int) ;
 int v4l2_phys_addr_for_input (int ,unsigned int) ;
 int v4l2_phys_addr_validate (int ,int *,int *) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_s_edid(struct file *file, void *_fh,
    struct v4l2_edid *edid)
{
 struct vivid_dev *dev = video_drvdata(file);
 u16 phys_addr;
 u32 display_present = 0;
 unsigned int i, j;
 int ret;

 memset(edid->reserved, 0, sizeof(edid->reserved));
 if (edid->pad >= dev->num_inputs)
  return -EINVAL;
 if (dev->input_type[edid->pad] != HDMI || edid->start_block)
  return -EINVAL;
 if (edid->blocks == 0) {
  dev->edid_blocks = 0;
  v4l2_ctrl_s_ctrl(dev->ctrl_tx_edid_present, 0);
  v4l2_ctrl_s_ctrl(dev->ctrl_tx_hotplug, 0);
  phys_addr = CEC_PHYS_ADDR_INVALID;
  goto set_phys_addr;
 }
 if (edid->blocks > dev->edid_max_blocks) {
  edid->blocks = dev->edid_max_blocks;
  return -E2BIG;
 }
 phys_addr = cec_get_edid_phys_addr(edid->edid, edid->blocks * 128, ((void*)0));
 ret = v4l2_phys_addr_validate(phys_addr, &phys_addr, ((void*)0));
 if (ret)
  return ret;

 if (vb2_is_busy(&dev->vb_vid_cap_q))
  return -EBUSY;

 dev->edid_blocks = edid->blocks;
 memcpy(dev->edid, edid->edid, edid->blocks * 128);

 for (i = 0, j = 0; i < dev->num_outputs; i++)
  if (dev->output_type[i] == HDMI)
   display_present |=
    dev->display_present[i] << j++;

 v4l2_ctrl_s_ctrl(dev->ctrl_tx_edid_present, display_present);
 v4l2_ctrl_s_ctrl(dev->ctrl_tx_hotplug, display_present);

set_phys_addr:

 cec_s_phys_addr(dev->cec_rx_adap, phys_addr, 0);

 for (i = 0; i < MAX_OUTPUTS && dev->cec_tx_adap[i]; i++)
  cec_s_phys_addr(dev->cec_tx_adap[i],
    dev->display_present[i] ?
    v4l2_phys_addr_for_input(phys_addr, i + 1) :
    CEC_PHYS_ADDR_INVALID,
    0);
 return 0;
}
