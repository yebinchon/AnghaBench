
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlc_proto {struct hdlc_proto* next; } ;


 int BUG_ON (int) ;
 struct hdlc_proto* first_proto ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void unregister_hdlc_protocol(struct hdlc_proto *proto)
{
 struct hdlc_proto **p;

 rtnl_lock();
 p = &first_proto;
 while (*p != proto) {
  BUG_ON(!*p);
  p = &((*p)->next);
 }
 *p = proto->next;
 rtnl_unlock();
}
