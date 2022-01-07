
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EXT_EVENT ;

__attribute__((used)) static inline u16 exts_chan_to_edata(int ch)
{
 return 1 << ((ch + EXT_EVENT) * 2);
}
