
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ipw_priv {int dummy; } ;


 int IPW_AUTOINC_ADDR ;
 int IPW_AUTOINC_DATA ;
 int IPW_DEBUG_IO (char*,int,int *,int) ;
 int IPW_INDIRECT_ADDR ;
 int IPW_INDIRECT_ADDR_MASK ;
 scalar_t__ IPW_INDIRECT_DATA ;
 int _ipw_read32 (struct ipw_priv*,int ) ;
 int _ipw_read8 (struct ipw_priv*,scalar_t__) ;
 int _ipw_write32 (struct ipw_priv*,int ,int) ;
 int ipw_read8 (struct ipw_priv*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void _ipw_read_indirect(struct ipw_priv *priv, u32 addr, u8 * buf,
          int num)
{
 u32 aligned_addr = addr & IPW_INDIRECT_ADDR_MASK;
 u32 dif_len = addr - aligned_addr;
 u32 i;

 IPW_DEBUG_IO("addr = %i, buf = %p, num = %i\n", addr, buf, num);

 if (num <= 0) {
  return;
 }


 if (unlikely(dif_len)) {
  _ipw_write32(priv, IPW_INDIRECT_ADDR, aligned_addr);

  for (i = dif_len; ((i < 4) && (num > 0)); i++, num--)
   *buf++ = _ipw_read8(priv, IPW_INDIRECT_DATA + i);
  aligned_addr += 4;
 }


 _ipw_write32(priv, IPW_AUTOINC_ADDR, aligned_addr);
 for (; num >= 4; buf += 4, aligned_addr += 4, num -= 4)
  *(u32 *) buf = _ipw_read32(priv, IPW_AUTOINC_DATA);


 if (unlikely(num)) {
  _ipw_write32(priv, IPW_INDIRECT_ADDR, aligned_addr);
  for (i = 0; num > 0; i++, num--)
   *buf++ = ipw_read8(priv, IPW_INDIRECT_DATA + i);
 }
}
