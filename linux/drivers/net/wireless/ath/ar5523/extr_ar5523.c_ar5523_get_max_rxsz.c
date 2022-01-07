
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523 {int rxbufsz; } ;
typedef int rxsize ;
typedef int __be32 ;


 int AR5523_SANE_RXBUFSZ ;
 int ST_WDC_TRANSPORT_CHUNK_SIZE ;
 int ar5523_dbg (struct ar5523*,char*,int ) ;
 int ar5523_err (struct ar5523*,char*,...) ;
 int ar5523_get_status (struct ar5523*,int ,int *,int) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static int ar5523_get_max_rxsz(struct ar5523 *ar)
{
 int error;
 __be32 rxsize;


 error = ar5523_get_status(ar, ST_WDC_TRANSPORT_CHUNK_SIZE, &rxsize,
      sizeof(rxsize));
 if (error != 0) {
  ar5523_err(ar, "could not read max RX size\n");
  return error;
 }

 ar->rxbufsz = be32_to_cpu(rxsize);

 if (!ar->rxbufsz || ar->rxbufsz > AR5523_SANE_RXBUFSZ) {
  ar5523_err(ar, "Bad rxbufsz from device. Using %d instead\n",
      AR5523_SANE_RXBUFSZ);
  ar->rxbufsz = AR5523_SANE_RXBUFSZ;
 }

 ar5523_dbg(ar, "Max RX buf size: %d\n", ar->rxbufsz);
 return 0;
}
