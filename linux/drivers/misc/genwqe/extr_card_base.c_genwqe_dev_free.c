
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {size_t card_idx; } ;


 int ** genwqe_devices ;
 int kfree (struct genwqe_dev*) ;

__attribute__((used)) static void genwqe_dev_free(struct genwqe_dev *cd)
{
 if (!cd)
  return;

 genwqe_devices[cd->card_idx] = ((void*)0);
 kfree(cd);
}
