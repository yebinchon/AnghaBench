
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2680_dev {int dummy; } ;


 int OV2680_REG_STREAM_CTRL ;
 int ov2680_write_reg (struct ov2680_dev*,int ,int) ;

__attribute__((used)) static int ov2680_stream_enable(struct ov2680_dev *sensor)
{
 return ov2680_write_reg(sensor, OV2680_REG_STREAM_CTRL, 1);
}
