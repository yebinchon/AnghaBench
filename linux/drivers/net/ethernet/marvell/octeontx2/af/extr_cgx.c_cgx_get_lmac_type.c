
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct cgx {int dummy; } ;


 int CGXX_CMRX_CFG ;
 int CGX_LMAC_TYPE_MASK ;
 int CGX_LMAC_TYPE_SHIFT ;
 int cgx_read (struct cgx*,int,int ) ;

__attribute__((used)) static inline u8 cgx_get_lmac_type(struct cgx *cgx, int lmac_id)
{
 u64 cfg;

 cfg = cgx_read(cgx, lmac_id, CGXX_CMRX_CFG);
 return (cfg >> CGX_LMAC_TYPE_SHIFT) & CGX_LMAC_TYPE_MASK;
}
