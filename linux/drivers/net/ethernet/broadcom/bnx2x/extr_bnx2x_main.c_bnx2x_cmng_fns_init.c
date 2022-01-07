
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int cmng_enables; } ;
struct cmng_init_input {TYPE_2__ flags; scalar_t__ port_rate; } ;
struct TYPE_4__ {scalar_t__ pmf; } ;
struct TYPE_6__ {scalar_t__ line_speed; } ;
struct bnx2x {int cmng; TYPE_1__ port; TYPE_3__ link_vars; } ;


 int BP_MAX_VN_NUM (struct bnx2x*) ;
 int CMNG_FLAGS_PER_PORT_RATE_SHAPING_VN ;
 scalar_t__ CMNG_FNS_MINMAX ;
 int DP (int ,char*) ;
 int NETIF_MSG_IFUP ;
 int VN_0 ;
 int bnx2x_calc_vn_max (struct bnx2x*,int,struct cmng_init_input*) ;
 int bnx2x_calc_vn_min (struct bnx2x*,struct cmng_init_input*) ;
 int bnx2x_init_cmng (struct cmng_init_input*,int *) ;
 int bnx2x_read_mf_cfg (struct bnx2x*) ;
 int memset (struct cmng_init_input*,int ,int) ;

__attribute__((used)) static void bnx2x_cmng_fns_init(struct bnx2x *bp, u8 read_cfg, u8 cmng_type)
{
 struct cmng_init_input input;
 memset(&input, 0, sizeof(struct cmng_init_input));

 input.port_rate = bp->link_vars.line_speed;

 if (cmng_type == CMNG_FNS_MINMAX && input.port_rate) {
  int vn;


  if (read_cfg)
   bnx2x_read_mf_cfg(bp);


  bnx2x_calc_vn_min(bp, &input);


  if (bp->port.pmf)
   for (vn = VN_0; vn < BP_MAX_VN_NUM(bp); vn++)
    bnx2x_calc_vn_max(bp, vn, &input);


  input.flags.cmng_enables |=
     CMNG_FLAGS_PER_PORT_RATE_SHAPING_VN;

  bnx2x_init_cmng(&input, &bp->cmng);
  return;
 }


 DP(NETIF_MSG_IFUP,
    "rate shaping and fairness are disabled\n");
}
