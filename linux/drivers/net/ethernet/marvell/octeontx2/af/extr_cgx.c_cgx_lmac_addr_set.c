
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct cgx {int dummy; } ;


 scalar_t__ CGXX_CMRX_RX_DMAC_CAM0 ;
 scalar_t__ CGXX_CMRX_RX_DMAC_CTL0 ;
 int CGX_DMAC_CAM_ADDR_ENABLE ;
 int CGX_DMAC_CTL0_CAM_ENABLE ;
 struct cgx* cgx_get_pdata (int) ;
 int cgx_read (struct cgx*,int,scalar_t__) ;
 int cgx_write (struct cgx*,int,scalar_t__,int) ;
 int mac2u64 (int*) ;

int cgx_lmac_addr_set(u8 cgx_id, u8 lmac_id, u8 *mac_addr)
{
 struct cgx *cgx_dev = cgx_get_pdata(cgx_id);
 u64 cfg;




 cfg = mac2u64 (mac_addr);

 cgx_write(cgx_dev, 0, (CGXX_CMRX_RX_DMAC_CAM0 + (lmac_id * 0x8)),
    cfg | CGX_DMAC_CAM_ADDR_ENABLE | ((u64)lmac_id << 49));

 cfg = cgx_read(cgx_dev, lmac_id, CGXX_CMRX_RX_DMAC_CTL0);
 cfg |= CGX_DMAC_CTL0_CAM_ENABLE;
 cgx_write(cgx_dev, lmac_id, CGXX_CMRX_RX_DMAC_CTL0, cfg);

 return 0;
}
