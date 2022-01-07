
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mxb {int tea6420_2; int tea6420_1; } ;
struct TYPE_4__ {int output; int input; } ;
struct TYPE_3__ {int output; int input; } ;


 TYPE_2__** TEA6420_cd ;
 TYPE_1__** TEA6420_line ;
 int audio ;
 int s_routing ;
 int v4l2_subdev_call (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void tea6420_route(struct mxb *mxb, int idx)
{
 v4l2_subdev_call(mxb->tea6420_1, audio, s_routing,
  TEA6420_cd[idx][0].input, TEA6420_cd[idx][0].output, 0);
 v4l2_subdev_call(mxb->tea6420_2, audio, s_routing,
  TEA6420_cd[idx][1].input, TEA6420_cd[idx][1].output, 0);
 v4l2_subdev_call(mxb->tea6420_1, audio, s_routing,
  TEA6420_line[idx][0].input, TEA6420_line[idx][0].output, 0);
 v4l2_subdev_call(mxb->tea6420_2, audio, s_routing,
  TEA6420_line[idx][1].input, TEA6420_line[idx][1].output, 0);
}
