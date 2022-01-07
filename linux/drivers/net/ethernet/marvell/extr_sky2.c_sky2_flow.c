
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum flow_control { ____Placeholder_flow_control } flow_control ;


 int FC_BOTH ;
 int FC_NONE ;
 int FC_RX ;
 int FC_TX ;

__attribute__((used)) static enum flow_control sky2_flow(int rx, int tx)
{
 if (rx)
  return tx ? FC_BOTH : FC_RX;
 else
  return tx ? FC_TX : FC_NONE;
}
