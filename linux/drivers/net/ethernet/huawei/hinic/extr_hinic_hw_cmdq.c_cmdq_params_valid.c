
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_cmdq_buf {scalar_t__ size; } ;


 int EINVAL ;
 scalar_t__ HINIC_CMDQ_MAX_DATA_SIZE ;

__attribute__((used)) static int cmdq_params_valid(struct hinic_cmdq_buf *buf_in)
{
 if (buf_in->size > HINIC_CMDQ_MAX_DATA_SIZE)
  return -EINVAL;

 return 0;
}
