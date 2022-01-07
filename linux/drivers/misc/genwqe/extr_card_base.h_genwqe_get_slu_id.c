
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int slu_unitcfg; } ;



__attribute__((used)) static inline int genwqe_get_slu_id(struct genwqe_dev *cd)
{
 return (int)((cd->slu_unitcfg >> 32) & 0xff);
}
