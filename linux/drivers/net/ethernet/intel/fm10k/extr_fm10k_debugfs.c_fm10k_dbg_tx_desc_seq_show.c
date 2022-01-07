
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tx_desc_hdr ;
struct seq_file {struct fm10k_ring* private; } ;
struct fm10k_tx_desc {int flags; int hdrlen; int mss; int vlan; int buflen; int buffer_addr; } ;
struct fm10k_ring {int desc; } ;
typedef int loff_t ;


 struct fm10k_tx_desc* FM10K_TX_DESC (struct fm10k_ring*,int) ;
 int fm10k_dbg_desc_break (struct seq_file*,int) ;
 int seq_printf (struct seq_file*,char const*,...) ;

__attribute__((used)) static int fm10k_dbg_tx_desc_seq_show(struct seq_file *s, void *v)
{
 struct fm10k_ring *ring = s->private;
 int i = *(loff_t *)v;
 static const char tx_desc_hdr[] =
  "DES BUFFER_ADDRESS     LENGTH VLAN   MSS    HDRLEN FLAGS\n";


 if (!i) {
  seq_printf(s, tx_desc_hdr);
  fm10k_dbg_desc_break(s, sizeof(tx_desc_hdr) - 1);
 }


 if (!ring->desc) {
  seq_printf(s, "%03X Descriptor ring not allocated.\n", i);
 } else {
  struct fm10k_tx_desc *txd = FM10K_TX_DESC(ring, i);

  seq_printf(s, "%03X %#018llx %#06x %#06x %#06x %#06x %#04x\n",
      i, txd->buffer_addr, txd->buflen, txd->vlan,
      txd->mss, txd->hdrlen, txd->flags);
 }

 return 0;
}
