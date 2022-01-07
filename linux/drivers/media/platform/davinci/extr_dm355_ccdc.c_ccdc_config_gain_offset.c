
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_mg; int gb_g; int gr_cy; int r_ye; } ;
struct TYPE_5__ {int ccdc_offset; TYPE_1__ gain; } ;
struct TYPE_6__ {TYPE_2__ bayer; } ;


 int BMGGAIN ;
 int GBGGAIN ;
 int GRCYGAIN ;
 int OFFSET ;
 int RYEGAIN ;
 TYPE_3__ ccdc_cfg ;
 int regw (int ,int ) ;

__attribute__((used)) static void ccdc_config_gain_offset(void)
{

 regw(ccdc_cfg.bayer.gain.r_ye, RYEGAIN);
 regw(ccdc_cfg.bayer.gain.gr_cy, GRCYGAIN);
 regw(ccdc_cfg.bayer.gain.gb_g, GBGGAIN);
 regw(ccdc_cfg.bayer.gain.b_mg, BMGGAIN);

 regw(ccdc_cfg.bayer.ccdc_offset, OFFSET);
}
