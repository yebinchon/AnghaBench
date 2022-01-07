
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_lite {int state; TYPE_1__* test_pattern; int out_frame; int inp_frame; } ;
struct TYPE_2__ {int val; } ;


 int ST_FLITE_CONFIG ;
 int clear_bit (int ,int *) ;
 int flite_hw_set_dma_window (struct fimc_lite*,int *) ;
 int flite_hw_set_test_pattern (struct fimc_lite*,int ) ;
 int flite_hw_set_window_offset (struct fimc_lite*,int *) ;

__attribute__((used)) static void fimc_lite_config_update(struct fimc_lite *fimc)
{
 flite_hw_set_window_offset(fimc, &fimc->inp_frame);
 flite_hw_set_dma_window(fimc, &fimc->out_frame);
 flite_hw_set_test_pattern(fimc, fimc->test_pattern->val);
 clear_bit(ST_FLITE_CONFIG, &fimc->state);
}
