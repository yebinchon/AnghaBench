
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int slic_get_free_queue_descs(unsigned int put_idx,
         unsigned int done_idx,
         unsigned int qlen)
{
 if (put_idx >= done_idx)
  return (qlen - (put_idx - done_idx) - 1);
 return (done_idx - put_idx - 1);
}
