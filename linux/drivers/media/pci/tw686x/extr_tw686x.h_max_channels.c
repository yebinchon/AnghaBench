
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {unsigned int type; } ;


 unsigned int TYPE_MAX_CHANNELS ;

__attribute__((used)) static inline unsigned int max_channels(struct tw686x_dev *dev)
{
 return dev->type & TYPE_MAX_CHANNELS;
}
