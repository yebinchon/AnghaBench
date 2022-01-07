
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usdhi6_host {int dummy; } ;


 int ETIMEDOUT ;
 int USDHI6_SOFT_RST ;
 int USDHI6_SOFT_RST_RESERVED ;
 int USDHI6_SOFT_RST_RESET ;
 int cpu_relax () ;
 int usdhi6_read (struct usdhi6_host*,int ) ;
 int usdhi6_write (struct usdhi6_host*,int ,int) ;

__attribute__((used)) static int usdhi6_reset(struct usdhi6_host *host)
{
 int i;

 usdhi6_write(host, USDHI6_SOFT_RST, USDHI6_SOFT_RST_RESERVED);
 cpu_relax();
 usdhi6_write(host, USDHI6_SOFT_RST, USDHI6_SOFT_RST_RESERVED | USDHI6_SOFT_RST_RESET);
 for (i = 1000; i; i--)
  if (usdhi6_read(host, USDHI6_SOFT_RST) & USDHI6_SOFT_RST_RESET)
   break;

 return i ? 0 : -ETIMEDOUT;
}
