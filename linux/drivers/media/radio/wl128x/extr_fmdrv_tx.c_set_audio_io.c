
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fmtx_data {int audio_io; } ;
struct fmdev {struct fmtx_data tx_data; } ;
typedef int payload ;


 int AUDIO_IO_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int *) ;

__attribute__((used)) static int set_audio_io(struct fmdev *fmdev)
{
 struct fmtx_data *tx = &fmdev->tx_data;
 u16 payload;
 int ret;


 payload = tx->audio_io;
 ret = fmc_send_cmd(fmdev, AUDIO_IO_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 return 0;
}
