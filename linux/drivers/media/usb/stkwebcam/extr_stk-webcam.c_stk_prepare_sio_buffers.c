
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_sio_buffer {int dummy; } ;
struct stk_camera {int n_sbufs; int * sio_bufs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (unsigned int,int,int ) ;
 int pr_err (char*) ;
 scalar_t__ stk_setup_siobuf (struct stk_camera*,int) ;

__attribute__((used)) static int stk_prepare_sio_buffers(struct stk_camera *dev, unsigned n_sbufs)
{
 int i;
 if (dev->sio_bufs != ((void*)0))
  pr_err("sio_bufs already allocated\n");
 else {
  dev->sio_bufs = kcalloc(n_sbufs,
     sizeof(struct stk_sio_buffer),
     GFP_KERNEL);
  if (dev->sio_bufs == ((void*)0))
   return -ENOMEM;
  for (i = 0; i < n_sbufs; i++) {
   if (stk_setup_siobuf(dev, i))
    return (dev->n_sbufs > 1 ? 0 : -ENOMEM);
   dev->n_sbufs = i+1;
  }
 }
 return 0;
}
