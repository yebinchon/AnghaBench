
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sf2_priv {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int CORE_CFP_DATA_PORT (int) ;
 int CORE_CFP_MASK_PORT (int) ;
 int SLICE_NUM (unsigned int) ;
 int SLICE_VALID ;
 scalar_t__ be16_to_cpu (int const) ;
 int be32_to_cpu (int const) ;
 int core_writel (struct bcm_sf2_priv*,int,int) ;

__attribute__((used)) static void bcm_sf2_cfp_slice_ipv6(struct bcm_sf2_priv *priv,
       const __be32 *ip6_addr, const __be16 port,
       unsigned int slice_num,
       bool mask)
{
 u32 reg, tmp, val, offset;





 reg = be32_to_cpu(ip6_addr[3]);
 val = (u32)be16_to_cpu(port) << 8 | ((reg >> 8) & 0xff);
 if (mask)
  offset = CORE_CFP_MASK_PORT(4);
 else
  offset = CORE_CFP_DATA_PORT(4);
 core_writel(priv, val, offset);





 tmp = be32_to_cpu(ip6_addr[2]);
 val = (u32)(reg & 0xff) << 24 | (u32)(reg >> 16) << 8 |
       ((tmp >> 8) & 0xff);
 if (mask)
  offset = CORE_CFP_MASK_PORT(3);
 else
  offset = CORE_CFP_DATA_PORT(3);
 core_writel(priv, val, offset);





 reg = be32_to_cpu(ip6_addr[1]);
 val = (u32)(tmp & 0xff) << 24 | (u32)(tmp >> 16) << 8 |
       ((reg >> 8) & 0xff);
 if (mask)
  offset = CORE_CFP_MASK_PORT(2);
 else
  offset = CORE_CFP_DATA_PORT(2);
 core_writel(priv, val, offset);





 tmp = be32_to_cpu(ip6_addr[0]);
 val = (u32)(reg & 0xff) << 24 | (u32)(reg >> 16) << 8 |
       ((tmp >> 8) & 0xff);
 if (mask)
  offset = CORE_CFP_MASK_PORT(1);
 else
  offset = CORE_CFP_DATA_PORT(1);
 core_writel(priv, val, offset);







 reg = (u32)(tmp & 0xff) << 24 | (u32)(tmp >> 16) << 8 |
        SLICE_NUM(slice_num) | SLICE_VALID;
 if (mask)
  offset = CORE_CFP_MASK_PORT(0);
 else
  offset = CORE_CFP_DATA_PORT(0);
 core_writel(priv, reg, offset);
}
