
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvc_device {int dummy; } ;
struct net_device {int min_mtu; int needs_free_netdev; struct pvc_device* ml_priv; int priv_flags; void* max_mtu; void* mtu; int * netdev_ops; int broadcast; scalar_t__ dev_addr; } ;
typedef int hdlc_device ;
typedef int __be16 ;
struct TYPE_2__ {int dce_changed; int dce_pvc_count; } ;


 int ARPHRD_ETHER ;
 int EEXIST ;
 int EIO ;
 int ENOBUFS ;
 void* HDLC_MAX_MTU ;
 int IFF_NO_QUEUE ;
 int IFF_TX_SKB_SHARING ;
 int NET_NAME_UNKNOWN ;
 struct pvc_device* add_pvc (struct net_device*,unsigned int) ;
 struct net_device* alloc_netdev (int ,char*,int ,int ) ;
 int delete_unused_pvcs (int *) ;
 int * dev_to_hdlc (struct net_device*) ;
 int dlci_to_q922 (int ,unsigned int) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup ;
 int free_netdev (struct net_device*) ;
 struct net_device** get_dev_p (struct pvc_device*,int) ;
 int htons (unsigned int) ;
 int netdev_warn (struct net_device*,char*) ;
 int pvc_is_used (struct pvc_device*) ;
 int pvc_ops ;
 int pvc_setup ;
 scalar_t__ register_netdevice (struct net_device*) ;
 TYPE_1__* state (int *) ;

__attribute__((used)) static int fr_add_pvc(struct net_device *frad, unsigned int dlci, int type)
{
 hdlc_device *hdlc = dev_to_hdlc(frad);
 struct pvc_device *pvc;
 struct net_device *dev;
 int used;

 if ((pvc = add_pvc(frad, dlci)) == ((void*)0)) {
  netdev_warn(frad, "Memory squeeze on fr_add_pvc()\n");
  return -ENOBUFS;
 }

 if (*get_dev_p(pvc, type))
  return -EEXIST;

 used = pvc_is_used(pvc);

 if (type == ARPHRD_ETHER)
  dev = alloc_netdev(0, "pvceth%d", NET_NAME_UNKNOWN,
       ether_setup);
 else
  dev = alloc_netdev(0, "pvc%d", NET_NAME_UNKNOWN, pvc_setup);

 if (!dev) {
  netdev_warn(frad, "Memory squeeze on fr_pvc()\n");
  delete_unused_pvcs(hdlc);
  return -ENOBUFS;
 }

 if (type == ARPHRD_ETHER) {
  dev->priv_flags &= ~IFF_TX_SKB_SHARING;
  eth_hw_addr_random(dev);
 } else {
  *(__be16*)dev->dev_addr = htons(dlci);
  dlci_to_q922(dev->broadcast, dlci);
 }
 dev->netdev_ops = &pvc_ops;
 dev->mtu = HDLC_MAX_MTU;
 dev->min_mtu = 68;
 dev->max_mtu = HDLC_MAX_MTU;
 dev->priv_flags |= IFF_NO_QUEUE;
 dev->ml_priv = pvc;

 if (register_netdevice(dev) != 0) {
  free_netdev(dev);
  delete_unused_pvcs(hdlc);
  return -EIO;
 }

 dev->needs_free_netdev = 1;
 *get_dev_p(pvc, type) = dev;
 if (!used) {
  state(hdlc)->dce_changed = 1;
  state(hdlc)->dce_pvc_count++;
 }
 return 0;
}
