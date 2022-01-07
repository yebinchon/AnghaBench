
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_NONE ;
 int PORT_OTHER ;
 int PORT_TP ;

__attribute__((used)) static int qed_get_port_type(u32 media_type)
{
 int port_type;

 switch (media_type) {
 case 131:
 case 130:
 case 128:
 case 133:
 case 134:
  port_type = PORT_FIBRE;
  break;
 case 135:
  port_type = PORT_DA;
  break;
 case 136:
  port_type = PORT_TP;
  break;
 case 132:
  port_type = PORT_NONE;
  break;
 case 129:
 default:
  port_type = PORT_OTHER;
  break;
 }
 return port_type;
}
