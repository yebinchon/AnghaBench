
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3cmci_host {scalar_t__ sdiimsk; scalar_t__ base; } ;


 int S3C2410_SDIIMSK_SDIOIRQ ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void clear_imask(struct s3cmci_host *host)
{
 u32 mask = readl(host->base + host->sdiimsk);


 mask &= S3C2410_SDIIMSK_SDIOIRQ;
 writel(mask, host->base + host->sdiimsk);
}
