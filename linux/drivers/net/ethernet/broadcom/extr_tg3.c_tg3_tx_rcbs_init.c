
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3_napi {int tx_desc_mapping; int tx_ring; } ;
struct tg3 {int irq_max; struct tg3_napi* napi; } ;


 int BDINFO_FLAGS_MAXLEN_SHIFT ;
 int ENABLE_TSS ;
 int NIC_SRAM_SEND_RCB ;
 int NIC_SRAM_TX_BUFFER_DESC ;
 scalar_t__ TG3_BDINFO_SIZE ;
 int TG3_TX_RING_SIZE ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_set_bdinfo (struct tg3*,int ,int ,int,int ) ;

__attribute__((used)) static void tg3_tx_rcbs_init(struct tg3 *tp)
{
 int i = 0;
 u32 txrcb = NIC_SRAM_SEND_RCB;

 if (tg3_flag(tp, ENABLE_TSS))
  i++;

 for (; i < tp->irq_max; i++, txrcb += TG3_BDINFO_SIZE) {
  struct tg3_napi *tnapi = &tp->napi[i];

  if (!tnapi->tx_ring)
   continue;

  tg3_set_bdinfo(tp, txrcb, tnapi->tx_desc_mapping,
          (TG3_TX_RING_SIZE << BDINFO_FLAGS_MAXLEN_SHIFT),
          NIC_SRAM_TX_BUFFER_DESC);
 }
}
