
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_mux {int subdev; } ;
struct v4l2_async_subdev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int* kcalloc (unsigned int,int,int ) ;
 int kfree (unsigned int*) ;
 int v4l2_async_register_fwnode_subdev (int *,int,unsigned int*,unsigned int,int ) ;
 int video_mux_parse_endpoint ;

__attribute__((used)) static int video_mux_async_register(struct video_mux *vmux,
        unsigned int num_input_pads)
{
 unsigned int i, *ports;
 int ret;

 ports = kcalloc(num_input_pads, sizeof(*ports), GFP_KERNEL);
 if (!ports)
  return -ENOMEM;
 for (i = 0; i < num_input_pads; i++)
  ports[i] = i;

 ret = v4l2_async_register_fwnode_subdev(
  &vmux->subdev, sizeof(struct v4l2_async_subdev),
  ports, num_input_pads, video_mux_parse_endpoint);

 kfree(ports);
 return ret;
}
