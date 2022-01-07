
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cavium_ptp {int dummy; } ;


 int ENODEV ;
 struct cavium_ptp* ERR_PTR (int ) ;

__attribute__((used)) static inline struct cavium_ptp *cavium_ptp_get(void)
{
 return ERR_PTR(-ENODEV);
}
