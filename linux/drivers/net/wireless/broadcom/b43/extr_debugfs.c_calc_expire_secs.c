
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B43_WARN_ON (int) ;
 unsigned long HZ ;
 scalar_t__ MAX_JIFFY_OFFSET ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long calc_expire_secs(unsigned long now,
          unsigned long time,
          unsigned long expire)
{
 expire = time + expire;

 if (time_after(now, expire))
  return 0;
 if (expire < now) {

  expire -= MAX_JIFFY_OFFSET;
  now -= MAX_JIFFY_OFFSET;
 }
 B43_WARN_ON(expire < now);

 return (expire - now) / HZ;
}
