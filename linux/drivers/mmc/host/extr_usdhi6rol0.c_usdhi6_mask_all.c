
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usdhi6_host {int dummy; } ;


 int usdhi6_irq_enable (struct usdhi6_host*,int ,int ) ;

__attribute__((used)) static void usdhi6_mask_all(struct usdhi6_host *host)
{
 usdhi6_irq_enable(host, 0, 0);
}
