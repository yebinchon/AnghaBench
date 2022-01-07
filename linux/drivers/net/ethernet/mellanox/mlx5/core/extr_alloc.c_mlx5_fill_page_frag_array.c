
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_frag_buf {int npages; TYPE_1__* frags; } ;
typedef int __be64 ;
struct TYPE_2__ {int map; } ;


 int cpu_to_be64 (int ) ;

void mlx5_fill_page_frag_array(struct mlx5_frag_buf *buf, __be64 *pas)
{
 int i;

 for (i = 0; i < buf->npages; i++)
  pas[i] = cpu_to_be64(buf->frags[i].map);
}
