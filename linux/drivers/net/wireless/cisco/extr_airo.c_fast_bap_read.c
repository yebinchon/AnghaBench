
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct airo_info {TYPE_1__* dev; } ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ base_addr; } ;


 scalar_t__ DATA0 ;
 int SUCCESS ;
 int do8bitIO ;
 int insb (scalar_t__,int *,int) ;
 int insw (scalar_t__,int *,int) ;

__attribute__((used)) static int fast_bap_read(struct airo_info *ai, __le16 *pu16Dst,
    int bytelen, int whichbap)
{
 bytelen = (bytelen + 1) & (~1);
 if ( !do8bitIO )
  insw( ai->dev->base_addr+DATA0+whichbap, pu16Dst, bytelen>>1 );
 else
  insb( ai->dev->base_addr+DATA0+whichbap, pu16Dst, bytelen );
 return SUCCESS;
}
