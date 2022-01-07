
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ authType; scalar_t__* rates; } ;
struct airo_info {TYPE_1__ config; } ;


 scalar_t__ AUTH_OPEN ;
 scalar_t__ maxencrypt ;

__attribute__((used)) static inline void checkThrottle(struct airo_info *ai)
{
 int i;

 if (ai->config.authType != AUTH_OPEN && maxencrypt) {
  for(i=0; i<8; i++) {
   if (ai->config.rates[i] > maxencrypt) {
    ai->config.rates[i] = 0;
   }
  }
 }
}
