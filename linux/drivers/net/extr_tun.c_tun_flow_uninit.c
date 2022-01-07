
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int flow_gc_timer; } ;


 int del_timer_sync (int *) ;
 int tun_flow_flush (struct tun_struct*) ;

__attribute__((used)) static void tun_flow_uninit(struct tun_struct *tun)
{
 del_timer_sync(&tun->flow_gc_timer);
 tun_flow_flush(tun);
}
