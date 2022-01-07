
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct spi_device {int dev; } ;
struct TYPE_2__ {scalar_t__ status; scalar_t__ u8param; } ;
struct mac_message {scalar_t__ command_id; int length; TYPE_1__ pdata; } ;


 scalar_t__ CA8210_MAC_WORKAROUNDS ;
 int CA8210_SFR_MACCON ;
 scalar_t__ MAC_SYSTEM_ERROR ;
 scalar_t__ SPI_MLME_RESET_CONFIRM ;
 scalar_t__ SPI_MLME_RESET_REQUEST ;
 scalar_t__ cascoda_api_downstream (scalar_t__*,int,scalar_t__*,void*) ;
 int dev_err (int *,char*) ;
 scalar_t__ tdme_setsfr_request_sync (int ,int ,int ,void*) ;

__attribute__((used)) static u8 mlme_reset_request_sync(
 u8 set_default_pib,
 void *device_ref
)
{
 u8 status;
 struct mac_message command, response;
 struct spi_device *spi = device_ref;

 command.command_id = SPI_MLME_RESET_REQUEST;
 command.length = 1;
 command.pdata.u8param = set_default_pib;

 if (cascoda_api_downstream(
  &command.command_id,
  command.length + 2,
  &response.command_id,
  device_ref)) {
  dev_err(&spi->dev, "cascoda_api_downstream failed\n");
  return MAC_SYSTEM_ERROR;
 }

 if (response.command_id != SPI_MLME_RESET_CONFIRM)
  return MAC_SYSTEM_ERROR;

 status = response.pdata.status;


 if (CA8210_MAC_WORKAROUNDS && set_default_pib && !status) {
  status = tdme_setsfr_request_sync(
   0,
   CA8210_SFR_MACCON,
   0,
   device_ref
  );
 }

 return status;
}
