
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct de_private {int dummy; } ;


 int MacStatus ;
 int RxState ;
 int TxState ;
 int dr32 (int ) ;

__attribute__((used)) static inline int de_is_running (struct de_private *de)
{
 return (dr32(MacStatus) & (RxState | TxState)) ? 1 : 0;
}
