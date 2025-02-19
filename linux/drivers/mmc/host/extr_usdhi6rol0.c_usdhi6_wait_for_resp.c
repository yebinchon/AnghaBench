
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usdhi6_host {int dummy; } ;


 int USDHI6_SD_INFO1_ACCESS_END ;
 int USDHI6_SD_INFO1_CARD_CD ;
 int USDHI6_SD_INFO1_RSP_END ;
 int USDHI6_SD_INFO2_ERR ;
 int usdhi6_irq_enable (struct usdhi6_host*,int,int ) ;

__attribute__((used)) static void usdhi6_wait_for_resp(struct usdhi6_host *host)
{
 usdhi6_irq_enable(host, USDHI6_SD_INFO1_RSP_END |
     USDHI6_SD_INFO1_ACCESS_END | USDHI6_SD_INFO1_CARD_CD,
     USDHI6_SD_INFO2_ERR);
}
