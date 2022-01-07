
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __be16 ;



__attribute__((used)) static inline bool stage_session(__be16 sid)
{
 return sid != 0;
}
