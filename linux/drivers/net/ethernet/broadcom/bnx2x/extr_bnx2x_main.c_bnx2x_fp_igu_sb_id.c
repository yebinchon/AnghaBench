
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct bnx2x_fastpath {TYPE_1__* bp; scalar_t__ index; } ;
struct TYPE_2__ {scalar_t__ igu_base_sb; } ;


 scalar_t__ CNIC_SUPPORT (TYPE_1__*) ;

__attribute__((used)) static inline u8 bnx2x_fp_igu_sb_id(struct bnx2x_fastpath *fp)
{
 return fp->bp->igu_base_sb + fp->index + CNIC_SUPPORT(fp->bp);
}
