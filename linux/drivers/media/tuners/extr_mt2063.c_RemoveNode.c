
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MT2063_ExclZone_t {struct MT2063_ExclZone_t* next_; } ;
struct MT2063_AvoidSpursData_t {int nZones; struct MT2063_ExclZone_t* freeZones; } ;


 int dprintk (int,char*) ;

__attribute__((used)) static struct MT2063_ExclZone_t *RemoveNode(struct MT2063_AvoidSpursData_t
         *pAS_Info,
         struct MT2063_ExclZone_t *pPrevNode,
         struct MT2063_ExclZone_t
         *pNodeToRemove)
{
 struct MT2063_ExclZone_t *pNext = pNodeToRemove->next_;

 dprintk(2, "\n");


 if (pPrevNode != ((void*)0))
  pPrevNode->next_ = pNext;


 pNodeToRemove->next_ = pAS_Info->freeZones;
 pAS_Info->freeZones = pNodeToRemove;


 pAS_Info->nZones--;

 return pNext;
}
