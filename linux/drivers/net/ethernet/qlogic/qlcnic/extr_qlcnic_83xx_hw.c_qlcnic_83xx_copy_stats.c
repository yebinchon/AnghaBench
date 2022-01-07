
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;



__attribute__((used)) static inline u64 *qlcnic_83xx_copy_stats(struct qlcnic_cmd_args *cmd,
       u64 *data, int index)
{
 u32 low, hi;
 u64 val;

 low = cmd->rsp.arg[index];
 hi = cmd->rsp.arg[index + 1];
 val = (((u64) low) | (((u64) hi) << 32));
 *data++ = val;
 return data;
}
