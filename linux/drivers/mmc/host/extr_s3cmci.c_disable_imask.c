
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3cmci_host {scalar_t__ sdiimsk; scalar_t__ base; } ;


 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline u32 disable_imask(struct s3cmci_host *host, u32 imask)
{
 u32 newmask;

 newmask = readl(host->base + host->sdiimsk);
 newmask &= ~imask;

 writel(newmask, host->base + host->sdiimsk);

 return newmask;
}
