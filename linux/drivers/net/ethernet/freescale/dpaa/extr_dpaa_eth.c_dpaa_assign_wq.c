
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_fq {int fq_type; int wq; int fqid; } ;


 int DPAA_ETH_TXQ_NUM ;
 int DPAA_TC_TXQ_NUM ;







 int WARN (int,char*,int,...) ;

__attribute__((used)) static inline void dpaa_assign_wq(struct dpaa_fq *fq, int idx)
{
 switch (fq->fq_type) {
 case 130:
 case 129:
  fq->wq = 1;
  break;
 case 133:
 case 128:
  fq->wq = 5;
  break;
 case 134:
 case 132:
  fq->wq = 6;
  break;
 case 131:
  switch (idx / DPAA_TC_TXQ_NUM) {
  case 0:

   fq->wq = 6;
   break;
  case 1:

   fq->wq = 2;
   break;
  case 2:

   fq->wq = 1;
   break;
  case 3:

   fq->wq = 0;
   break;
  default:
   WARN(1, "Too many TX FQs: more than %d!\n",
        DPAA_ETH_TXQ_NUM);
  }
  break;
 default:
  WARN(1, "Invalid FQ type %d for FQID %d!\n",
       fq->fq_type, fq->fqid);
 }
}
