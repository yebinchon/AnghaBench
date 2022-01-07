
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct pti_tty* driver_data; } ;
struct pti_tty {int mc; } ;


 int kfree (struct pti_tty*) ;
 int pti_release_masterchannel (int ) ;

__attribute__((used)) static void pti_tty_cleanup(struct tty_struct *tty)
{
 struct pti_tty *pti_tty_data = tty->driver_data;
 if (pti_tty_data == ((void*)0))
  return;
 pti_release_masterchannel(pti_tty_data->mc);
 kfree(pti_tty_data);
 tty->driver_data = ((void*)0);
}
