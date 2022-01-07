
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct slip* disc_data; } ;
struct slip {scalar_t__ magic; int mode; TYPE_2__* dev; int flags; } ;
struct TYPE_3__ {int rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int SLF_ERROR ;
 scalar_t__ SLIP_MAGIC ;
 int SL_MODE_SLIP6 ;
 int netif_running (TYPE_2__*) ;
 int slip_unesc (struct slip*,int ) ;
 int slip_unesc6 (struct slip*,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void slip_receive_buf(struct tty_struct *tty, const unsigned char *cp,
       char *fp, int count)
{
 struct slip *sl = tty->disc_data;

 if (!sl || sl->magic != SLIP_MAGIC || !netif_running(sl->dev))
  return;


 while (count--) {
  if (fp && *fp++) {
   if (!test_and_set_bit(SLF_ERROR, &sl->flags))
    sl->dev->stats.rx_errors++;
   cp++;
   continue;
  }





   slip_unesc(sl, *cp++);
 }
}
