
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int num_sqs_en; int* sqs_used; int num_vf_en; } ;



__attribute__((used)) static int nic_nxt_avail_sqs(struct nicpf *nic)
{
 int sqs;

 for (sqs = 0; sqs < nic->num_sqs_en; sqs++) {
  if (!nic->sqs_used[sqs])
   nic->sqs_used[sqs] = 1;
  else
   continue;
  return sqs + nic->num_vf_en;
 }
 return -1;
}
