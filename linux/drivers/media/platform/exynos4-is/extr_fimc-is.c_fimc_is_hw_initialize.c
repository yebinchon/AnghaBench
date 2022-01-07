
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_10__ {scalar_t__ sub_index; int * size; int * base; } ;
struct TYPE_9__ {int paddr; } ;
struct TYPE_7__ {int setfile_info; } ;
struct fimc_is {int config_index; int state; TYPE_5__ setfile; int is_dma_p_region; TYPE_4__ memory; TYPE_3__* is_p_region; TYPE_2__ fw; int * sensor; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__* shared; } ;
struct TYPE_6__ {struct device dev; } ;


 int ARRAY_SIZE (int const*) ;
 int EIO ;
 int FIMC_IS_CONFIG_TIMEOUT ;
 scalar_t__ FIMC_IS_MAGIC_NUMBER ;
 int FIMC_IS_SETFILE_6A3 ;
 int FIMC_IS_SHARED_REGION_OFFSET ;




 int IS_ST_INIT_DONE ;
 int IS_ST_SETFILE_LOADED ;
 int IS_ST_STREAM_OFF ;
 int MAX_SHARED_COUNT ;
 int clear_bit (int ,int *) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int) ;
 int fimc_is_hw_get_setfile_addr (struct fimc_is*) ;
 int fimc_is_hw_load_setfile (struct fimc_is*) ;
 int fimc_is_hw_open_sensor (struct fimc_is*,int *) ;
 int fimc_is_hw_stream_off (struct fimc_is*) ;
 int fimc_is_itf_s_param (struct fimc_is*,int) ;
 int fimc_is_load_setfile (struct fimc_is*,int ) ;
 int fimc_is_set_initial_params (struct fimc_is*) ;
 int fimc_is_wait_event (struct fimc_is*,int ,int,int ) ;
 int pr_debug (char*,int *,...) ;
 int pr_info (char*,int ) ;
 int set_bit (int ,int *) ;

int fimc_is_hw_initialize(struct fimc_is *is)
{
 static const int config_ids[] = {
  129, 128,
  131, 130
 };
 struct device *dev = &is->pdev->dev;
 u32 prev_id;
 int i, ret;


 ret = fimc_is_hw_open_sensor(is, &is->sensor[0]);
 if (ret < 0)
  return ret;


 fimc_is_hw_get_setfile_addr(is);

 ret = fimc_is_wait_event(is, IS_ST_SETFILE_LOADED, 1,
     FIMC_IS_CONFIG_TIMEOUT);
 if (ret < 0) {
  dev_err(dev, "get setfile address timed out\n");
  return ret;
 }
 pr_debug("setfile.base: %#x\n", is->setfile.base);


 fimc_is_load_setfile(is, FIMC_IS_SETFILE_6A3);
 clear_bit(IS_ST_SETFILE_LOADED, &is->state);
 fimc_is_hw_load_setfile(is);
 ret = fimc_is_wait_event(is, IS_ST_SETFILE_LOADED, 1,
     FIMC_IS_CONFIG_TIMEOUT);
 if (ret < 0) {
  dev_err(dev, "loading setfile timed out\n");
  return ret;
 }

 pr_debug("setfile: base: %#x, size: %d\n",
   is->setfile.base, is->setfile.size);
 pr_info("FIMC-IS Setfile info: %s\n", is->fw.setfile_info);


 if (is->is_p_region->shared[MAX_SHARED_COUNT - 1] !=
     FIMC_IS_MAGIC_NUMBER) {
  dev_err(dev, "magic number error!\n");
  return -EIO;
 }

 pr_debug("shared region: %pad, parameter region: %pad\n",
   &is->memory.paddr + FIMC_IS_SHARED_REGION_OFFSET,
   &is->is_dma_p_region);

 is->setfile.sub_index = 0;


 fimc_is_hw_stream_off(is);
 ret = fimc_is_wait_event(is, IS_ST_STREAM_OFF, 1,
     FIMC_IS_CONFIG_TIMEOUT);
 if (ret < 0) {
  dev_err(dev, "stream off timeout\n");
  return ret;
 }


 prev_id = is->config_index;


 for (i = 0; i < ARRAY_SIZE(config_ids); i++) {
  is->config_index = config_ids[i];
  fimc_is_set_initial_params(is);
  ret = fimc_is_itf_s_param(is, 1);
  if (ret < 0) {
   is->config_index = prev_id;
   return ret;
  }
 }
 is->config_index = prev_id;

 set_bit(IS_ST_INIT_DONE, &is->state);
 dev_info(dev, "initialization sequence completed (%d)\n",
      is->config_index);
 return 0;
}
