
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_tid_crypto_rx_single {int pn; scalar_t__ key_set; } ;
struct wil_tid_crypto_rx {struct wil_tid_crypto_rx_single* key_id; } ;
struct seq_file {int dummy; } ;


 int WIL_STA_TID_NUM ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void wil_print_rxtid_crypto(struct seq_file *s, int tid,
       struct wil_tid_crypto_rx *c)
{
 int i;

 for (i = 0; i < 4; i++) {
  struct wil_tid_crypto_rx_single *cc = &c->key_id[i];

  if (cc->key_set)
   goto has_keys;
 }
 return;

has_keys:
 if (tid < WIL_STA_TID_NUM)
  seq_printf(s, "  [%2d] PN", tid);
 else
  seq_puts(s, "  [GR] PN");

 for (i = 0; i < 4; i++) {
  struct wil_tid_crypto_rx_single *cc = &c->key_id[i];

  seq_printf(s, " [%i%s]%6phN", i, cc->key_set ? "+" : "-",
      cc->pn);
 }
 seq_puts(s, "\n");
}
