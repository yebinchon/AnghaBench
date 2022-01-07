
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_fq {int type; } ;





__attribute__((used)) static char *fq_type_to_str(struct dpaa2_eth_fq *fq)
{
 switch (fq->type) {
 case 129:
  return "Rx";
 case 128:
  return "Tx conf";
 default:
  return "N/A";
 }
}
