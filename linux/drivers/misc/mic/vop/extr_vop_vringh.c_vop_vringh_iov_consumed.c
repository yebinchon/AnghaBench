
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vringh_kiov {int i; TYPE_1__* iov; int consumed; } ;
struct TYPE_2__ {scalar_t__ iov_len; } ;



__attribute__((used)) static inline u32 vop_vringh_iov_consumed(struct vringh_kiov *iov)
{
 int i;
 u32 total = iov->consumed;

 for (i = 0; i < iov->i; i++)
  total += iov->iov[i].iov_len;
 return total;
}
