
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int slic_next_queue_idx(unsigned int idx, unsigned int qlen)
{
 return (idx + 1) & (qlen - 1);
}
