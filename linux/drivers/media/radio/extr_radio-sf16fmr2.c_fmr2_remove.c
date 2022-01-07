
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmr2 {int v4l2_dev; int io; int tea; } ;


 int kfree (struct fmr2*) ;
 int release_region (int ,int) ;
 int snd_tea575x_exit (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void fmr2_remove(struct fmr2 *fmr2)
{
 snd_tea575x_exit(&fmr2->tea);
 release_region(fmr2->io, 2);
 v4l2_device_unregister(&fmr2->v4l2_dev);
 kfree(fmr2);
}
