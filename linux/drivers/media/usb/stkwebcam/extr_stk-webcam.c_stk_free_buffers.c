
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int dummy; } ;


 int stk_clean_iso (struct stk_camera*) ;
 int stk_free_sio_buffers (struct stk_camera*) ;

__attribute__((used)) static void stk_free_buffers(struct stk_camera *dev)
{
 stk_clean_iso(dev);
 stk_free_sio_buffers(dev);
}
