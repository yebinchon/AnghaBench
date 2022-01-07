
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ser_device* disc_data; } ;
struct ser_device {int node; int tty; } ;


 int list_move (int *,int *) ;
 int schedule_work (int *) ;
 int ser_lock ;
 int ser_release_list ;
 int ser_release_work ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_kref_put (int ) ;

__attribute__((used)) static void ldisc_close(struct tty_struct *tty)
{
 struct ser_device *ser = tty->disc_data;

 tty_kref_put(ser->tty);

 spin_lock(&ser_lock);
 list_move(&ser->node, &ser_release_list);
 spin_unlock(&ser_lock);
 schedule_work(&ser_release_work);
}
