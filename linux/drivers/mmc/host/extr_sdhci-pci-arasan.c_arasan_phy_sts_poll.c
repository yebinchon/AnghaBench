
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {int dummy; } ;
typedef int ktime_t ;


 int EBUSY ;
 int arasan_phy_read (struct sdhci_host*,int,int*) ;
 int ktime_add_us (int ,int) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;

__attribute__((used)) static int arasan_phy_sts_poll(struct sdhci_host *host, u32 offset, u32 mask)
{
 int ret;
 ktime_t timeout = ktime_add_us(ktime_get(), 100);
 bool failed;
 u8 val = 0;

 while (1) {
  failed = ktime_after(ktime_get(), timeout);
  ret = arasan_phy_read(host, offset, &val);
  if (ret)
   return -EBUSY;
  else if (val & mask)
   return 0;
  if (failed)
   return -EBUSY;
 }
}
