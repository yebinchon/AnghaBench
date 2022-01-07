
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macsec_eth_header {size_t short_length; } ;


 size_t MIN_NON_SHORT_LEN ;

__attribute__((used)) static void macsec_set_shortlen(struct macsec_eth_header *h, size_t data_len)
{
 if (data_len < MIN_NON_SHORT_LEN)
  h->short_length = data_len;
}
