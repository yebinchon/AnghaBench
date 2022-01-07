
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int __le16 ;


 scalar_t__ get_unaligned_le16 (int *) ;
 int put_unaligned_le16 (scalar_t__,int *) ;

__attribute__((used)) static inline void le16_unaligned_add_cpu(__le16 *var, u16 val)
{
 put_unaligned_le16(get_unaligned_le16(var) + val, var);
}
