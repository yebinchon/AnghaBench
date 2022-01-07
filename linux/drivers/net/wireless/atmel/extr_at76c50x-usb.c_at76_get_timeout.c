
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfu_status {int* poll_timeout; } ;


 unsigned long msecs_to_jiffies (int) ;

__attribute__((used)) static inline unsigned long at76_get_timeout(struct dfu_status *s)
{
 return msecs_to_jiffies((s->poll_timeout[2] << 16)
    | (s->poll_timeout[1] << 8)
    | (s->poll_timeout[0]));
}
