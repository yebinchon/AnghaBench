
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
typedef enum desc_id { ____Placeholder_desc_id } desc_id ;


 int AVE_DESC_OFS_CMDSTS ;
 int ave_desc_write (struct net_device*,int,int,int ,int ) ;

__attribute__((used)) static void ave_desc_write_cmdsts(struct net_device *ndev, enum desc_id id,
      int entry, u32 val)
{
 ave_desc_write(ndev, id, entry, AVE_DESC_OFS_CMDSTS, val);
}
