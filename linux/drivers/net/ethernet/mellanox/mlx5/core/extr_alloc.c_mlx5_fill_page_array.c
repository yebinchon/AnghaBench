
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mlx5_frag_buf {int npages; int page_shift; TYPE_1__* frags; } ;
typedef int __be64 ;
struct TYPE_2__ {scalar_t__ map; } ;


 int cpu_to_be64 (scalar_t__) ;

void mlx5_fill_page_array(struct mlx5_frag_buf *buf, __be64 *pas)
{
 u64 addr;
 int i;

 for (i = 0; i < buf->npages; i++) {
  addr = buf->frags->map + (i << buf->page_shift);

  pas[i] = cpu_to_be64(addr);
 }
}
