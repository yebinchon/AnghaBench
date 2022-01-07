; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@IL4965_BROADCAST_ID = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE_LOG = common dso_local global i32 0, align 4
@IL_RX_BUF_SIZE_8K = common dso_local global i32 0, align 4
@IL_RX_BUF_SIZE_4K = common dso_local global i32 0, align 4
@IL_MAX_UCODE_BEACON_INTERVAL = common dso_local global i32 0, align 4
@IL_SKU_N = common dso_local global i32 0, align 4
@IL_MIN_NUM_QUEUES = common dso_local global i64 0, align 8
@IL49_NUM_QUEUES = common dso_local global i64 0, align 8
@FH49_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@IL4965_STATION_COUNT = common dso_local global i32 0, align 4
@IL49_RTC_DATA_SIZE = common dso_local global i32 0, align 4
@IL49_RTC_INST_SIZE = common dso_local global i32 0, align 4
@BSM_SRAM_SIZE = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@FH49_RSCSR_CHNL0_WPTR = common dso_local global i32 0, align 4
@CT_KILL_THRESHOLD_LEGACY = common dso_local global i32 0, align 4
@il4965_sensitivity = common dso_local global i32 0, align 4
@IL4965_EXT_BEACON_TIME_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_set_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_set_hw_params(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load i32, i32* @IL4965_BROADCAST_ID, align 4
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 21
  store i32 %3, i32* %6, align 8
  %7 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 20
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @RX_QUEUE_SIZE_LOG, align 4
  %12 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 19
  store i32 %11, i32* %14, align 8
  %15 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @IL_RX_BUF_SIZE_8K, align 4
  %25 = call i8* @get_order(i32 %24)
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 18
  store i8* %25, i8** %28, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @IL_RX_BUF_SIZE_4K, align 4
  %31 = call i8* @get_order(i32 %30)
  %32 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 18
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @IL_MAX_UCODE_BEACON_INTERVAL, align 4
  %37 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 17
  store i32 %36, i32* %39, align 4
  %40 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load i32, i32* @IL_SKU_N, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %50
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %48, %35
  %58 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IL_MIN_NUM_QUEUES, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %57
  %68 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %69 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IL49_NUM_QUEUES, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %79 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %87 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  br label %90

90:                                               ; preds = %77, %67, %57
  %91 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @FH49_TCSR_CHNL_NUM, align 4
  %100 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %101 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 16
  store i32 %99, i32* %102, align 8
  %103 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %112 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %115 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  store i32 4, i32* %116, align 8
  %117 = load i32, i32* @IL4965_STATION_COUNT, align 4
  %118 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %119 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 15
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @IL49_RTC_DATA_SIZE, align 4
  %122 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %123 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 14
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @IL49_RTC_INST_SIZE, align 4
  %126 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %127 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 13
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @BSM_SRAM_SIZE, align 4
  %130 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %131 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 12
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %134 = call i32 @BIT(i32 %133)
  %135 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %136 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 11
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* @FH49_RSCSR_CHNL0_WPTR, align 4
  %139 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %140 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 10
  store i32 %138, i32* %141, align 8
  %142 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %143 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @il4965_num_of_ant(i32 %146)
  %148 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %149 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 9
  store i8* %147, i8** %150, align 8
  %151 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %152 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @il4965_num_of_ant(i32 %155)
  %157 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %158 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 8
  store i8* %156, i8** %159, align 8
  %160 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %161 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %166 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 7
  store i32 %164, i32* %167, align 8
  %168 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %169 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %174 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 6
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* @CT_KILL_THRESHOLD_LEGACY, align 4
  %177 = call i32 @CELSIUS_TO_KELVIN(i32 %176)
  %178 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %179 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 5
  store i32 %177, i32* %180, align 8
  %181 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %182 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 4
  store i32* @il4965_sensitivity, i32** %183, align 8
  %184 = load i32, i32* @IL4965_EXT_BEACON_TIME_POS, align 4
  %185 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %186 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  store i32 %184, i32* %187, align 4
  ret void
}

declare dso_local i8* @get_order(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @il4965_num_of_ant(i32) #1

declare dso_local i32 @CELSIUS_TO_KELVIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
