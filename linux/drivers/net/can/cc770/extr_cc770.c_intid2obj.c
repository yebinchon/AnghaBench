
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSGOBJ_LAST ;

__attribute__((used)) static inline int intid2obj(unsigned int intid)
{
 if (intid == 2)
  return 0;
 else
  return MSGOBJ_LAST + 2 - intid;
}
