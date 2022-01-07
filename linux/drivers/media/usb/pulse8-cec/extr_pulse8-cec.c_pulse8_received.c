
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_msg {int dummy; } ;
struct cec_adapter {int dummy; } ;


 int ENOMSG ;

__attribute__((used)) static int pulse8_received(struct cec_adapter *adap, struct cec_msg *msg)
{
 return -ENOMSG;
}
