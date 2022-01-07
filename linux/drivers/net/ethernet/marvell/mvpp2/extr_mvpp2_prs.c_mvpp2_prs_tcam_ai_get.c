
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int* tcam; } ;


 int MVPP2_PRS_AI_MASK ;
 size_t MVPP2_PRS_TCAM_AI_WORD ;

__attribute__((used)) static int mvpp2_prs_tcam_ai_get(struct mvpp2_prs_entry *pe)
{
 return pe->tcam[MVPP2_PRS_TCAM_AI_WORD] & MVPP2_PRS_AI_MASK;
}
