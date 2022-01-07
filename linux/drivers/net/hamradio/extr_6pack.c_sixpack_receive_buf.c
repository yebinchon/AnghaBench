
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct sixpack {TYPE_2__* dev; int flags; } ;
struct TYPE_3__ {int rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int SIXPF_ERROR ;
 int sixpack_decode (struct sixpack*,unsigned char const*,int) ;
 struct sixpack* sp_get (struct tty_struct*) ;
 int sp_put (struct sixpack*) ;
 int test_and_set_bit (int ,int *) ;
 int tty_unthrottle (struct tty_struct*) ;

__attribute__((used)) static void sixpack_receive_buf(struct tty_struct *tty,
 const unsigned char *cp, char *fp, int count)
{
 struct sixpack *sp;
 int count1;

 if (!count)
  return;

 sp = sp_get(tty);
 if (!sp)
  return;


 count1 = count;
 while (count) {
  count--;
  if (fp && *fp++) {
   if (!test_and_set_bit(SIXPF_ERROR, &sp->flags))
    sp->dev->stats.rx_errors++;
   continue;
  }
 }
 sixpack_decode(sp, cp, count1);

 sp_put(sp);
 tty_unthrottle(tty);
}
