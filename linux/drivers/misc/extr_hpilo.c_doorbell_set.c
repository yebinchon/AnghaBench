
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db_base; } ;
struct ccb {TYPE_1__ ccb_u5; } ;


 int iowrite8 (int,int ) ;

__attribute__((used)) static inline void doorbell_set(struct ccb *ccb)
{
 iowrite8(1, ccb->ccb_u5.db_base);
}
