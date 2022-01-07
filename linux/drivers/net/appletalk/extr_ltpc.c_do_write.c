
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int cbuflen; int dbuflen; int QWrite; int mailbox; void* dbuf; void* cbuf; } ;


 int enQ (TYPE_1__*) ;
 int getmbox () ;
 int idle (struct net_device*) ;
 int* mailbox ;
 scalar_t__* mboxinuse ;
 int printk (char*) ;
 TYPE_1__* qels ;

__attribute__((used)) static int do_write(struct net_device *dev, void *cbuf, int cbuflen,
 void *dbuf, int dbuflen)
{

 int i = getmbox();
 int ret;

 if(i) {
  qels[i].cbuf = cbuf;
  qels[i].cbuflen = cbuflen;
  qels[i].dbuf = dbuf;
  qels[i].dbuflen = dbuflen;
  qels[i].QWrite = 1;
  qels[i].mailbox = i;
  enQ(&qels[i]);
  idle(dev);
  ret = mailbox[i];
  mboxinuse[i]=0;
  return ret;
 }
 printk("ltpc: could not allocate mbox\n");
 return -1;
}
