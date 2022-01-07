
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int is_privileged; } ;



__attribute__((used)) static inline int genwqe_is_privileged(struct genwqe_dev *cd)
{
 return cd->is_privileged;
}
