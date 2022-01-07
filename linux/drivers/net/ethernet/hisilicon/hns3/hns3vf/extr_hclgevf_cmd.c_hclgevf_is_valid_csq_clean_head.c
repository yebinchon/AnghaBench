
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_cmq_ring {int next_to_use; int next_to_clean; } ;



__attribute__((used)) static int hclgevf_is_valid_csq_clean_head(struct hclgevf_cmq_ring *ring,
        int head)
{
 int ntu = ring->next_to_use;
 int ntc = ring->next_to_clean;

 if (ntu > ntc)
  return head >= ntc && head <= ntu;

 return head >= ntc || head <= ntu;
}
