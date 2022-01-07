
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_slaves_pport {int slaves; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
typedef enum slave_port_gen_event { ____Placeholder_slave_port_gen_event } slave_port_gen_event ;
struct TYPE_2__ {int num_vfs; } ;


 struct mlx4_slaves_pport mlx4_phys_to_slaves_pport (struct mlx4_dev*,int ) ;
 int set_and_calc_slave_port_state (struct mlx4_dev*,int,int ,int,int*) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void set_all_slave_state(struct mlx4_dev *dev, u8 port, int event)
{
 int i;
 enum slave_port_gen_event gen_event;
 struct mlx4_slaves_pport slaves_pport = mlx4_phys_to_slaves_pport(dev,
           port);

 for (i = 0; i < dev->persist->num_vfs + 1; i++)
  if (test_bit(i, slaves_pport.slaves))
   set_and_calc_slave_port_state(dev, i, port,
            event, &gen_event);
}
