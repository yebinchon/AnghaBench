
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_dir; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int __poll_t ;


 scalar_t__ VFL_DIR_RX ;
 struct video_device* video_devdata (struct file*) ;
 int vivid_radio_rx_poll (struct file*,struct poll_table_struct*) ;
 int vivid_radio_tx_poll (struct file*,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t vivid_radio_poll(struct file *file, struct poll_table_struct *wait)
{
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_dir == VFL_DIR_RX)
  return vivid_radio_rx_poll(file, wait);
 return vivid_radio_tx_poll(file, wait);
}
