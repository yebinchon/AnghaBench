
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx5e_port_buffer {TYPE_1__* buffer; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ xoff; scalar_t__ xon; scalar_t__ lossy; } ;


 int ENOMEM ;
 int MLX5E_BUFFER_CELL_SHIFT ;
 int MLX5E_MAX_BUFFER ;

__attribute__((used)) static int update_xoff_threshold(struct mlx5e_port_buffer *port_buffer,
     u32 xoff, unsigned int max_mtu)
{
 int i;

 for (i = 0; i < MLX5E_MAX_BUFFER; i++) {
  if (port_buffer->buffer[i].lossy) {
   port_buffer->buffer[i].xoff = 0;
   port_buffer->buffer[i].xon = 0;
   continue;
  }

  if (port_buffer->buffer[i].size <
      (xoff + max_mtu + (1 << MLX5E_BUFFER_CELL_SHIFT)))
   return -ENOMEM;

  port_buffer->buffer[i].xoff = port_buffer->buffer[i].size - xoff;
  port_buffer->buffer[i].xon =
   port_buffer->buffer[i].xoff - max_mtu;
 }

 return 0;
}
