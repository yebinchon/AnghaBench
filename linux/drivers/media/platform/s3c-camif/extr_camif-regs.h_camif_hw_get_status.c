
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct camif_vp {int offset; int id; TYPE_1__* camif; } ;
struct TYPE_2__ {scalar_t__ io_base; } ;


 scalar_t__ S3C_CAMIF_REG_CISTATUS (int ,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 camif_hw_get_status(struct camif_vp *vp)
{
 return readl(vp->camif->io_base + S3C_CAMIF_REG_CISTATUS(vp->id,
        vp->offset));
}
