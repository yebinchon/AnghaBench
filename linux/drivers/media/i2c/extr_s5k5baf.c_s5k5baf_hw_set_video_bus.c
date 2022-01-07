
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct s5k5baf {scalar_t__ bus_type; int nlanes; } ;


 scalar_t__ EN_PACKETS_CSI2 ;
 int REG_OIF_EN_MIPI_LANES ;
 scalar_t__ V4L2_MBUS_CSI2_DPHY ;
 int s5k5baf_clear_error (struct s5k5baf*) ;
 int s5k5baf_write_seq (struct s5k5baf*,int ,int ,scalar_t__,int) ;

__attribute__((used)) static int s5k5baf_hw_set_video_bus(struct s5k5baf *state)
{
 u16 en_pkts;

 if (state->bus_type == V4L2_MBUS_CSI2_DPHY)
  en_pkts = EN_PACKETS_CSI2;
 else
  en_pkts = 0;

 s5k5baf_write_seq(state, REG_OIF_EN_MIPI_LANES,
     state->nlanes, en_pkts, 1);

 return s5k5baf_clear_error(state);
}
