
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int* tcam; } ;


 int MVPP2_PRS_PORT_MASK ;
 size_t MVPP2_PRS_TCAM_PORT_WORD ;

unsigned int mvpp2_prs_tcam_port_map_get(struct mvpp2_prs_entry *pe)
{
 return (~pe->tcam[MVPP2_PRS_TCAM_PORT_WORD] >> 24) & MVPP2_PRS_PORT_MASK;
}
