
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rvu {int dummy; } ;


 int npc_enadis_default_entries (struct rvu*,int ,int,int) ;

void rvu_npc_enable_default_entries(struct rvu *rvu, u16 pcifunc, int nixlf)
{
 npc_enadis_default_entries(rvu, pcifunc, nixlf, 1);
}
