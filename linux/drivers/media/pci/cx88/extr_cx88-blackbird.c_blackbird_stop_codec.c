
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx8802_dev {int cxhdl; } ;


 int BLACKBIRD_END_NOW ;
 int BLACKBIRD_MPEG_CAPTURE ;
 int BLACKBIRD_RAW_BITS_NONE ;
 int CX2341X_ENC_STOP_CAPTURE ;
 int blackbird_api_cmd (struct cx8802_dev*,int ,int,int ,int ,int ,int ) ;
 int cx2341x_handler_set_busy (int *,int ) ;

__attribute__((used)) static int blackbird_stop_codec(struct cx8802_dev *dev)
{
 blackbird_api_cmd(dev, CX2341X_ENC_STOP_CAPTURE, 3, 0,
     BLACKBIRD_END_NOW,
     BLACKBIRD_MPEG_CAPTURE,
     BLACKBIRD_RAW_BITS_NONE);

 cx2341x_handler_set_busy(&dev->cxhdl, 0);

 return 0;
}
