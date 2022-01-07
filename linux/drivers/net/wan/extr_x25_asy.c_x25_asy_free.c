
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_asy {int dev; int flags; int * xbuff; int * rbuff; } ;


 int SLF_INUSE ;
 int kfree (int *) ;
 int netdev_err (int ,char*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void x25_asy_free(struct x25_asy *sl)
{

 kfree(sl->rbuff);
 sl->rbuff = ((void*)0);
 kfree(sl->xbuff);
 sl->xbuff = ((void*)0);

 if (!test_and_clear_bit(SLF_INUSE, &sl->flags))
  netdev_err(sl->dev, "x25_asy_free for already free unit\n");
}
