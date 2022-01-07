
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpaa2_eth_priv {int dummy; } ;


 scalar_t__ ingress_fq_count (struct dpaa2_eth_priv*) ;
 int msleep (int) ;

__attribute__((used)) static void wait_for_ingress_fq_empty(struct dpaa2_eth_priv *priv)
{
 int retries = 10;
 u32 pending;

 do {
  pending = ingress_fq_count(priv);
  if (pending)
   msleep(100);
 } while (pending && --retries);
}
