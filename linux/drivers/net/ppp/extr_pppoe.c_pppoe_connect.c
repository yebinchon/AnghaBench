
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_8__ {scalar_t__ sid; int dev; } ;
struct TYPE_6__ {TYPE_5__ pppoe; } ;
struct sockaddr_pppox {scalar_t__ sa_protocol; TYPE_1__ sa_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct TYPE_7__ {int mtu; int remote; scalar_t__ sid; int * ops; struct sock* private; scalar_t__ hdrlen; } ;
struct pppox_sock {struct net_device* pppoe_dev; scalar_t__ num; scalar_t__ pppoe_ifindex; TYPE_2__ pppoe_pa; TYPE_2__ chan; int * next; TYPE_2__ pppoe_relay; } ;
struct pppoe_net {int hash_lock; } ;
struct pppoe_hdr {int dummy; } ;
struct pppoe_addr {int dummy; } ;
struct net_device {int flags; int mtu; scalar_t__ hard_header_len; scalar_t__ ifindex; } ;
struct net {int dummy; } ;


 int EALREADY ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int IFF_UP ;
 int PPPOX_CONNECTED ;
 int PPPOX_DEAD ;
 int PPPOX_NONE ;
 scalar_t__ PX_PROTO_OE ;
 int __set_item (struct pppoe_net*,struct pppox_sock*) ;
 int delete_item (struct pppoe_net*,scalar_t__,int ,scalar_t__) ;
 struct net_device* dev_get_by_name (struct net*,int ) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int lock_sock (struct sock*) ;
 int memcpy (TYPE_2__*,TYPE_5__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int ppp_register_net_channel (int ,TYPE_2__*) ;
 int pppoe_chan_ops ;
 struct pppoe_net* pppoe_pernet (struct net*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int pppox_unbind_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 scalar_t__ stage_session (scalar_t__) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int pppoe_connect(struct socket *sock, struct sockaddr *uservaddr,
    int sockaddr_len, int flags)
{
 struct sock *sk = sock->sk;
 struct sockaddr_pppox *sp = (struct sockaddr_pppox *)uservaddr;
 struct pppox_sock *po = pppox_sk(sk);
 struct net_device *dev = ((void*)0);
 struct pppoe_net *pn;
 struct net *net = ((void*)0);
 int error;

 lock_sock(sk);

 error = -EINVAL;

 if (sockaddr_len != sizeof(struct sockaddr_pppox))
  goto end;

 if (sp->sa_protocol != PX_PROTO_OE)
  goto end;


 error = -EBUSY;
 if ((sk->sk_state & PPPOX_CONNECTED) &&
      stage_session(sp->sa_addr.pppoe.sid))
  goto end;


 error = -EALREADY;
 if ((sk->sk_state & PPPOX_DEAD) &&
      !stage_session(sp->sa_addr.pppoe.sid))
  goto end;

 error = 0;


 if (stage_session(po->pppoe_pa.sid)) {
  pppox_unbind_sock(sk);
  pn = pppoe_pernet(sock_net(sk));
  delete_item(pn, po->pppoe_pa.sid,
       po->pppoe_pa.remote, po->pppoe_ifindex);
  if (po->pppoe_dev) {
   dev_put(po->pppoe_dev);
   po->pppoe_dev = ((void*)0);
  }

  po->pppoe_ifindex = 0;
  memset(&po->pppoe_pa, 0, sizeof(po->pppoe_pa));
  memset(&po->pppoe_relay, 0, sizeof(po->pppoe_relay));
  memset(&po->chan, 0, sizeof(po->chan));
  po->next = ((void*)0);
  po->num = 0;

  sk->sk_state = PPPOX_NONE;
 }


 if (stage_session(sp->sa_addr.pppoe.sid)) {
  error = -ENODEV;
  net = sock_net(sk);
  dev = dev_get_by_name(net, sp->sa_addr.pppoe.dev);
  if (!dev)
   goto err_put;

  po->pppoe_dev = dev;
  po->pppoe_ifindex = dev->ifindex;
  pn = pppoe_pernet(net);
  if (!(dev->flags & IFF_UP)) {
   goto err_put;
  }

  memcpy(&po->pppoe_pa,
         &sp->sa_addr.pppoe,
         sizeof(struct pppoe_addr));

  write_lock_bh(&pn->hash_lock);
  error = __set_item(pn, po);
  write_unlock_bh(&pn->hash_lock);
  if (error < 0)
   goto err_put;

  po->chan.hdrlen = (sizeof(struct pppoe_hdr) +
       dev->hard_header_len);

  po->chan.mtu = dev->mtu - sizeof(struct pppoe_hdr) - 2;
  po->chan.private = sk;
  po->chan.ops = &pppoe_chan_ops;

  error = ppp_register_net_channel(dev_net(dev), &po->chan);
  if (error) {
   delete_item(pn, po->pppoe_pa.sid,
        po->pppoe_pa.remote, po->pppoe_ifindex);
   goto err_put;
  }

  sk->sk_state = PPPOX_CONNECTED;
 }

 po->num = sp->sa_addr.pppoe.sid;

end:
 release_sock(sk);
 return error;
err_put:
 if (po->pppoe_dev) {
  dev_put(po->pppoe_dev);
  po->pppoe_dev = ((void*)0);
 }
 goto end;
}
