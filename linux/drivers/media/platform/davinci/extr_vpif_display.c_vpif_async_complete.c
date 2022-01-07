
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_notifier {int dummy; } ;


 int vpif_probe_complete () ;

__attribute__((used)) static int vpif_async_complete(struct v4l2_async_notifier *notifier)
{
 return vpif_probe_complete();
}
