
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otx2_mbox {int * dev; int * hwbase; int * reg_base; } ;


 int kfree (int *) ;

void otx2_mbox_destroy(struct otx2_mbox *mbox)
{
 mbox->reg_base = ((void*)0);
 mbox->hwbase = ((void*)0);

 kfree(mbox->dev);
 mbox->dev = ((void*)0);
}
