
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp_sa11x0 {int mccr0; } ;
struct mcp {int dummy; } ;


 int MCCR0 (struct mcp_sa11x0*) ;
 int MCCR0_MCE ;
 int MCSR (struct mcp_sa11x0*) ;
 struct mcp_sa11x0* priv (struct mcp*) ;
 int writel (int,int ) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void mcp_sa11x0_enable(struct mcp *mcp)
{
 struct mcp_sa11x0 *m = priv(mcp);

 writel(-1, MCSR(m));
 m->mccr0 |= MCCR0_MCE;
 writel_relaxed(m->mccr0, MCCR0(m));
}
