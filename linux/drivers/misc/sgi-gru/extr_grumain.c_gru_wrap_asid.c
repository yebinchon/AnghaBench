
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_asid_gen; int gs_gid; } ;


 int MIN_ASID ;
 int STAT (int ) ;
 int asid_wrap ;
 int gru_dbg (int ,char*,int ) ;
 int grudev ;

__attribute__((used)) static int gru_wrap_asid(struct gru_state *gru)
{
 gru_dbg(grudev, "gid %d\n", gru->gs_gid);
 STAT(asid_wrap);
 gru->gs_asid_gen++;
 return MIN_ASID;
}
