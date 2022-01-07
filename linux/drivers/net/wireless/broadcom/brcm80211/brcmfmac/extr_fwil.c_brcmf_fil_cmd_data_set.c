
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_if {TYPE_1__* drvr; int ifidx; } ;
typedef int s32 ;
struct TYPE_2__ {int proto_block; } ;


 int BRCMF_FIL_ON () ;
 int FIL ;
 int MAX_HEX_DUMP_LEN ;
 int brcmf_dbg (int ,char*,int ,int ,int ) ;
 int brcmf_dbg_hex_dump (int ,void*,int ,char*) ;
 int brcmf_fil_cmd_data (struct brcmf_if*,int ,void*,int ,int) ;
 int min_t (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uint ;

s32
brcmf_fil_cmd_data_set(struct brcmf_if *ifp, u32 cmd, void *data, u32 len)
{
 s32 err;

 mutex_lock(&ifp->drvr->proto_block);

 brcmf_dbg(FIL, "ifidx=%d, cmd=%d, len=%d\n", ifp->ifidx, cmd, len);
 brcmf_dbg_hex_dump(BRCMF_FIL_ON(), data,
      min_t(uint, len, MAX_HEX_DUMP_LEN), "data\n");

 err = brcmf_fil_cmd_data(ifp, cmd, data, len, 1);
 mutex_unlock(&ifp->drvr->proto_block);

 return err;
}
