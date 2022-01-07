
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {scalar_t__* output_type; size_t output; } ;


 scalar_t__ SVID ;

__attribute__((used)) static inline bool vivid_is_svid_out(const struct vivid_dev *dev)
{
 return dev->output_type[dev->output] == SVID;
}
