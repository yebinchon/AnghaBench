
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ktime_t ;


 int ARIZONA_REG_POLL_DELAY_US ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline bool arizona_poll_reg_delay(ktime_t timeout)
{
 if (ktime_compare(ktime_get(), timeout) > 0)
  return 0;

 usleep_range(ARIZONA_REG_POLL_DELAY_US / 2, ARIZONA_REG_POLL_DELAY_US);

 return 1;
}
