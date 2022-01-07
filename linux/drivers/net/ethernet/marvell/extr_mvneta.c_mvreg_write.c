
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvneta_port {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mvreg_write(struct mvneta_port *pp, u32 offset, u32 data)
{
 writel(data, pp->base + offset);
}
