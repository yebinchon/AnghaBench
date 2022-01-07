
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_dest {struct db_dest* pnext; } ;
struct au1000_private {struct db_dest* pDBfree; } ;



__attribute__((used)) static struct db_dest *au1000_GetFreeDB(struct au1000_private *aup)
{
 struct db_dest *pDB;
 pDB = aup->pDBfree;

 if (pDB)
  aup->pDBfree = pDB->pnext;

 return pDB;
}
