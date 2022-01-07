; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_drv_info_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_drv_info_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i8*, i64, i32, i32, %struct.mwifiex_private**, %struct.TYPE_5__, i64, i32, i32 }
%struct.mwifiex_private = type { i32, %struct.TYPE_7__*, i32, i32* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.mwifiex_adapter.0*, i8*)* }
%struct.mwifiex_adapter.0 = type opaque
%struct.usb_card_rec = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sdio_mmc_card = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.mwifiex_debug_info = type { i32 }

@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"===mwifiex driverinfo dump start===\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"========Start dump driverinfo========\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"driver_name = \22mwifiex\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"driver_version = %s\0A\00", align 1
@MWIFIEX_USB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"tx_cmd_urb_pending = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"tx_data_urb_pending_port_0 = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"tx_data_urb_pending_port_1 = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"rx_cmd_urb_pending = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"rx_data_urb_pending = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"tx_pending = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"rx_pending = %d\0A\00", align 1
@MWIFIEX_SDIO = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"\0Amp_rd_bitmap=0x%x curr_rd_port=0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"mp_wr_bitmap=0x%x curr_wr_port=0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\0A[interface  : \22%s\22]\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"wmm_tx_pending[0] = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"wmm_tx_pending[1] = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"wmm_tx_pending[2] = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"wmm_tx_pending[3] = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"media_state=\22%s\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Disconnected\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"carrier %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"tx queue %d:%s  \00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"started\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"\0A%s: num_tx_timeout = %d\0A\00", align 1
@MWIFIEX_PCIE = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [26 x i8] c"\0A=== %s register dump===\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"SDIO\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"PCIE\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"\0A=== more debug information\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [27 x i8] c"\0A========End dump========\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"===mwifiex driverinfo dump end===\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_drv_info_dump(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.usb_card_rec*, align 8
  %6 = alloca %struct.sdio_mmc_card*, align 8
  %7 = alloca %struct.mwifiex_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca %struct.mwifiex_debug_info*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %13 = load i32, i32* @MSG, align 4
  %14 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %12, i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @strlen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %3, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i8*, i8** %3, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %3, align 8
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %31 = call i32 @mwifiex_drv_get_driver_version(%struct.mwifiex_adapter* %29, i8* %30, i32 63)
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %3, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %3, align 8
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MWIFIEX_USB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %1
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %47, %struct.usb_card_rec** %5, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %50 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %49, i32 0, i32 3
  %51 = call i32 @atomic_read(i32* %50)
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %58 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @atomic_read(i32* %61)
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i8*, i8** %3, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %3, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %69 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @atomic_read(i32* %72)
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** %3, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %3, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %80 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %79, i32 0, i32 1
  %81 = call i32 @atomic_read(i32* %80)
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = load i8*, i8** %3, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %3, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %88 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %87, i32 0, i32 0
  %89 = call i32 @atomic_read(i32* %88)
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %3, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %43, %1
  %95 = load i8*, i8** %3, align 8
  %96 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %96, i32 0, i32 8
  %98 = call i32 @atomic_read(i32* %97)
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %98)
  %100 = load i8*, i8** %3, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %3, align 8
  %103 = load i8*, i8** %3, align 8
  %104 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %104, i32 0, i32 7
  %106 = call i32 @atomic_read(i32* %105)
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %106)
  %108 = load i8*, i8** %3, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %3, align 8
  %111 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MWIFIEX_SDIO, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %143

116:                                              ; preds = %94
  %117 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %118 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.sdio_mmc_card*
  store %struct.sdio_mmc_card* %120, %struct.sdio_mmc_card** %6, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %123 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %126 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %124, i32 %127)
  %129 = load i8*, i8** %3, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %3, align 8
  %132 = load i8*, i8** %3, align 8
  %133 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %134 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %137 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %135, i32 %138)
  %140 = load i8*, i8** %3, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %3, align 8
  br label %143

143:                                              ; preds = %116, %94
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %295, %143
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %147 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %298

150:                                              ; preds = %144
  %151 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %152 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %151, i32 0, i32 4
  %153 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %153, i64 %155
  %157 = load %struct.mwifiex_private*, %struct.mwifiex_private** %156, align 8
  %158 = icmp ne %struct.mwifiex_private* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %150
  %160 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %161 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %160, i32 0, i32 4
  %162 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %162, i64 %164
  %166 = load %struct.mwifiex_private*, %struct.mwifiex_private** %165, align 8
  %167 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = icmp ne %struct.TYPE_7__* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %159, %150
  br label %295

171:                                              ; preds = %159
  %172 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %173 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %172, i32 0, i32 4
  %174 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %174, i64 %176
  %178 = load %struct.mwifiex_private*, %struct.mwifiex_private** %177, align 8
  store %struct.mwifiex_private* %178, %struct.mwifiex_private** %7, align 8
  %179 = load i8*, i8** %3, align 8
  %180 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %181 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %180, i32 0, i32 1
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %184)
  %186 = load i8*, i8** %3, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %3, align 8
  %189 = load i8*, i8** %3, align 8
  %190 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %191 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = call i32 @atomic_read(i32* %193)
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* %189, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %194)
  %196 = load i8*, i8** %3, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8* %198, i8** %3, align 8
  %199 = load i8*, i8** %3, align 8
  %200 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %201 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = call i32 @atomic_read(i32* %203)
  %205 = call i32 (i8*, i8*, ...) @sprintf(i8* %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %204)
  %206 = load i8*, i8** %3, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8* %208, i8** %3, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %211 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  %214 = call i32 @atomic_read(i32* %213)
  %215 = call i32 (i8*, i8*, ...) @sprintf(i8* %209, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %214)
  %216 = load i8*, i8** %3, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  store i8* %218, i8** %3, align 8
  %219 = load i8*, i8** %3, align 8
  %220 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %221 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  %224 = call i32 @atomic_read(i32* %223)
  %225 = call i32 (i8*, i8*, ...) @sprintf(i8* %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %224)
  %226 = load i8*, i8** %3, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8* %228, i8** %3, align 8
  %229 = load i8*, i8** %3, align 8
  %230 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %231 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)
  %237 = call i32 (i8*, i8*, ...) @sprintf(i8* %229, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %236)
  %238 = load i8*, i8** %3, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %3, align 8
  %241 = load i8*, i8** %3, align 8
  %242 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %243 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %242, i32 0, i32 1
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = call i64 @netif_carrier_ok(%struct.TYPE_7__* %244)
  %246 = icmp ne i64 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)
  %249 = call i32 (i8*, i8*, ...) @sprintf(i8* %241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* %248)
  %250 = load i8*, i8** %3, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8* %252, i8** %3, align 8
  store i32 0, i32* %9, align 4
  br label %253

253:                                              ; preds = %278, %171
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %256 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %255, i32 0, i32 1
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %254, %259
  br i1 %260, label %261, label %281

261:                                              ; preds = %253
  %262 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %263 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %262, i32 0, i32 1
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_7__* %264, i32 %265)
  store %struct.netdev_queue* %266, %struct.netdev_queue** %10, align 8
  %267 = load i8*, i8** %3, align 8
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %270 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %269)
  %271 = icmp ne i64 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)
  %274 = call i32 (i8*, i8*, ...) @sprintf(i8* %267, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %268, i8* %273)
  %275 = load i8*, i8** %3, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8* %277, i8** %3, align 8
  br label %278

278:                                              ; preds = %261
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %9, align 4
  br label %253

281:                                              ; preds = %253
  %282 = load i8*, i8** %3, align 8
  %283 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %284 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %283, i32 0, i32 1
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %289 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (i8*, i8*, ...) @sprintf(i8* %282, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8* %287, i32 %290)
  %292 = load i8*, i8** %3, align 8
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i8, i8* %292, i64 %293
  store i8* %294, i8** %3, align 8
  br label %295

295:                                              ; preds = %281, %170
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %144

298:                                              ; preds = %144
  %299 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %300 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @MWIFIEX_SDIO, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %310, label %304

304:                                              ; preds = %298
  %305 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %306 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @MWIFIEX_PCIE, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %341

310:                                              ; preds = %304, %298
  %311 = load i8*, i8** %3, align 8
  %312 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %313 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @MWIFIEX_SDIO, align 8
  %316 = icmp eq i64 %314, %315
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)
  %319 = call i32 (i8*, i8*, ...) @sprintf(i8* %311, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i8* %318)
  %320 = load i8*, i8** %3, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8* %322, i8** %3, align 8
  %323 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %324 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  %326 = load i32 (%struct.mwifiex_adapter.0*, i8*)*, i32 (%struct.mwifiex_adapter.0*, i8*)** %325, align 8
  %327 = icmp ne i32 (%struct.mwifiex_adapter.0*, i8*)* %326, null
  br i1 %327, label %328, label %340

328:                                              ; preds = %310
  %329 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %330 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  %332 = load i32 (%struct.mwifiex_adapter.0*, i8*)*, i32 (%struct.mwifiex_adapter.0*, i8*)** %331, align 8
  %333 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %334 = bitcast %struct.mwifiex_adapter* %333 to %struct.mwifiex_adapter.0*
  %335 = load i8*, i8** %3, align 8
  %336 = call i32 %332(%struct.mwifiex_adapter.0* %334, i8* %335)
  %337 = load i8*, i8** %3, align 8
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds i8, i8* %337, i64 %338
  store i8* %339, i8** %3, align 8
  br label %340

340:                                              ; preds = %328, %310
  br label %341

341:                                              ; preds = %340, %304
  %342 = load i8*, i8** %3, align 8
  %343 = call i32 (i8*, i8*, ...) @sprintf(i8* %342, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  %344 = load i8*, i8** %3, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i8, i8* %344, i64 %345
  store i8* %346, i8** %3, align 8
  %347 = load i32, i32* @GFP_KERNEL, align 4
  %348 = call %struct.mwifiex_debug_info* @kzalloc(i32 4, i32 %347)
  store %struct.mwifiex_debug_info* %348, %struct.mwifiex_debug_info** %11, align 8
  %349 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %11, align 8
  %350 = icmp ne %struct.mwifiex_debug_info* %349, null
  br i1 %350, label %351, label %403

351:                                              ; preds = %341
  store i32 0, i32* %8, align 4
  br label %352

352:                                              ; preds = %397, %351
  %353 = load i32, i32* %8, align 4
  %354 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %355 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %400

358:                                              ; preds = %352
  %359 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %360 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %359, i32 0, i32 4
  %361 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %360, align 8
  %362 = load i32, i32* %8, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %361, i64 %363
  %365 = load %struct.mwifiex_private*, %struct.mwifiex_private** %364, align 8
  %366 = icmp ne %struct.mwifiex_private* %365, null
  br i1 %366, label %367, label %378

367:                                              ; preds = %358
  %368 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %369 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %368, i32 0, i32 4
  %370 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %369, align 8
  %371 = load i32, i32* %8, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %370, i64 %372
  %374 = load %struct.mwifiex_private*, %struct.mwifiex_private** %373, align 8
  %375 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %374, i32 0, i32 1
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %375, align 8
  %377 = icmp ne %struct.TYPE_7__* %376, null
  br i1 %377, label %379, label %378

378:                                              ; preds = %367, %358
  br label %397

379:                                              ; preds = %367
  %380 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %381 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %380, i32 0, i32 4
  %382 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %381, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %382, i64 %384
  %386 = load %struct.mwifiex_private*, %struct.mwifiex_private** %385, align 8
  store %struct.mwifiex_private* %386, %struct.mwifiex_private** %7, align 8
  %387 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %388 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %11, align 8
  %389 = call i32 @mwifiex_get_debug_info(%struct.mwifiex_private* %387, %struct.mwifiex_debug_info* %388)
  %390 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %391 = load i8*, i8** %3, align 8
  %392 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %11, align 8
  %393 = call i32 @mwifiex_debug_info_to_buffer(%struct.mwifiex_private* %390, i8* %391, %struct.mwifiex_debug_info* %392)
  %394 = load i8*, i8** %3, align 8
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i8, i8* %394, i64 %395
  store i8* %396, i8** %3, align 8
  br label %400

397:                                              ; preds = %378
  %398 = load i32, i32* %8, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %8, align 4
  br label %352

400:                                              ; preds = %379, %352
  %401 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %11, align 8
  %402 = call i32 @kfree(%struct.mwifiex_debug_info* %401)
  br label %403

403:                                              ; preds = %400, %341
  %404 = load i8*, i8** %3, align 8
  %405 = call i32 @strcpy(i8* %404, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  %406 = call i32 @strlen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  %407 = load i8*, i8** %3, align 8
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i8, i8* %407, i64 %408
  store i8* %409, i8** %3, align 8
  %410 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %411 = load i32, i32* @MSG, align 4
  %412 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %410, i32 %411, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0))
  %413 = load i8*, i8** %3, align 8
  %414 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %415 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %414, i32 0, i32 0
  %416 = load i8*, i8** %415, align 8
  %417 = ptrtoint i8* %413 to i64
  %418 = ptrtoint i8* %416 to i64
  %419 = sub i64 %417, %418
  %420 = trunc i64 %419 to i32
  %421 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %422 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %421, i32 0, i32 3
  store i32 %420, i32* %422, align 4
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @mwifiex_drv_get_driver_version(%struct.mwifiex_adapter*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.TYPE_7__*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local %struct.mwifiex_debug_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mwifiex_get_debug_info(%struct.mwifiex_private*, %struct.mwifiex_debug_info*) #1

declare dso_local i32 @mwifiex_debug_info_to_buffer(%struct.mwifiex_private*, i8*, %struct.mwifiex_debug_info*) #1

declare dso_local i32 @kfree(%struct.mwifiex_debug_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
