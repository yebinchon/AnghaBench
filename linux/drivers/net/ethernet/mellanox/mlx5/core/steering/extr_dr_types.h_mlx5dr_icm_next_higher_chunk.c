
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5dr_icm_chunk_size { ____Placeholder_mlx5dr_icm_chunk_size } mlx5dr_icm_chunk_size ;


 int DR_CHUNK_SIZE_MAX ;

__attribute__((used)) static inline enum mlx5dr_icm_chunk_size
mlx5dr_icm_next_higher_chunk(enum mlx5dr_icm_chunk_size chunk)
{
 chunk += 2;
 if (chunk < DR_CHUNK_SIZE_MAX)
  return chunk;

 return DR_CHUNK_SIZE_MAX;
}
