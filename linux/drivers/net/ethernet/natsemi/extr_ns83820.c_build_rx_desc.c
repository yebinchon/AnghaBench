
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ns83820 {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le32 ;


 int DESC_BUFPTR ;
 size_t DESC_CMDSTS ;
 size_t DESC_EXTSTS ;
 int DESC_LINK ;
 int cpu_to_le32 (int ) ;
 int desc_addr_set (int *,int ) ;
 int mb () ;

__attribute__((used)) static inline void build_rx_desc(struct ns83820 *dev, __le32 *desc, dma_addr_t link, dma_addr_t buf, u32 cmdsts, u32 extsts)
{
 desc_addr_set(desc + DESC_LINK, link);
 desc_addr_set(desc + DESC_BUFPTR, buf);
 desc[DESC_EXTSTS] = cpu_to_le32(extsts);
 mb();
 desc[DESC_CMDSTS] = cpu_to_le32(cmdsts);
}
