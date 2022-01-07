
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int name; } ;
struct TYPE_3__ {int * skb; int pdl_paddr; int * pdl; } ;
typedef TYPE_1__ hp100_ring_t ;


 int MAX_TX_FRAG ;
 int printk (char*,int ,unsigned long) ;
 int roundup (int,int) ;
 int virt_to_whatever (struct net_device*,int *) ;

__attribute__((used)) static int hp100_init_txpdl(struct net_device *dev,
       register hp100_ring_t * ringptr,
       register u32 * pdlptr)
{
 if (0 != (((unsigned long) pdlptr) & 0xf))
  printk("hp100: %s: Init txpdl: Unaligned pdlptr 0x%lx.\n", dev->name, (unsigned long) pdlptr);

 ringptr->pdl = pdlptr;
 ringptr->pdl_paddr = virt_to_whatever(dev, pdlptr);
 ringptr->skb = ((void*)0);

 return roundup(MAX_TX_FRAG * 2 + 2, 4);
}
