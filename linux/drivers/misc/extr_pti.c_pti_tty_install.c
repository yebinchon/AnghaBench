
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; struct pti_tty* driver_data; } ;
struct tty_driver {int dummy; } ;
struct pti_tty {int * mc; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int PTITTY_MINOR_START ;
 int kfree (struct pti_tty*) ;
 struct pti_tty* kmalloc (int,int ) ;
 void* pti_request_masterchannel (int,int *) ;
 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int pti_tty_install(struct tty_driver *driver, struct tty_struct *tty)
{
 int idx = tty->index;
 struct pti_tty *pti_tty_data;
 int ret = tty_standard_install(driver, tty);

 if (ret == 0) {
  pti_tty_data = kmalloc(sizeof(struct pti_tty), GFP_KERNEL);
  if (pti_tty_data == ((void*)0))
   return -ENOMEM;

  if (idx == PTITTY_MINOR_START)
   pti_tty_data->mc = pti_request_masterchannel(0, ((void*)0));
  else
   pti_tty_data->mc = pti_request_masterchannel(2, ((void*)0));

  if (pti_tty_data->mc == ((void*)0)) {
   kfree(pti_tty_data);
   return -ENXIO;
  }
  tty->driver_data = pti_tty_data;
 }

 return ret;
}
