
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ave_private {int dummy; } ;
typedef enum desc_id { ____Placeholder_desc_id } desc_id ;
typedef int dma_addr_t ;


 int AVE_DESC_OFS_ADDRL ;
 int AVE_DESC_OFS_ADDRU ;
 scalar_t__ IS_DESC_64BIT (struct ave_private*) ;
 int ave_desc_write (struct net_device*,int,int,int ,int ) ;
 int lower_32_bits (int ) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void ave_desc_write_addr(struct net_device *ndev, enum desc_id id,
    int entry, dma_addr_t paddr)
{
 struct ave_private *priv = netdev_priv(ndev);

 ave_desc_write(ndev, id, entry, AVE_DESC_OFS_ADDRL,
         lower_32_bits(paddr));
 if (IS_DESC_64BIT(priv))
  ave_desc_write(ndev, id,
          entry, AVE_DESC_OFS_ADDRU,
          upper_32_bits(paddr));
}
