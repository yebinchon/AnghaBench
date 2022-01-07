
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRANT_INVALID_REF ;
 int gnttab_end_foreign_access (int,int ,unsigned long) ;

__attribute__((used)) static void xennet_end_access(int ref, void *page)
{

 if (ref != GRANT_INVALID_REF)
  gnttab_end_foreign_access(ref, 0, (unsigned long)page);
}
