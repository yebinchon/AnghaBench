
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
struct net_device {int name; } ;
struct TYPE_3__ {int* pdl; int * skb; scalar_t__ pdl_paddr; } ;
typedef TYPE_1__ hp100_ring_t ;


 int MAX_RX_FRAG ;
 int printk (char*,int ,unsigned long) ;
 int roundup (int,int) ;
 scalar_t__ virt_to_whatever (struct net_device*,int*) ;

__attribute__((used)) static int hp100_init_rxpdl(struct net_device *dev,
       register hp100_ring_t * ringptr,
       register u32 * pdlptr)
{


 if (0 != (((unsigned long) pdlptr) & 0xf))
  printk("hp100: %s: Init rxpdl: Unaligned pdlptr 0x%lx.\n",
         dev->name, (unsigned long) pdlptr);

 ringptr->pdl = pdlptr + 1;
 ringptr->pdl_paddr = virt_to_whatever(dev, pdlptr + 1);
 ringptr->skb = ((void*)0);
 *(pdlptr + 2) = (u_int) virt_to_whatever(dev, pdlptr);
 *(pdlptr + 3) = 4;

 return roundup(MAX_RX_FRAG * 2 + 2, 4);
}
