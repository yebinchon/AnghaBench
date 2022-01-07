
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_standard {int index; scalar_t__* name; int id; } ;


 int PVR2_TRACE_STD ;
 struct v4l2_standard* match_std (int ) ;
 int memcpy (struct v4l2_standard*,struct v4l2_standard*,int) ;
 unsigned int pvr2_std_id_to_str (scalar_t__*,int,int ) ;
 int pvr2_trace (int ,char*,int,scalar_t__*) ;

__attribute__((used)) static int pvr2_std_fill(struct v4l2_standard *std,v4l2_std_id id)
{
 struct v4l2_standard *template;
 int idx;
 unsigned int bcnt;
 template = match_std(id);
 if (!template) return 0;
 idx = std->index;
 memcpy(std,template,sizeof(*template));
 std->index = idx;
 std->id = id;
 bcnt = pvr2_std_id_to_str(std->name,sizeof(std->name)-1,id);
 std->name[bcnt] = 0;
 pvr2_trace(PVR2_TRACE_STD,"Set up standard idx=%u name=%s",
     std->index,std->name);
 return !0;
}
