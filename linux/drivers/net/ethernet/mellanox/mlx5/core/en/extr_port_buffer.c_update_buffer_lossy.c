
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5e_port_buffer {TYPE_1__* buffer; } ;
struct TYPE_2__ {int lossy; } ;


 int MLX5E_MAX_BUFFER ;
 int MLX5E_MAX_PRIORITY ;
 int update_xoff_threshold (struct mlx5e_port_buffer*,int ,unsigned int) ;

__attribute__((used)) static int update_buffer_lossy(unsigned int max_mtu,
          u8 pfc_en, u8 *buffer, u32 xoff,
          struct mlx5e_port_buffer *port_buffer,
          bool *change)
{
 bool changed = 0;
 u8 lossy_count;
 u8 prio_count;
 u8 lossy;
 int prio;
 int err;
 int i;

 for (i = 0; i < MLX5E_MAX_BUFFER; i++) {
  prio_count = 0;
  lossy_count = 0;

  for (prio = 0; prio < MLX5E_MAX_PRIORITY; prio++) {
   if (buffer[prio] != i)
    continue;

   prio_count++;
   lossy_count += !(pfc_en & (1 << prio));
  }

  if (lossy_count == prio_count)
   lossy = 1;
  else
   lossy = 0;

  if (lossy != port_buffer->buffer[i].lossy) {
   port_buffer->buffer[i].lossy = lossy;
   changed = 1;
  }
 }

 if (changed) {
  err = update_xoff_threshold(port_buffer, xoff, max_mtu);
  if (err)
   return err;

  *change = 1;
 }

 return 0;
}
