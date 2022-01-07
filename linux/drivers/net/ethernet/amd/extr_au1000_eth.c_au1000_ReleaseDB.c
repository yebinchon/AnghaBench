
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_dest {struct db_dest* pnext; } ;
struct au1000_private {struct db_dest* pDBfree; } ;



void au1000_ReleaseDB(struct au1000_private *aup, struct db_dest *pDB)
{
 struct db_dest *pDBfree = aup->pDBfree;
 if (pDBfree)
  pDBfree->pnext = pDB;
 aup->pDBfree = pDB;
}
