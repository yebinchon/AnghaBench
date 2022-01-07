
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {size_t num_inputs; scalar_t__* input_type; size_t num_outputs; scalar_t__* output_type; unsigned int* cec_output2bus_map; int edid_blocks; scalar_t__ edid; struct cec_adapter** cec_tx_adap; int * display_present; struct cec_adapter* cec_rx_adap; } ;
struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_edid {size_t pad; int start_block; int blocks; int edid; int reserved; } ;
struct file {int dummy; } ;
struct cec_adapter {int phys_addr; } ;


 int EINVAL ;
 int ENODATA ;
 scalar_t__ HDMI ;
 scalar_t__ VFL_DIR_RX ;
 int memcpy (int ,scalar_t__,int) ;
 int memset (int ,int ,int) ;
 int v4l2_set_edid_phys_addr (scalar_t__,int,int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_g_edid(struct file *file, void *_fh,
    struct v4l2_edid *edid)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct video_device *vdev = video_devdata(file);
 struct cec_adapter *adap;

 memset(edid->reserved, 0, sizeof(edid->reserved));
 if (vdev->vfl_dir == VFL_DIR_RX) {
  if (edid->pad >= dev->num_inputs)
   return -EINVAL;
  if (dev->input_type[edid->pad] != HDMI)
   return -EINVAL;
  adap = dev->cec_rx_adap;
 } else {
  unsigned int bus_idx;

  if (edid->pad >= dev->num_outputs)
   return -EINVAL;
  if (dev->output_type[edid->pad] != HDMI)
   return -EINVAL;
  if (!dev->display_present[edid->pad])
   return -ENODATA;
  bus_idx = dev->cec_output2bus_map[edid->pad];
  adap = dev->cec_tx_adap[bus_idx];
 }
 if (edid->start_block == 0 && edid->blocks == 0) {
  edid->blocks = dev->edid_blocks;
  return 0;
 }
 if (dev->edid_blocks == 0)
  return -ENODATA;
 if (edid->start_block >= dev->edid_blocks)
  return -EINVAL;
 if (edid->blocks > dev->edid_blocks - edid->start_block)
  edid->blocks = dev->edid_blocks - edid->start_block;
 if (adap)
  v4l2_set_edid_phys_addr(dev->edid, dev->edid_blocks * 128, adap->phys_addr);
 memcpy(edid->edid, dev->edid + edid->start_block * 128, edid->blocks * 128);
 return 0;
}
