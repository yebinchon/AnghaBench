
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x25_asy {scalar_t__ magic; TYPE_2__* dev; int flags; } ;
struct tty_struct {struct x25_asy* disc_data; } ;
struct TYPE_3__ {int rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int SLF_ERROR ;
 scalar_t__ X25_ASY_MAGIC ;
 int netif_running (TYPE_2__*) ;
 int test_and_set_bit (int ,int *) ;
 int x25_asy_unesc (struct x25_asy*,int ) ;

__attribute__((used)) static void x25_asy_receive_buf(struct tty_struct *tty,
    const unsigned char *cp, char *fp, int count)
{
 struct x25_asy *sl = tty->disc_data;

 if (!sl || sl->magic != X25_ASY_MAGIC || !netif_running(sl->dev))
  return;



 while (count--) {
  if (fp && *fp++) {
   if (!test_and_set_bit(SLF_ERROR, &sl->flags))
    sl->dev->stats.rx_errors++;
   cp++;
   continue;
  }
  x25_asy_unesc(sl, *cp++);
 }
}
