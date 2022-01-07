
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int send_fifobar; } ;
struct ccb {TYPE_1__ ccb_u1; } ;
struct TYPE_4__ {int reset; } ;


 TYPE_2__* FIFOBARTOHANDLE (int ) ;

__attribute__((used)) static inline void set_channel_reset(struct ccb *ccb)
{

 FIFOBARTOHANDLE(ccb->ccb_u1.send_fifobar)->reset = 1;
}
