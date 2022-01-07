
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ddb_link {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 ddblreadl(struct ddb_link *link, u32 adr)
{
 return readl(link->dev->regs + adr);
}
