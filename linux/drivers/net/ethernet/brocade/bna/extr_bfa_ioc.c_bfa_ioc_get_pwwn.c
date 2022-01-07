
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct bfa_ioc {TYPE_1__* attr; } ;
struct TYPE_2__ {int pwwn; } ;



__attribute__((used)) static u64
bfa_ioc_get_pwwn(struct bfa_ioc *ioc)
{
 return ioc->attr->pwwn;
}
