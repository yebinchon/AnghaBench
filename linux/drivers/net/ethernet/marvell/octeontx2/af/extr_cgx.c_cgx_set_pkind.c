
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cgx {scalar_t__ lmac_count; } ;


 int CGXX_CMRX_RX_ID_MAP ;
 int ENODEV ;
 int cgx_write (struct cgx*,scalar_t__,int ,int) ;

int cgx_set_pkind(void *cgxd, u8 lmac_id, int pkind)
{
 struct cgx *cgx = cgxd;

 if (!cgx || lmac_id >= cgx->lmac_count)
  return -ENODEV;

 cgx_write(cgx, lmac_id, CGXX_CMRX_RX_ID_MAP, (pkind & 0x3F));
 return 0;
}
