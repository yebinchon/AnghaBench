
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MT2063_ExclZone_t {struct MT2063_ExclZone_t* next_; } ;
struct MT2063_AvoidSpursData_t {size_t nZones; struct MT2063_ExclZone_t* usedZones; struct MT2063_ExclZone_t* MT2063_ExclZones; struct MT2063_ExclZone_t* freeZones; } ;


 int dprintk (int,char*) ;

__attribute__((used)) static struct MT2063_ExclZone_t *InsertNode(struct MT2063_AvoidSpursData_t
         *pAS_Info,
         struct MT2063_ExclZone_t *pPrevNode)
{
 struct MT2063_ExclZone_t *pNode;

 dprintk(2, "\n");


 if (pAS_Info->freeZones != ((void*)0)) {

  pNode = pAS_Info->freeZones;
  pAS_Info->freeZones = pNode->next_;
 } else {

  pNode = &pAS_Info->MT2063_ExclZones[pAS_Info->nZones];
 }

 if (pPrevNode != ((void*)0)) {
  pNode->next_ = pPrevNode->next_;
  pPrevNode->next_ = pNode;
 } else {

  pNode->next_ = pAS_Info->usedZones;
  pAS_Info->usedZones = pNode;
 }

 pAS_Info->nZones++;
 return pNode;
}
