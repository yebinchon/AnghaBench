
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int curr_queue_pairs; int xdp_queue_pairs; } ;



__attribute__((used)) static bool is_xdp_raw_buffer_queue(struct virtnet_info *vi, int q)
{
 if (q < (vi->curr_queue_pairs - vi->xdp_queue_pairs))
  return 0;
 else if (q < vi->curr_queue_pairs)
  return 1;
 else
  return 0;
}
