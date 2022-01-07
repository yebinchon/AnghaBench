
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int dummy; } ;


 int stk_clean_iso (struct stk_camera*) ;
 int stk_free_sio_buffers (struct stk_camera*) ;
 int stk_prepare_iso (struct stk_camera*) ;
 int stk_prepare_sio_buffers (struct stk_camera*,unsigned int) ;

__attribute__((used)) static int stk_allocate_buffers(struct stk_camera *dev, unsigned n_sbufs)
{
 int err;
 err = stk_prepare_iso(dev);
 if (err) {
  stk_clean_iso(dev);
  return err;
 }
 err = stk_prepare_sio_buffers(dev, n_sbufs);
 if (err) {
  stk_free_sio_buffers(dev);
  return err;
 }
 return 0;
}
