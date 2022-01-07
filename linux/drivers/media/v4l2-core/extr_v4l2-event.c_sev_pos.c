
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subscribed_event {unsigned int first; unsigned int elems; } ;



__attribute__((used)) static unsigned sev_pos(const struct v4l2_subscribed_event *sev, unsigned idx)
{
 idx += sev->first;
 return idx >= sev->elems ? idx - sev->elems : idx;
}
