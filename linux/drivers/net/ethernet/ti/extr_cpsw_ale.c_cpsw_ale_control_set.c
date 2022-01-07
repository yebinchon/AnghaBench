
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ale_ports; scalar_t__ ale_regs; } ;
struct cpsw_ale {TYPE_1__ params; } ;
struct ale_control_info {int port_offset; int port_shift; int offset; int shift; int bits; } ;


 int ARRAY_SIZE (struct ale_control_info*) ;
 int BITMASK (int ) ;
 int EINVAL ;
 struct ale_control_info* ale_controls ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

int cpsw_ale_control_set(struct cpsw_ale *ale, int port, int control,
    int value)
{
 const struct ale_control_info *info;
 int offset, shift;
 u32 tmp, mask;

 if (control < 0 || control >= ARRAY_SIZE(ale_controls))
  return -EINVAL;

 info = &ale_controls[control];
 if (info->port_offset == 0 && info->port_shift == 0)
  port = 0;

 if (port < 0 || port >= ale->params.ale_ports)
  return -EINVAL;

 mask = BITMASK(info->bits);
 if (value & ~mask)
  return -EINVAL;

 offset = info->offset + (port * info->port_offset);
 shift = info->shift + (port * info->port_shift);

 tmp = readl_relaxed(ale->params.ale_regs + offset);
 tmp = (tmp & ~(mask << shift)) | (value << shift);
 writel_relaxed(tmp, ale->params.ale_regs + offset);

 return 0;
}
