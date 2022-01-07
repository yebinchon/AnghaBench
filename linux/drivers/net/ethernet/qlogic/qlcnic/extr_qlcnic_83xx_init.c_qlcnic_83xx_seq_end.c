
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_3__ {int seq_end; } ;
struct TYPE_4__ {TYPE_1__ reset; } ;



__attribute__((used)) static inline void qlcnic_83xx_seq_end(struct qlcnic_adapter *p_dev)
{
 p_dev->ahw->reset.seq_end = 1;
}
