
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlog_info {scalar_t__ nentries; } ;
typedef scalar_t__ loff_t ;



__attribute__((used)) static inline void *devlog_get_idx(struct devlog_info *dinfo, loff_t pos)
{
 if (pos > dinfo->nentries)
  return ((void*)0);

 return (void *)(uintptr_t)(pos + 1);
}
