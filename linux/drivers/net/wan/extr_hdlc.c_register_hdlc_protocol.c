
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlc_proto {struct hdlc_proto* next; } ;


 struct hdlc_proto* first_proto ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void register_hdlc_protocol(struct hdlc_proto *proto)
{
 rtnl_lock();
 proto->next = first_proto;
 first_proto = proto;
 rtnl_unlock();
}
