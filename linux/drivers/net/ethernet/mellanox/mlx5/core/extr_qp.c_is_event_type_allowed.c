
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;




 int WARN (int,char*) ;
 int dct_allowed_event_types () ;
 int qp_allowed_event_types () ;
 int rq_allowed_event_types () ;
 int sq_allowed_event_types () ;

__attribute__((used)) static bool is_event_type_allowed(int rsc_type, int event_type)
{
 switch (rsc_type) {
 case 130:
  return BIT(event_type) & qp_allowed_event_types();
 case 129:
  return BIT(event_type) & rq_allowed_event_types();
 case 128:
  return BIT(event_type) & sq_allowed_event_types();
 case 131:
  return BIT(event_type) & dct_allowed_event_types();
 default:
  WARN(1, "Event arrived for unknown resource type");
  return 0;
 }
}
