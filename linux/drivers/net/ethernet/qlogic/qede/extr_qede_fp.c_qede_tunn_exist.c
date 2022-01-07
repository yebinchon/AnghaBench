
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PARSING_AND_ERR_FLAGS_TUNNELEXIST_MASK ;
 int PARSING_AND_ERR_FLAGS_TUNNELEXIST_SHIFT ;

__attribute__((used)) static bool qede_tunn_exist(u16 flag)
{
 return !!(flag & (PARSING_AND_ERR_FLAGS_TUNNELEXIST_MASK <<
     PARSING_AND_ERR_FLAGS_TUNNELEXIST_SHIFT));
}
