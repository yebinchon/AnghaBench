
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {int dummy; } ;
typedef enum ptp_pin_function { ____Placeholder_ptp_pin_function } ptp_pin_function ;


 int EOPNOTSUPP ;
 int PTP_PF_PHYSYNC ;

__attribute__((used)) static int mlx5_ptp_verify(struct ptp_clock_info *ptp, unsigned int pin,
      enum ptp_pin_function func, unsigned int chan)
{
 return (func == PTP_PF_PHYSYNC) ? -EOPNOTSUPP : 0;
}
