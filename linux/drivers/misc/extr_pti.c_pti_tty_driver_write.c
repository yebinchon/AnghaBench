
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tty_struct {struct pti_tty* driver_data; } ;
struct pti_tty {int * mc; } ;


 int EFAULT ;
 int pti_write_to_aperture (int *,int *,int) ;

__attribute__((used)) static int pti_tty_driver_write(struct tty_struct *tty,
 const unsigned char *buf, int len)
{
 struct pti_tty *pti_tty_data = tty->driver_data;
 if ((pti_tty_data != ((void*)0)) && (pti_tty_data->mc != ((void*)0))) {
  pti_write_to_aperture(pti_tty_data->mc, (u8 *)buf, len);
  return len;
 }




 else
  return -EFAULT;
}
