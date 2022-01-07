
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct vivid_dev {int v4l2_dev; scalar_t__ cec_workqueue; int * cec_tx_adap; int cec_rx_adap; TYPE_1__ fb_info; scalar_t__ has_fb; int radio_tx_dev; scalar_t__ has_radio_tx; int radio_rx_dev; scalar_t__ has_radio_rx; int sdr_cap_dev; scalar_t__ has_sdr_cap; int vbi_out_dev; scalar_t__ has_vbi_out; int vbi_cap_dev; scalar_t__ has_vbi_cap; int vid_out_dev; scalar_t__ has_vid_out; int vid_cap_dev; scalar_t__ has_vid_cap; int mdev; } ;
struct platform_device {int dummy; } ;


 unsigned int MAX_OUTPUTS ;
 int cec_unregister_adapter (int ) ;
 int destroy_workqueue (scalar_t__) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 unsigned int n_devs ;
 int unregister_framebuffer (TYPE_1__*) ;
 int v4l2_device_put (int *) ;
 int v4l2_info (int *,char*,int ) ;
 int video_device_node_name (int *) ;
 int video_unregister_device (int *) ;
 int vivid_cec_bus_free_work (struct vivid_dev*) ;
 struct vivid_dev** vivid_devs ;
 int vivid_fb_release_buffers (struct vivid_dev*) ;

__attribute__((used)) static int vivid_remove(struct platform_device *pdev)
{
 struct vivid_dev *dev;
 unsigned int i, j;

 for (i = 0; i < n_devs; i++) {
  dev = vivid_devs[i];
  if (!dev)
   continue;






  if (dev->has_vid_cap) {
   v4l2_info(&dev->v4l2_dev, "unregistering %s\n",
    video_device_node_name(&dev->vid_cap_dev));
   video_unregister_device(&dev->vid_cap_dev);
  }
  if (dev->has_vid_out) {
   v4l2_info(&dev->v4l2_dev, "unregistering %s\n",
    video_device_node_name(&dev->vid_out_dev));
   video_unregister_device(&dev->vid_out_dev);
  }
  if (dev->has_vbi_cap) {
   v4l2_info(&dev->v4l2_dev, "unregistering %s\n",
    video_device_node_name(&dev->vbi_cap_dev));
   video_unregister_device(&dev->vbi_cap_dev);
  }
  if (dev->has_vbi_out) {
   v4l2_info(&dev->v4l2_dev, "unregistering %s\n",
    video_device_node_name(&dev->vbi_out_dev));
   video_unregister_device(&dev->vbi_out_dev);
  }
  if (dev->has_sdr_cap) {
   v4l2_info(&dev->v4l2_dev, "unregistering %s\n",
    video_device_node_name(&dev->sdr_cap_dev));
   video_unregister_device(&dev->sdr_cap_dev);
  }
  if (dev->has_radio_rx) {
   v4l2_info(&dev->v4l2_dev, "unregistering %s\n",
    video_device_node_name(&dev->radio_rx_dev));
   video_unregister_device(&dev->radio_rx_dev);
  }
  if (dev->has_radio_tx) {
   v4l2_info(&dev->v4l2_dev, "unregistering %s\n",
    video_device_node_name(&dev->radio_tx_dev));
   video_unregister_device(&dev->radio_tx_dev);
  }
  if (dev->has_fb) {
   v4l2_info(&dev->v4l2_dev, "unregistering fb%d\n",
    dev->fb_info.node);
   unregister_framebuffer(&dev->fb_info);
   vivid_fb_release_buffers(dev);
  }
  cec_unregister_adapter(dev->cec_rx_adap);
  for (j = 0; j < MAX_OUTPUTS; j++)
   cec_unregister_adapter(dev->cec_tx_adap[j]);
  if (dev->cec_workqueue) {
   vivid_cec_bus_free_work(dev);
   destroy_workqueue(dev->cec_workqueue);
  }
  v4l2_device_put(&dev->v4l2_dev);
  vivid_devs[i] = ((void*)0);
 }
 return 0;
}
