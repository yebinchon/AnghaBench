
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct tbnet_frame {TYPE_1__ frame; } ;


 unsigned int TBNET_FRAME_SIZE ;

__attribute__((used)) static inline unsigned int tbnet_frame_size(const struct tbnet_frame *tf)
{
 return tf->frame.size ? : TBNET_FRAME_SIZE;
}
