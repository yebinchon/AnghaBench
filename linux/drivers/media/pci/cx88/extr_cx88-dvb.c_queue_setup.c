
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct cx8802_dev* drv_priv; } ;
struct device {int dummy; } ;
struct cx8802_dev {int ts_packet_size; unsigned int ts_packet_count; } ;


 void* dvb_buf_tscnt ;

__attribute__((used)) static int queue_setup(struct vb2_queue *q,
         unsigned int *num_buffers, unsigned int *num_planes,
         unsigned int sizes[], struct device *alloc_devs[])
{
 struct cx8802_dev *dev = q->drv_priv;

 *num_planes = 1;
 dev->ts_packet_size = 188 * 4;
 dev->ts_packet_count = dvb_buf_tscnt;
 sizes[0] = dev->ts_packet_size * dev->ts_packet_count;
 *num_buffers = dvb_buf_tscnt;
 return 0;
}
