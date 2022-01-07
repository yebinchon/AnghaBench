
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum htt_security_types { ____Placeholder_htt_security_types } htt_security_types ;






__attribute__((used)) static int ath10k_htt_rx_pn_len(enum htt_security_types sec_type)
{
 switch (sec_type) {
 case 129:
 case 128:
 case 130:
  return 48;
 default:
  return 0;
 }
}
