
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
struct mlx4_buf {int nbufs; int npages; unsigned long page_shift; TYPE_2__* page_list; TYPE_1__ direct; } ;
struct TYPE_4__ {int buf; } ;


 int memset (int ,int,unsigned long) ;

__attribute__((used)) static void mlx4_init_kernel_cqes(struct mlx4_buf *buf,
      int entries,
      int cqe_size)
{
 int i;

 if (buf->nbufs == 1)
  memset(buf->direct.buf, 0xcc, entries * cqe_size);
 else
  for (i = 0; i < buf->npages; i++)
   memset(buf->page_list[i].buf, 0xcc,
          1UL << buf->page_shift);
}
