
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct vfpf_first_tlv {TYPE_1__ tl; } ;
struct bnx2x {int vf2pf_mutex; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void bnx2x_vfpf_finalize(struct bnx2x *bp,
    struct vfpf_first_tlv *first_tlv)
{
 DP(BNX2X_MSG_IOV, "done sending [%d] tlv over vf pf channel\n",
    first_tlv->tl.type);

 mutex_unlock(&bp->vf2pf_mutex);
}
