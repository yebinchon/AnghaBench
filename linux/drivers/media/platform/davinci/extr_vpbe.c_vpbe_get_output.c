
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_device {unsigned int current_out_index; } ;



__attribute__((used)) static unsigned int vpbe_get_output(struct vpbe_device *vpbe_dev)
{
 return vpbe_dev->current_out_index;
}
