
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* create ) (struct net*,struct socket*,int) ;int owner; } ;


 int EPROTONOSUPPORT ;
 int EPROTOTYPE ;
 int PF_PPPOX ;
 int PX_MAX_PROTO ;
 int module_put (int ) ;
 TYPE_1__** pppox_protos ;
 int request_module (char*,int ,int) ;
 int stub1 (struct net*,struct socket*,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static int pppox_create(struct net *net, struct socket *sock, int protocol,
   int kern)
{
 int rc = -EPROTOTYPE;

 if (protocol < 0 || protocol > PX_MAX_PROTO)
  goto out;

 rc = -EPROTONOSUPPORT;
 if (!pppox_protos[protocol])
  request_module("net-pf-%d-proto-%d", PF_PPPOX, protocol);
 if (!pppox_protos[protocol] ||
     !try_module_get(pppox_protos[protocol]->owner))
  goto out;

 rc = pppox_protos[protocol]->create(net, sock, kern);

 module_put(pppox_protos[protocol]->owner);
out:
 return rc;
}
