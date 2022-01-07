
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVR2_TRACE_STBITS ;
 int pvr2_trace (int ,char*,char const*,char*) ;

__attribute__((used)) static void trace_stbit(const char *name,int val)
{
 pvr2_trace(PVR2_TRACE_STBITS,
     "State bit %s <-- %s",
     name,(val ? "true" : "false"));
}
