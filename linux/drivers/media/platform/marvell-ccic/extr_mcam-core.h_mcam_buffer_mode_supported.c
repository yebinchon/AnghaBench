
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mcam_buffer_mode { ____Placeholder_mcam_buffer_mode } mcam_buffer_mode ;






__attribute__((used)) static inline int mcam_buffer_mode_supported(enum mcam_buffer_mode mode)
{
 switch (mode) {
  return 1;
 default:
  return 0;
 }
}
