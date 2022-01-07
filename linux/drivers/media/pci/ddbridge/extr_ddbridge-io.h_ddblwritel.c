
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ddb_link {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void ddblwritel(struct ddb_link *link, u32 val, u32 adr)
{
 writel(val, link->dev->regs + adr);
}
