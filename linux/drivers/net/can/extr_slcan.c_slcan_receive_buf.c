
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {scalar_t__ disc_data; } ;
struct slcan {scalar_t__ magic; TYPE_2__* dev; int flags; } ;
struct TYPE_3__ {int rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 scalar_t__ SLCAN_MAGIC ;
 int SLF_ERROR ;
 int netif_running (TYPE_2__*) ;
 int slcan_unesc (struct slcan*,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void slcan_receive_buf(struct tty_struct *tty,
         const unsigned char *cp, char *fp, int count)
{
 struct slcan *sl = (struct slcan *) tty->disc_data;

 if (!sl || sl->magic != SLCAN_MAGIC || !netif_running(sl->dev))
  return;


 while (count--) {
  if (fp && *fp++) {
   if (!test_and_set_bit(SLF_ERROR, &sl->flags))
    sl->dev->stats.rx_errors++;
   cp++;
   continue;
  }
  slcan_unesc(sl, *cp++);
 }
}
