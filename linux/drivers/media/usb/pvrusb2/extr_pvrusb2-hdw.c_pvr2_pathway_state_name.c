
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *pvr2_pathway_state_name(int id)
{
 switch (id) {
 case 129: return "analog";
 case 128: return "digital";
 default: return "unknown";
 }
}
