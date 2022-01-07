
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int HIGHEST_SINGLE_STREAM_MCS ;

__attribute__((used)) static inline bool is_single_stream(u8 mcs)
{
 return mcs <= HIGHEST_SINGLE_STREAM_MCS || mcs == 32;
}
