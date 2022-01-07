
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hnae3_client_type { ____Placeholder_hnae3_client_type } hnae3_client_type ;


 int HNAE3_CLIENT_KNIC ;
 int HNAE3_CLIENT_ROCE ;

__attribute__((used)) static bool hnae3_client_match(enum hnae3_client_type client_type)
{
 if (client_type == HNAE3_CLIENT_KNIC ||
     client_type == HNAE3_CLIENT_ROCE)
  return 1;

 return 0;
}
