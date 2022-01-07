; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.ieee80211_hw = type { i32, i32, %struct.TYPE_2__*, %struct.ar5523* }
%struct.TYPE_2__ = type { i32 }
%struct.ar5523 = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.usb_device*, %struct.ieee80211_hw* }

@ENOMEM = common dso_local global i32 0, align 4
@AR5523_FLAG_PRE_FIRMWARE = common dso_local global i32 0, align 4
@ar5523_ops = common dso_local global i32 0, align 4
@ar5523_stat_work = common dso_local global i32 0, align 4
@ar5523_tx_wd_timer = common dso_local global i32 0, align 4
@ar5523_tx_wd_work = common dso_local global i32 0, align 4
@ar5523_tx_work = common dso_local global i32 0, align 4
@ar5523_rx_refill_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ar5523\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not create wq\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not allocate rx buffers\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not allocate rx command buffers\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not allocate tx command buffers\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to submit rx cmd\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not initialize adapter\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"could not get caps from adapter\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"could not get device status\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"MAC/BBP AR5523, RF AR%c112\0A\00", align 1
@AR5523_FLAG_ABG = common dso_local global i32 0, align 4
@HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"could not register device\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Found and initialized AR5523 device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ar5523_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ar5523*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AR5523_FLAG_PRE_FIRMWARE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = call i32 @ar5523_load_firmware(%struct.usb_device* %21)
  store i32 %22, i32* %3, align 4
  br label %247

23:                                               ; preds = %2
  %24 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 96, i32* @ar5523_ops)
  store %struct.ieee80211_hw* %24, %struct.ieee80211_hw** %7, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %26 = icmp ne %struct.ieee80211_hw* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %245

28:                                               ; preds = %23
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %30 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 0
  %32 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %29, i32* %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %33, i32 0, i32 3
  %35 = load %struct.ar5523*, %struct.ar5523** %34, align 8
  store %struct.ar5523* %35, %struct.ar5523** %8, align 8
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %37 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %38 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %37, i32 0, i32 19
  store %struct.ieee80211_hw* %36, %struct.ieee80211_hw** %38, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %41 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %40, i32 0, i32 18
  store %struct.usb_device* %39, %struct.usb_device** %41, align 8
  %42 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %43 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %42, i32 0, i32 17
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %46 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %45, i32 0, i32 16
  %47 = load i32, i32* @ar5523_stat_work, align 4
  %48 = call i32 @INIT_DELAYED_WORK(i32* %46, i32 %47)
  %49 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %50 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %49, i32 0, i32 15
  %51 = load i32, i32* @ar5523_tx_wd_timer, align 4
  %52 = call i32 @timer_setup(i32* %50, i32 %51, i32 0)
  %53 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %54 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %53, i32 0, i32 14
  %55 = load i32, i32* @ar5523_tx_wd_work, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  %57 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %58 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %57, i32 0, i32 13
  %59 = load i32, i32* @ar5523_tx_work, align 4
  %60 = call i32 @INIT_WORK(i32* %58, i32 %59)
  %61 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %62 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %61, i32 0, i32 12
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %65 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %64, i32 0, i32 11
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %68 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %67, i32 0, i32 10
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %71 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %70, i32 0, i32 9
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  %73 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %74 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %73, i32 0, i32 8
  %75 = call i32 @atomic_set(i32* %74, i32 0)
  %76 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %77 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %76, i32 0, i32 7
  %78 = call i32 @init_waitqueue_head(i32* %77)
  %79 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %80 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %79, i32 0, i32 6
  %81 = call i32 @atomic_set(i32* %80, i32 0)
  %82 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %83 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %82, i32 0, i32 5
  %84 = load i32, i32* @ar5523_rx_refill_work, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %87 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %86, i32 0, i32 4
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %90 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %89, i32 0, i32 3
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %93 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %92, i32 0, i32 2
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %97 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %99 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %28
  %103 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %104 = call i32 @ar5523_err(%struct.ar5523* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %242

105:                                              ; preds = %28
  %106 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %107 = call i32 @ar5523_alloc_rx_bufs(%struct.ar5523* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %112 = call i32 @ar5523_err(%struct.ar5523* %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %237

113:                                              ; preds = %105
  %114 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %115 = call i32 @ar5523_alloc_rx_cmd(%struct.ar5523* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %120 = call i32 @ar5523_err(%struct.ar5523* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %234

121:                                              ; preds = %113
  %122 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %123 = call i32 @ar5523_alloc_tx_cmd(%struct.ar5523* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %128 = call i32 @ar5523_err(%struct.ar5523* %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %231

129:                                              ; preds = %121
  %130 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %131 = call i32 @ar5523_submit_rx_cmd(%struct.ar5523* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %136 = call i32 @ar5523_err(%struct.ar5523* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %228

137:                                              ; preds = %129
  %138 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %139 = call i32 @ar5523_host_available(%struct.ar5523* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %144 = call i32 @ar5523_err(%struct.ar5523* %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %225

145:                                              ; preds = %137
  %146 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %147 = call i32 @ar5523_get_max_rxsz(%struct.ar5523* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %152 = call i32 @ar5523_err(%struct.ar5523* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %225

153:                                              ; preds = %145
  %154 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %155 = call i32 @ar5523_get_devcap(%struct.ar5523* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %160 = call i32 @ar5523_err(%struct.ar5523* %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %225

161:                                              ; preds = %153
  %162 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %163 = call i32 @ar5523_get_devstatus(%struct.ar5523* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %168 = call i32 @ar5523_err(%struct.ar5523* %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %225

169:                                              ; preds = %161
  %170 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %171 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %172 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @AR5523_FLAG_ABG, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 53, i32 50
  %179 = call i32 (%struct.ar5523*, i8*, ...) @ar5523_info(%struct.ar5523* %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %178)
  %180 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %181 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %180, i32 0, i32 1
  store i32* null, i32** %181, align 8
  %182 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %183 = load i32, i32* @HAS_RATE_CONTROL, align 4
  %184 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %182, i32 %183)
  %185 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %186 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %187 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %185, i32 %186)
  %188 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %189 = load i32, i32* @SIGNAL_DBM, align 4
  %190 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %188, i32 %189)
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %192 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %191, i32 0, i32 0
  store i32 8, i32* %192, align 8
  %193 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %194 = call i32 @BIT(i32 %193)
  %195 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %195, i32 0, i32 2
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  store i32 %194, i32* %198, align 4
  %199 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %200 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  %201 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %202 = call i32 @ar5523_init_modes(%struct.ar5523* %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %169
  br label %225

206:                                              ; preds = %169
  %207 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %208 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %207, i32 0, i32 2
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %211 = call i32 @wiphy_ext_feature_set(%struct.TYPE_2__* %209, i32 %210)
  %212 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %213 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %214 = call i32 @usb_set_intfdata(%struct.usb_interface* %212, %struct.ieee80211_hw* %213)
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %216 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %206
  %220 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %221 = call i32 @ar5523_err(%struct.ar5523* %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %225

222:                                              ; preds = %206
  %223 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %224 = call i32 (%struct.ar5523*, i8*, ...) @ar5523_info(%struct.ar5523* %223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %247

225:                                              ; preds = %219, %205, %166, %158, %150, %142
  %226 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %227 = call i32 @ar5523_cancel_rx_cmd(%struct.ar5523* %226)
  br label %228

228:                                              ; preds = %225, %134
  %229 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %230 = call i32 @ar5523_free_tx_cmd(%struct.ar5523* %229)
  br label %231

231:                                              ; preds = %228, %126
  %232 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %233 = call i32 @ar5523_free_rx_cmd(%struct.ar5523* %232)
  br label %234

234:                                              ; preds = %231, %118
  %235 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %236 = call i32 @ar5523_free_rx_bufs(%struct.ar5523* %235)
  br label %237

237:                                              ; preds = %234, %110
  %238 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  %239 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @destroy_workqueue(i32 %240)
  br label %242

242:                                              ; preds = %237, %102
  %243 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %244 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %243)
  br label %245

245:                                              ; preds = %242, %27
  %246 = load i32, i32* %9, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %245, %222, %20
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @ar5523_load_firmware(%struct.usb_device*) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*) #1

declare dso_local i32 @ar5523_alloc_rx_bufs(%struct.ar5523*) #1

declare dso_local i32 @ar5523_alloc_rx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_alloc_tx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_submit_rx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_host_available(%struct.ar5523*) #1

declare dso_local i32 @ar5523_get_max_rxsz(%struct.ar5523*) #1

declare dso_local i32 @ar5523_get_devcap(%struct.ar5523*) #1

declare dso_local i32 @ar5523_get_devstatus(%struct.ar5523*) #1

declare dso_local i32 @ar5523_info(%struct.ar5523*, i8*, ...) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ar5523_init_modes(%struct.ar5523*) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ar5523_cancel_rx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_free_tx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_free_rx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_free_rx_bufs(%struct.ar5523*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
