
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; int description; int flags; int type; int index; } ;


 int pr_cont (char*,int ,int ,int ,int,int,int,int,int,int ) ;
 int prt_names (int ,int ) ;
 int v4l2_type_names ;

__attribute__((used)) static void v4l_print_fmtdesc(const void *arg, bool write_only)
{
 const struct v4l2_fmtdesc *p = arg;

 pr_cont("index=%u, type=%s, flags=0x%x, pixelformat=%c%c%c%c, description='%.*s'\n",
  p->index, prt_names(p->type, v4l2_type_names),
  p->flags, (p->pixelformat & 0xff),
  (p->pixelformat >> 8) & 0xff,
  (p->pixelformat >> 16) & 0xff,
  (p->pixelformat >> 24) & 0xff,
  (int)sizeof(p->description), p->description);
}
