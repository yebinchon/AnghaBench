
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SPECTRAL_HT20_NUM_BINS ;
 int spectral_max_index (int *,int ) ;

__attribute__((used)) static inline u8 spectral_max_index_ht20(u8 *bins)
{
 return spectral_max_index(bins, SPECTRAL_HT20_NUM_BINS);
}
