
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct MT2063_ExclZone_t {int max_; int min_; struct MT2063_ExclZone_t* next_; } ;
struct MT2063_AvoidSpursData_t {int f_if1_Center; int f_if1_bw; struct MT2063_ExclZone_t* usedZones; } ;


 struct MT2063_ExclZone_t* InsertNode (struct MT2063_AvoidSpursData_t*,struct MT2063_ExclZone_t*) ;
 struct MT2063_ExclZone_t* RemoveNode (struct MT2063_AvoidSpursData_t*,struct MT2063_ExclZone_t*,struct MT2063_ExclZone_t*) ;
 int dprintk (int,char*) ;

__attribute__((used)) static void MT2063_AddExclZone(struct MT2063_AvoidSpursData_t *pAS_Info,
          u32 f_min, u32 f_max)
{
 struct MT2063_ExclZone_t *pNode = pAS_Info->usedZones;
 struct MT2063_ExclZone_t *pPrev = ((void*)0);
 struct MT2063_ExclZone_t *pNext = ((void*)0);

 dprintk(2, "\n");


 if ((f_max > (pAS_Info->f_if1_Center - (pAS_Info->f_if1_bw / 2)))
     && (f_min < (pAS_Info->f_if1_Center + (pAS_Info->f_if1_bw / 2)))
     && (f_min < f_max)) {
  while ((pNode != ((void*)0)) && (pNode->max_ < f_min)) {
   pPrev = pNode;
   pNode = pNode->next_;
  }

  if ((pNode != ((void*)0)) && (pNode->min_ < f_max)) {

   if (f_min < pNode->min_)
    pNode->min_ = f_min;
   if (f_max > pNode->max_)
    pNode->max_ = f_max;
  } else {
   pNode = InsertNode(pAS_Info, pPrev);
   pNode->min_ = f_min;
   pNode->max_ = f_max;
  }


  pNext = pNode->next_;
  while ((pNext != ((void*)0)) && (pNext->min_ < pNode->max_)) {
   if (pNext->max_ > pNode->max_)
    pNode->max_ = pNext->max_;

   pNext = RemoveNode(pAS_Info, pNode, pNext);
  }
 }
}
