
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nicvf {int sqs_id; scalar_t__ sqs_mode; } ;


 int MAX_CMP_QUEUES_PER_QS ;

__attribute__((used)) static inline u8 nicvf_netdev_qidx(struct nicvf *nic, u8 qidx)
{
 if (nic->sqs_mode)
  return qidx + ((nic->sqs_id + 1) * MAX_CMP_QUEUES_PER_QS);
 else
  return qidx;
}
