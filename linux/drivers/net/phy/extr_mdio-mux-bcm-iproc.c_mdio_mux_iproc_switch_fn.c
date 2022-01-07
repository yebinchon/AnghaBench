
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_mdiomux_desc {scalar_t__ base; } ;


 int EXT_BUS_START_ADDR ;
 int MDIO_PARAM_BUS_ID ;
 int MDIO_PARAM_INTERNAL_SEL ;
 scalar_t__ MDIO_PARAM_OFFSET ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mdio_mux_iproc_switch_fn(int current_child, int desired_child,
        void *data)
{
 struct iproc_mdiomux_desc *md = data;
 u32 param, bus_id;
 bool bus_dir;


 bus_dir = (desired_child < EXT_BUS_START_ADDR);
 bus_id = bus_dir ? desired_child : (desired_child - EXT_BUS_START_ADDR);

 param = (bus_dir ? 1 : 0) << MDIO_PARAM_INTERNAL_SEL;
 param |= (bus_id << MDIO_PARAM_BUS_ID);

 writel(param, md->base + MDIO_PARAM_OFFSET);
 return 0;
}
