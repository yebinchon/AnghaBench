
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_if {TYPE_1__* drvr; int ifidx; } ;
typedef int s32 ;
typedef int data_le ;
typedef int __le32 ;
struct TYPE_2__ {int proto_block; } ;


 int FIL ;
 int brcmf_dbg (int ,char*,int ,int ,int ) ;
 int brcmf_fil_cmd_data (struct brcmf_if*,int ,int *,int,int) ;
 int cpu_to_le32 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

s32
brcmf_fil_cmd_int_set(struct brcmf_if *ifp, u32 cmd, u32 data)
{
 s32 err;
 __le32 data_le = cpu_to_le32(data);

 mutex_lock(&ifp->drvr->proto_block);
 brcmf_dbg(FIL, "ifidx=%d, cmd=%d, value=%d\n", ifp->ifidx, cmd, data);
 err = brcmf_fil_cmd_data(ifp, cmd, &data_le, sizeof(data_le), 1);
 mutex_unlock(&ifp->drvr->proto_block);

 return err;
}
