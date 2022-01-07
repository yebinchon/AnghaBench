
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
typedef enum desc_id { ____Placeholder_desc_id } desc_id ;


 int AVE_DESC_OFS_CMDSTS ;
 int ave_desc_read (struct net_device*,int,int,int ) ;

__attribute__((used)) static u32 ave_desc_read_cmdsts(struct net_device *ndev, enum desc_id id,
    int entry)
{
 return ave_desc_read(ndev, id, entry, AVE_DESC_OFS_CMDSTS);
}
