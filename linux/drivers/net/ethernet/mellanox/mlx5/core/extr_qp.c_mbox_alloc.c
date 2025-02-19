
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_info {int inlen; int outlen; void* out; void* in; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int mbox_alloc(struct mbox_info *mbox, int inlen, int outlen)
{
 mbox->inlen = inlen;
 mbox->outlen = outlen;
 mbox->in = kzalloc(mbox->inlen, GFP_KERNEL);
 mbox->out = kzalloc(mbox->outlen, GFP_KERNEL);
 if (!mbox->in || !mbox->out) {
  kfree(mbox->in);
  kfree(mbox->out);
  return -ENOMEM;
 }

 return 0;
}
