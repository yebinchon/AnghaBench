
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_endpoint {int conn_flags; } ;


 int HTC_FLGS_TX_BNDL_PAD_EN ;

__attribute__((used)) static int htc_get_credit_padding(unsigned int cred_sz, int *len,
      struct htc_endpoint *ep)
{
 int rem_cred, cred_pad;

 rem_cred = *len % cred_sz;


 if (!rem_cred)
  return 0;

 if (!(ep->conn_flags & HTC_FLGS_TX_BNDL_PAD_EN))
  return -1;







 cred_pad = *len < cred_sz ? (cred_sz - *len) : rem_cred;

 if ((cred_pad > 0) && (cred_pad <= 255))
  *len += cred_pad;
 else

  return -1;

 return cred_pad;
}
