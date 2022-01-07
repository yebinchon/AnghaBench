
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int flags; } ;


 int CF_CONFIG_NEEDED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int mcam_needs_config(struct mcam_camera *cam)
{
 return test_bit(CF_CONFIG_NEEDED, &cam->flags);
}
