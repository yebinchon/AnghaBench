
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_desc {int des1; int des3; } ;
typedef enum pkt_hash_types { ____Placeholder_pkt_hash_types } pkt_hash_types ;


 int EINVAL ;
 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;




 unsigned int XGMAC_RDES3_L34T ;
 unsigned int XGMAC_RDES3_L34T_SHIFT ;
 unsigned int XGMAC_RDES3_RSV ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static int dwxgmac2_get_rx_hash(struct dma_desc *p, u32 *hash,
    enum pkt_hash_types *type)
{
 unsigned int rdes3 = le32_to_cpu(p->des3);
 u32 ptype;

 if (rdes3 & XGMAC_RDES3_RSV) {
  ptype = (rdes3 & XGMAC_RDES3_L34T) >> XGMAC_RDES3_L34T_SHIFT;

  switch (ptype) {
  case 131:
  case 130:
  case 129:
  case 128:
   *type = PKT_HASH_TYPE_L4;
   break;
  default:
   *type = PKT_HASH_TYPE_L3;
   break;
  }

  *hash = le32_to_cpu(p->des1);
  return 0;
 }

 return -EINVAL;
}
