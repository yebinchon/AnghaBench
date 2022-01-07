
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath10k_pkt_rx_err { ____Placeholder_ath10k_pkt_rx_err } ath10k_pkt_rx_err ;
__attribute__((used)) static char *get_err_str(enum ath10k_pkt_rx_err i)
{
 switch (i) {
 case 131:
  return "fcs_err";
 case 128:
  return "tkip_err";
 case 132:
  return "crypt_err";
 case 129:
  return "peer_idx_inval";
 case 130:
  return "unknown";
 }

 return "unknown";
}
