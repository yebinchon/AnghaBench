
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int receive_room; struct slcan* disc_data; TYPE_1__* ops; } ;
struct slcan {scalar_t__ magic; int flags; struct tty_struct* tty; int dev; scalar_t__ xleft; scalar_t__ rcount; } ;
struct TYPE_2__ {int * write; } ;


 int CAP_NET_ADMIN ;
 int EEXIST ;
 int ENFILE ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ SLCAN_MAGIC ;
 int SLF_INUSE ;
 int capable (int ) ;
 int clear_bit (int ,int *) ;
 int register_netdevice (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 struct slcan* slc_alloc () ;
 int slc_sync () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int slcan_open(struct tty_struct *tty)
{
 struct slcan *sl;
 int err;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;





 rtnl_lock();


 slc_sync();

 sl = tty->disc_data;

 err = -EEXIST;

 if (sl && sl->magic == SLCAN_MAGIC)
  goto err_exit;


 err = -ENFILE;
 sl = slc_alloc();
 if (sl == ((void*)0))
  goto err_exit;

 sl->tty = tty;
 tty->disc_data = sl;

 if (!test_bit(SLF_INUSE, &sl->flags)) {

  sl->rcount = 0;
  sl->xleft = 0;

  set_bit(SLF_INUSE, &sl->flags);

  err = register_netdevice(sl->dev);
  if (err)
   goto err_free_chan;
 }


 rtnl_unlock();
 tty->receive_room = 65536;


 return 0;

err_free_chan:
 sl->tty = ((void*)0);
 tty->disc_data = ((void*)0);
 clear_bit(SLF_INUSE, &sl->flags);

err_exit:
 rtnl_unlock();


 return err;
}
