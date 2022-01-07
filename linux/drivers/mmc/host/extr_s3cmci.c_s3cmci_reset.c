
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3cmci_host {scalar_t__ base; } ;


 scalar_t__ S3C2410_SDICON ;
 int S3C2440_SDICON_SDRESET ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3cmci_reset(struct s3cmci_host *host)
{
 u32 con = readl(host->base + S3C2410_SDICON);

 con |= S3C2440_SDICON_SDRESET;
 writel(con, host->base + S3C2410_SDICON);
}
