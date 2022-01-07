
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_tgh_local_shift; } ;


 int uv_blade_processor_id () ;

__attribute__((used)) static inline int get_on_blade_tgh(struct gru_state *gru)
{
 return uv_blade_processor_id() >> gru->gs_tgh_local_shift;
}
