
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvneta_port {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 mvreg_read(struct mvneta_port *pp, u32 offset)
{
 return readl(pp->base + offset);
}
