
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_mbus_framefmt {int width; int height; int code; } ;
struct csis_state {TYPE_1__* csis_fmt; int sd; struct v4l2_mbus_framefmt format; } ;
struct TYPE_2__ {int fmt_reg; } ;


 int S5PCSIS_CFG_FMT_MASK ;
 int S5PCSIS_CONFIG ;
 int S5PCSIS_RESOL ;
 int debug ;
 int s5pcsis_read (struct csis_state*,int ) ;
 int s5pcsis_write (struct csis_state*,int ,int) ;
 int v4l2_dbg (int,int ,int *,char*,int ,int,int) ;

__attribute__((used)) static void __s5pcsis_set_format(struct csis_state *state)
{
 struct v4l2_mbus_framefmt *mf = &state->format;
 u32 val;

 v4l2_dbg(1, debug, &state->sd, "fmt: %#x, %d x %d\n",
   mf->code, mf->width, mf->height);


 val = s5pcsis_read(state, S5PCSIS_CONFIG);
 val = (val & ~S5PCSIS_CFG_FMT_MASK) | state->csis_fmt->fmt_reg;
 s5pcsis_write(state, S5PCSIS_CONFIG, val);


 val = (mf->width << 16) | mf->height;
 s5pcsis_write(state, S5PCSIS_RESOL, val);
}
