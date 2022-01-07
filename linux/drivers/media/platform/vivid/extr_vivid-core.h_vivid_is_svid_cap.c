
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {scalar_t__* input_type; size_t input; } ;


 scalar_t__ SVID ;

__attribute__((used)) static inline bool vivid_is_svid_cap(const struct vivid_dev *dev)
{
 return dev->input_type[dev->input] == SVID;
}
