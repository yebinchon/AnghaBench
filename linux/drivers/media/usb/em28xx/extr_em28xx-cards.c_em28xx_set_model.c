
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int def_i2c_bus; int is_webcam; int has_msp34xx; } ;
struct em28xx {size_t model; TYPE_1__ board; int def_i2c_bus; int is_webcam; int has_msp34xx; } ;


 TYPE_1__* em28xx_boards ;
 int em28xx_set_xclk_i2c_speed (struct em28xx*) ;

__attribute__((used)) static inline void em28xx_set_model(struct em28xx *dev)
{
 dev->board = em28xx_boards[dev->model];
 dev->has_msp34xx = dev->board.has_msp34xx;
 dev->is_webcam = dev->board.is_webcam;

 em28xx_set_xclk_i2c_speed(dev);


 dev->def_i2c_bus = dev->board.def_i2c_bus;
}
