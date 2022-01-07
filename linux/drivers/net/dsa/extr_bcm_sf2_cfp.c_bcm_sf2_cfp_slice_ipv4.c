
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct flow_dissector_key_ports {int src; int dst; } ;
struct flow_dissector_key_ipv4_addrs {int src; int dst; } ;
struct bcm_sf2_priv {int dummy; } ;


 int CORE_CFP_DATA_PORT (int) ;
 int CORE_CFP_MASK_PORT (int) ;
 int SLICE_NUM (unsigned int) ;
 int SLICE_VALID ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int core_writel (struct bcm_sf2_priv*,int,int) ;

__attribute__((used)) static void bcm_sf2_cfp_slice_ipv4(struct bcm_sf2_priv *priv,
       struct flow_dissector_key_ipv4_addrs *addrs,
       struct flow_dissector_key_ports *ports,
       unsigned int slice_num,
       bool mask)
{
 u32 reg, offset;





 reg = 0;
 if (mask)
  offset = CORE_CFP_MASK_PORT(4);
 else
  offset = CORE_CFP_DATA_PORT(4);
 core_writel(priv, reg, offset);





 reg = be16_to_cpu(ports->dst) >> 8;
 if (mask)
  offset = CORE_CFP_MASK_PORT(3);
 else
  offset = CORE_CFP_DATA_PORT(3);
 core_writel(priv, reg, offset);





 reg = (be16_to_cpu(ports->dst) & 0xff) << 24 |
       (u32)be16_to_cpu(ports->src) << 8 |
       (be32_to_cpu(addrs->dst) & 0x0000ff00) >> 8;
 if (mask)
  offset = CORE_CFP_MASK_PORT(2);
 else
  offset = CORE_CFP_DATA_PORT(2);
 core_writel(priv, reg, offset);





 reg = (u32)(be32_to_cpu(addrs->dst) & 0xff) << 24 |
       (u32)(be32_to_cpu(addrs->dst) >> 16) << 8 |
       (be32_to_cpu(addrs->src) & 0x0000ff00) >> 8;
 if (mask)
  offset = CORE_CFP_MASK_PORT(1);
 else
  offset = CORE_CFP_DATA_PORT(1);
 core_writel(priv, reg, offset);







 reg = (u32)(be32_to_cpu(addrs->src) & 0xff) << 24 |
       (u32)(be32_to_cpu(addrs->src) >> 16) << 8 |
       SLICE_NUM(slice_num) | SLICE_VALID;
 if (mask)
  offset = CORE_CFP_MASK_PORT(0);
 else
  offset = CORE_CFP_DATA_PORT(0);
 core_writel(priv, reg, offset);
}
