; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_init_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_4__, i32, i64, i64, i32, i32, i64, %struct.mwifiex_opt_sleep_confirm, i64, i32, i64, i64, %struct.mwifiex_opt_sleep_confirm, i64, i64, i32*, i64, i64, i64, i64, %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm, %struct.TYPE_6__*, i32, i64, i64, i64, %struct.mwifiex_opt_sleep_confirm*, %struct.TYPE_5__, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mwifiex_opt_sleep_confirm = type { i8*, i8*, i64, i8*, i8* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MWIFIEX_SDIO = common dso_local global i64 0, align 8
@MWIFIEX_USB = common dso_local global i64 0, align 8
@INTF_HEADER_LEN = common dso_local global i64 0, align 8
@MWIFIEX_SURPRISE_REMOVED = common dso_local global i32 0, align 4
@MWIFIEX_HW_STATUS_INITIALIZING = common dso_local global i32 0, align 4
@MWIFIEX_802_11_POWER_MODE_CAM = common dso_local global i32 0, align 4
@PS_STATE_AWAKE = common dso_local global i32 0, align 4
@HostCmd_BSS_MODE_ANY = common dso_local global i32 0, align 4
@MWIFIEX_SPECIFIC_SCAN_CHAN_TIME = common dso_local global i32 0, align 4
@MWIFIEX_ACTIVE_SCAN_CHAN_TIME = common dso_local global i32 0, align 4
@MWIFIEX_PASSIVE_SCAN_CHAN_TIME = common dso_local global i32 0, align 4
@MWIFIEX_DEF_SCAN_CHAN_GAP_TIME = common dso_local global i32 0, align 4
@PS_MODE_AUTO = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_BUF_SIZE_2K = common dso_local global i32 0, align 4
@MWIFIEX_IS_HS_CONFIGURED = common dso_local global i32 0, align 4
@HS_CFG_COND_DEF = common dso_local global i32 0, align 4
@HS_CFG_GPIO_DEF = common dso_local global i32 0, align 4
@HS_CFG_GAP_DEF = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_PS_MODE_ENH = common dso_local global i32 0, align 4
@SLEEP_CONFIRM = common dso_local global i32 0, align 4
@RESP_NEEDED = common dso_local global i32 0, align 4
@DEFAULT_BCN_MISS_TIMEOUT = common dso_local global i32 0, align 4
@MAX_MGMT_IE_INDEX = common dso_local global i32 0, align 4
@mfg_mode = common dso_local global i32 0, align 4
@MWIFIEX_MAX_STA_NUM = common dso_local global i32 0, align 4
@MWIFIEX_MAX_UAP_NUM = common dso_local global i32 0, align 4
@MWIFIEX_MAX_P2P_NUM = common dso_local global i32 0, align 4
@wakeup_timer_fn = common dso_local global i32 0, align 4
@fw_dump_timer_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_init_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_init_adapter(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.mwifiex_opt_sleep_confirm*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store %struct.mwifiex_opt_sleep_confirm* null, %struct.mwifiex_opt_sleep_confirm** %3, align 8
  %4 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %4, i32 0, i32 45
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = call i32 @skb_put(%struct.TYPE_6__* %6, i32 40)
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MWIFIEX_SDIO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 2
  store i32 1, i32* %17, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 2
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MWIFIEX_USB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 64
  store i64 0, i64* %29, align 8
  br label %34

30:                                               ; preds = %21
  %31 = load i64, i64* @INTF_HEADER_LEN, align 8
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %32, i32 0, i32 64
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %37, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %39, i32 0, i32 5
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @MWIFIEX_SURPRISE_REMOVED, align 4
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %42, i32 0, i32 52
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load i32, i32* @MWIFIEX_HW_STATUS_INITIALIZING, align 4
  %46 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %46, i32 0, i32 63
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @MWIFIEX_802_11_POWER_MODE_CAM, align 4
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %49, i32 0, i32 62
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @PS_STATE_AWAKE, align 4
  %52 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %52, i32 0, i32 61
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %54, i32 0, i32 6
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* @HostCmd_BSS_MODE_ANY, align 4
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %57, i32 0, i32 60
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @MWIFIEX_SPECIFIC_SCAN_CHAN_TIME, align 4
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 59
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @MWIFIEX_ACTIVE_SCAN_CHAN_TIME, align 4
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 58
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @MWIFIEX_PASSIVE_SCAN_CHAN_TIME, align 4
  %66 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %66, i32 0, i32 57
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @MWIFIEX_DEF_SCAN_CHAN_GAP_TIME, align 4
  %69 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %69, i32 0, i32 56
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %71, i32 0, i32 7
  store i32 1, i32* %72, align 4
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 8
  store i32 1, i32* %74, align 8
  %75 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %75, i32 0, i32 55
  store i64 0, i64* %76, align 8
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %77, i32 0, i32 9
  store i32 0, i32* %78, align 4
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %79, i32 0, i32 10
  store i32 0, i32* %80, align 8
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %81, i32 0, i32 11
  store i32 1000, i32* %82, align 4
  %83 = load i32, i32* @PS_MODE_AUTO, align 4
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %84, i32 0, i32 54
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %86, i32 0, i32 12
  store i32 0, i32* %87, align 8
  %88 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %88, i32 0, i32 13
  store i32 0, i32* %89, align 4
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %90, i32 0, i32 14
  store i32 0, i32* %91, align 8
  %92 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %92, i32 0, i32 15
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* @MWIFIEX_TX_DATA_BUF_SIZE_2K, align 4
  %95 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %95, i32 0, i32 53
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %98 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %98, i32 0, i32 52
  %100 = call i32 @clear_bit(i32 %97, i32* %99)
  %101 = load i32, i32* @HS_CFG_COND_DEF, align 4
  %102 = call i32 @cpu_to_le32(i32 %101)
  %103 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %103, i32 0, i32 51
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* @HS_CFG_GPIO_DEF, align 4
  %107 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %107, i32 0, i32 51
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @HS_CFG_GAP_DEF, align 4
  %111 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %111, i32 0, i32 51
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %114, i32 0, i32 16
  store i32 0, i32* %115, align 8
  %116 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %116, i32 0, i32 50
  %118 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %117, align 8
  %119 = call i32 @memset(%struct.mwifiex_opt_sleep_confirm* %118, i32 0, i32 8)
  %120 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %120, i32 0, i32 49
  store i64 0, i64* %121, align 8
  %122 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %123 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %122, i32 0, i32 48
  store i64 0, i64* %123, align 8
  %124 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %124, i32 0, i32 47
  store i64 0, i64* %125, align 8
  %126 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %126, i32 0, i32 17
  store i32 0, i32* %127, align 4
  %128 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %129 = call i32 @mwifiex_wmm_init(%struct.mwifiex_adapter* %128)
  %130 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %131 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %130, i32 0, i32 46
  %132 = call i32 @atomic_set(i32* %131, i32 0)
  %133 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %134 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %133, i32 0, i32 45
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to %struct.mwifiex_opt_sleep_confirm*
  store %struct.mwifiex_opt_sleep_confirm* %138, %struct.mwifiex_opt_sleep_confirm** %3, align 8
  %139 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %3, align 8
  %140 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %141 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %140, i32 0, i32 45
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @memset(%struct.mwifiex_opt_sleep_confirm* %139, i32 0, i32 %144)
  %146 = load i32, i32* @HostCmd_CMD_802_11_PS_MODE_ENH, align 4
  %147 = call i8* @cpu_to_le16(i32 %146)
  %148 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %3, align 8
  %149 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %148, i32 0, i32 4
  store i8* %147, i8** %149, align 8
  %150 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %151 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %150, i32 0, i32 45
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @cpu_to_le16(i32 %154)
  %156 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %3, align 8
  %157 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %3, align 8
  %159 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @SLEEP_CONFIRM, align 4
  %161 = call i8* @cpu_to_le16(i32 %160)
  %162 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %3, align 8
  %163 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* @RESP_NEEDED, align 4
  %165 = call i8* @cpu_to_le16(i32 %164)
  %166 = load %struct.mwifiex_opt_sleep_confirm*, %struct.mwifiex_opt_sleep_confirm** %3, align 8
  %167 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, %struct.mwifiex_opt_sleep_confirm* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %169 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %168, i32 0, i32 44
  %170 = call i32 @memset(%struct.mwifiex_opt_sleep_confirm* %169, i32 0, i32 40)
  %171 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %172 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %171, i32 0, i32 43
  %173 = call i32 @memset(%struct.mwifiex_opt_sleep_confirm* %172, i32 0, i32 40)
  %174 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %175 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %174, i32 0, i32 18
  store i32 0, i32* %175, align 8
  %176 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %177 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %176, i32 0, i32 42
  store i64 0, i64* %177, align 8
  %178 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %179 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %178, i32 0, i32 41
  store i64 0, i64* %179, align 8
  %180 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %181 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %180, i32 0, i32 40
  store i64 0, i64* %181, align 8
  %182 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %183 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %182, i32 0, i32 39
  store i64 0, i64* %183, align 8
  %184 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %185 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %184, i32 0, i32 38
  store i32* null, i32** %185, align 8
  %186 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %187 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %186, i32 0, i32 37
  store i64 0, i64* %187, align 8
  %188 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %189 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %188, i32 0, i32 36
  store i64 0, i64* %189, align 8
  %190 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %191 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %190, i32 0, i32 35
  %192 = call i32 @memset(%struct.mwifiex_opt_sleep_confirm* %191, i32 0, i32 40)
  %193 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %194 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %193, i32 0, i32 34
  store i64 0, i64* %194, align 8
  %195 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %196 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %195, i32 0, i32 33
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* @DEFAULT_BCN_MISS_TIMEOUT, align 4
  %198 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %199 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %198, i32 0, i32 32
  store i32 %197, i32* %199, align 8
  %200 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %201 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %200, i32 0, i32 31
  store i64 0, i64* %201, align 8
  %202 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %203 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %202, i32 0, i32 30
  %204 = call i32 @memset(%struct.mwifiex_opt_sleep_confirm* %203, i32 0, i32 40)
  %205 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %206 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %205, i32 0, i32 29
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* @MAX_MGMT_IE_INDEX, align 4
  %208 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %209 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %208, i32 0, i32 28
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @mfg_mode, align 4
  %211 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %212 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %211, i32 0, i32 27
  store i32 %210, i32* %212, align 8
  %213 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %214 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %213, i32 0, i32 26
  store i64 0, i64* %214, align 8
  %215 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %216 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %215, i32 0, i32 25
  store i64 0, i64* %216, align 8
  %217 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %218 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %217, i32 0, i32 24
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @eth_broadcast_addr(i32 %219)
  %221 = load i32, i32* @MWIFIEX_MAX_STA_NUM, align 4
  %222 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %223 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %222, i32 0, i32 23
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  store i32 %221, i32* %224, align 4
  %225 = load i32, i32* @MWIFIEX_MAX_UAP_NUM, align 4
  %226 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %227 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %226, i32 0, i32 23
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* @MWIFIEX_MAX_P2P_NUM, align 4
  %230 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %231 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %230, i32 0, i32 23
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  store i32 %229, i32* %232, align 4
  %233 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %234 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %233, i32 0, i32 19
  store i32 0, i32* %234, align 4
  %235 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %236 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %235, i32 0, i32 22
  %237 = load i32, i32* @wakeup_timer_fn, align 4
  %238 = call i32 @timer_setup(i32* %236, i32 %237, i32 0)
  %239 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %240 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %239, i32 0, i32 21
  store i64 0, i64* %240, align 8
  %241 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %242 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %241, i32 0, i32 20
  %243 = load i32, i32* @fw_dump_timer_fn, align 4
  %244 = call i32 @timer_setup(i32* %242, i32 %243, i32 0)
  ret void
}

declare dso_local i32 @skb_put(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.mwifiex_opt_sleep_confirm*, i32, i32) #1

declare dso_local i32 @mwifiex_wmm_init(%struct.mwifiex_adapter*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
