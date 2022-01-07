
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp_sa11x0 {int mccr0; } ;
struct mcp {int dummy; } ;


 int MCCR0 (struct mcp_sa11x0*) ;
 struct mcp_sa11x0* priv (struct mcp*) ;
 int writel_relaxed (unsigned int,int ) ;

__attribute__((used)) static void
mcp_sa11x0_set_telecom_divisor(struct mcp *mcp, unsigned int divisor)
{
 struct mcp_sa11x0 *m = priv(mcp);

 divisor /= 32;

 m->mccr0 &= ~0x00007f00;
 m->mccr0 |= divisor << 8;
 writel_relaxed(m->mccr0, MCCR0(m));
}
