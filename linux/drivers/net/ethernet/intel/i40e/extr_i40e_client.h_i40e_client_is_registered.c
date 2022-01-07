
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_client {int state; } ;


 int __I40E_CLIENT_REGISTERED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool i40e_client_is_registered(struct i40e_client *client)
{
 return test_bit(__I40E_CLIENT_REGISTERED, &client->state);
}
