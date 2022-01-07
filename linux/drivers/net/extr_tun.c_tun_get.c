
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int dev; } ;
struct tun_file {int tun; } ;


 int dev_hold (int ) ;
 struct tun_struct* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct tun_struct *tun_get(struct tun_file *tfile)
{
 struct tun_struct *tun;

 rcu_read_lock();
 tun = rcu_dereference(tfile->tun);
 if (tun)
  dev_hold(tun->dev);
 rcu_read_unlock();

 return tun;
}
