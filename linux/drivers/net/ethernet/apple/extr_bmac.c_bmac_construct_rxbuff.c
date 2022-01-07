
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; } ;
struct dbdma_cmd {int dummy; } ;


 int INPUT_LAST ;
 int INTR_ALWAYS ;
 int RX_BUFLEN ;
 unsigned char* bmac_emergency_rxbuf ;
 int dbdma_setcmd (struct dbdma_cmd volatile*,int,int ,int ,int ) ;
 int virt_to_bus (unsigned char*) ;

__attribute__((used)) static void
bmac_construct_rxbuff(struct sk_buff *skb, volatile struct dbdma_cmd *cp)
{
 unsigned char *addr = skb? skb->data: bmac_emergency_rxbuf;

 dbdma_setcmd(cp, (INPUT_LAST | INTR_ALWAYS), RX_BUFLEN,
       virt_to_bus(addr), 0);
}
