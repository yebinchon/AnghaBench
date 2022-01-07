
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OFDPA_OP_FLAG_NOWAIT ;

__attribute__((used)) static bool ofdpa_flags_nowait(int flags)
{
 return flags & OFDPA_OP_FLAG_NOWAIT;
}
