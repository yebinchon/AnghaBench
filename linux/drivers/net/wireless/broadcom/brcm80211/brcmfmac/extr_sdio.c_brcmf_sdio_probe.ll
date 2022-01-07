; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, i32, i32, i32, i32, i32, i32, %struct.brcmf_sdio_dev*, i32, i32, i64, i32*, i32, i32, i32, i32, i32, i32, %struct.workqueue_struct*, i32, i64, i32, i32, i32, i32 }
%struct.workqueue_struct = type { i32 }
%struct.brcmf_sdio_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.brcmf_sdio* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.brcmf_fw_request = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BRCMF_TXBOUND = common dso_local global i32 0, align 4
@BRCMF_RXBOUND = common dso_local global i32 0, align 4
@BRCMF_TXMINMAX = common dso_local global i32 0, align 4
@SDPCM_SEQ_WRAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"brcmf_wq/%s\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"insufficient memory to create txworkqueue\0A\00", align 1
@brcmf_sdio_dataworker = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"brcmf_sdio_probe_attach failed\0A\00", align 1
@brcmf_sdio_watchdog = common dso_local global i32 0, align 4
@brcmf_sdio_watchdog_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"brcmf_wdog/%s\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"brcmf_watchdog thread failed to start\0A\00", align 1
@SDPCM_HWHDR_LEN = common dso_local global i64 0, align 8
@SDPCM_SWHDR_LEN = common dso_local global i64 0, align 8
@max_roundup = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@CLK_SDONLY = common dso_local global i32 0, align 4
@BRCMF_IDLE_INTERVAL = common dso_local global i32 0, align 4
@BRCMF_IDLE_ACTIVE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"completed!!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@brcmf_sdio_firmware_callback = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"async firmware request failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcmf_sdio* @brcmf_sdio_probe(%struct.brcmf_sdio_dev* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  %3 = alloca %struct.brcmf_sdio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_sdio*, align 8
  %6 = alloca %struct.workqueue_struct*, align 8
  %7 = alloca %struct.brcmf_fw_request*, align 8
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %3, align 8
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 @brcmf_dbg(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.brcmf_sdio* @kzalloc(i32 128, i32 %10)
  store %struct.brcmf_sdio* %11, %struct.brcmf_sdio** %5, align 8
  %12 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %13 = icmp ne %struct.brcmf_sdio* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %190

15:                                               ; preds = %1
  %16 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %17 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %17, i32 0, i32 7
  store %struct.brcmf_sdio_dev* %16, %struct.brcmf_sdio_dev** %18, align 8
  %19 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %20 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %21 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %20, i32 0, i32 3
  store %struct.brcmf_sdio* %19, %struct.brcmf_sdio** %21, align 8
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %22, i32 0, i32 24
  %24 = call i32 @skb_queue_head_init(i32* %23)
  %25 = load i32, i32* @BRCMF_TXBOUND, align 4
  %26 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %27 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %26, i32 0, i32 23
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @BRCMF_RXBOUND, align 4
  %29 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %30 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %29, i32 0, i32 22
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @BRCMF_TXMINMAX, align 4
  %32 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %33 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %32, i32 0, i32 21
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @SDPCM_SEQ_WRAP, align 8
  %35 = sub nsw i64 %34, 1
  %36 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %36, i32 0, i32 20
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %39 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %40 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @dev_name(i32* %42)
  %44 = call %struct.workqueue_struct* @alloc_ordered_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %43)
  store %struct.workqueue_struct* %44, %struct.workqueue_struct** %6, align 8
  %45 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %46 = icmp ne %struct.workqueue_struct* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %15
  %48 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %190

49:                                               ; preds = %15
  %50 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %51 = call i32 @brcmf_sdiod_freezer_count(%struct.brcmf_sdio_dev* %50)
  %52 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %53 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %52, i32 0, i32 19
  %54 = load i32, i32* @brcmf_sdio_dataworker, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %57 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %58 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %57, i32 0, i32 18
  store %struct.workqueue_struct* %56, %struct.workqueue_struct** %58, align 8
  %59 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %60 = call i32 @brcmf_sdio_probe_attach(%struct.brcmf_sdio* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %49
  %63 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %190

64:                                               ; preds = %49
  %65 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %66 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %65, i32 0, i32 17
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %69 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %68, i32 0, i32 16
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %72 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %71, i32 0, i32 15
  %73 = call i32 @init_waitqueue_head(i32* %72)
  %74 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %75 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %74, i32 0, i32 14
  %76 = call i32 @init_waitqueue_head(i32* %75)
  %77 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %78 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %77, i32 0, i32 13
  %79 = load i32, i32* @brcmf_sdio_watchdog, align 4
  %80 = call i32 @timer_setup(i32* %78, i32 %79, i32 0)
  %81 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %82 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %81, i32 0, i32 12
  %83 = call i32 @init_completion(i32* %82)
  %84 = load i32, i32* @brcmf_sdio_watchdog_thread, align 4
  %85 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %86 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %87 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @dev_name(i32* %89)
  %91 = call i32* @kthread_run(i32 %84, %struct.brcmf_sdio* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %93 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %92, i32 0, i32 11
  store i32* %91, i32** %93, align 8
  %94 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %95 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %94, i32 0, i32 11
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @IS_ERR(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %64
  %100 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %101 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %102 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %101, i32 0, i32 11
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %99, %64
  %104 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %105 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %107 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = load i64, i64* @SDPCM_HWHDR_LEN, align 8
  %109 = load i64, i64* @SDPCM_SWHDR_LEN, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %112 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %111, i32 0, i32 10
  store i64 %110, i64* %112, align 8
  %113 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %114 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %113, i32 0, i32 7
  %115 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %114, align 8
  %116 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %115, i32 0, i32 2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %121 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @max_roundup, align 4
  %123 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %124 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @min(i32 %122, i32 %125)
  %127 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %128 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 4
  %129 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %130 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %129, i32 0, i32 7
  %131 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %130, align 8
  %132 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = call i32 @sdio_claim_host(%struct.TYPE_4__* %133)
  %135 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %136 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %135, i32 0, i32 7
  %137 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %136, align 8
  %138 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = call i32 @sdio_disable_func(%struct.TYPE_5__* %139)
  %141 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %142 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %141, i32 0, i32 2
  store i32 0, i32* %142, align 8
  %143 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %144 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %143, i32 0, i32 7
  %145 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %144, align 8
  %146 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %147 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %145, i32 %146, i32 0, i32* null)
  %148 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %149 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %148, i32 0, i32 7
  %150 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %149, align 8
  %151 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = call i32 @sdio_release_host(%struct.TYPE_4__* %152)
  %154 = load i32, i32* @CLK_SDONLY, align 4
  %155 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %156 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @BRCMF_IDLE_INTERVAL, align 4
  %158 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %159 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @BRCMF_IDLE_ACTIVE, align 4
  %161 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %162 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %164 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %163, i32 0, i32 3
  store i32 0, i32* %164, align 4
  %165 = load i32, i32* @INFO, align 4
  %166 = call i32 @brcmf_dbg(i32 %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %167 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %168 = call %struct.brcmf_fw_request* @brcmf_sdio_prepare_fw_request(%struct.brcmf_sdio* %167)
  store %struct.brcmf_fw_request* %168, %struct.brcmf_fw_request** %7, align 8
  %169 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %170 = icmp ne %struct.brcmf_fw_request* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %103
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %190

174:                                              ; preds = %103
  %175 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %176 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %179 = load i32, i32* @brcmf_sdio_firmware_callback, align 4
  %180 = call i32 @brcmf_fw_get_firmwares(i32 %177, %struct.brcmf_fw_request* %178, i32 %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %174
  %184 = load i32, i32* %4, align 4
  %185 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %184)
  %186 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %187 = call i32 @kfree(%struct.brcmf_fw_request* %186)
  br label %190

188:                                              ; preds = %174
  %189 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  store %struct.brcmf_sdio* %189, %struct.brcmf_sdio** %2, align 8
  br label %193

190:                                              ; preds = %183, %171, %62, %47, %14
  %191 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %192 = call i32 @brcmf_sdio_remove(%struct.brcmf_sdio* %191)
  store %struct.brcmf_sdio* null, %struct.brcmf_sdio** %2, align 8
  br label %193

193:                                              ; preds = %190, %188
  %194 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  ret %struct.brcmf_sdio* %194
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local %struct.brcmf_sdio* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.workqueue_struct* @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @brcmf_sdiod_freezer_count(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @brcmf_sdio_probe_attach(%struct.brcmf_sdio*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32* @kthread_run(i32, %struct.brcmf_sdio*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_4__*) #1

declare dso_local i32 @sdio_disable_func(%struct.TYPE_5__*) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_4__*) #1

declare dso_local %struct.brcmf_fw_request* @brcmf_sdio_prepare_fw_request(%struct.brcmf_sdio*) #1

declare dso_local i32 @brcmf_fw_get_firmwares(i32, %struct.brcmf_fw_request*, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_fw_request*) #1

declare dso_local i32 @brcmf_sdio_remove(%struct.brcmf_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
