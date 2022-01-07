
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_info {int out; int in; } ;


 int kfree (int ) ;

__attribute__((used)) static void mbox_free(struct mbox_info *mbox)
{
 kfree(mbox->in);
 kfree(mbox->out);
}
