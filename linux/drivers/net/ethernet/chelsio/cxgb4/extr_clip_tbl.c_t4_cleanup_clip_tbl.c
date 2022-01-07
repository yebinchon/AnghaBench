
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clip_tbl {struct clip_tbl* cl_list; } ;
struct adapter {struct clip_tbl* clipt; } ;


 int kvfree (struct clip_tbl*) ;

void t4_cleanup_clip_tbl(struct adapter *adap)
{
 struct clip_tbl *ctbl = adap->clipt;

 if (ctbl) {
  if (ctbl->cl_list)
   kvfree(ctbl->cl_list);
  kvfree(ctbl);
 }
}
