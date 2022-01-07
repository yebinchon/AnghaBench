
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
typedef enum osd_pix_format { ____Placeholder_osd_pix_format } osd_pix_format ;


 int OSD_MODE ;
 int OSD_MODE_CS ;
 int PIXFMT_YCBCRI ;
 int PIXFMT_YCRCBI ;
 int osd_clear (struct osd_state*,int ,int ) ;
 int osd_set (struct osd_state*,int ,int ) ;

__attribute__((used)) static void _osd_set_cbcr_order(struct osd_state *sd,
    enum osd_pix_format pixfmt)
{




 if (pixfmt == PIXFMT_YCBCRI)
  osd_clear(sd, OSD_MODE_CS, OSD_MODE);
 else if (pixfmt == PIXFMT_YCRCBI)
  osd_set(sd, OSD_MODE_CS, OSD_MODE);
}
