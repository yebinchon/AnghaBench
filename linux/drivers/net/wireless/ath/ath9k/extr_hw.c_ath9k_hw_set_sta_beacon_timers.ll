; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_sta_beacon_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_sta_beacon_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_hw_capabilities }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath9k_beacon_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@AR_NEXT_TBTT_TIMER = common dso_local global i32 0, align 4
@AR_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_DMA_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_RSSI_THR = common dso_local global i32 0, align 4
@AR_RSSI_THR_BM_THR = common dso_local global i32 0, align 4
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"next DTIM %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"next beacon %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"beacon period %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DTIM period %u\0A\00", align 1
@AR_NEXT_DTIM = common dso_local global i32 0, align 4
@SLEEP_SLOP = common dso_local global i32 0, align 4
@AR_NEXT_TIM = common dso_local global i32 0, align 4
@AR_SLEEP1 = common dso_local global i32 0, align 4
@CAB_TIMEOUT_VAL = common dso_local global i32 0, align 4
@AR_SLEEP1_CAB_TIMEOUT = common dso_local global i32 0, align 4
@AR_SLEEP1_ASSUME_DTIM = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@BEACON_TIMEOUT_VAL = common dso_local global i32 0, align 4
@MIN_BEACON_TIMEOUT_VAL = common dso_local global i32 0, align 4
@AR_SLEEP2 = common dso_local global i32 0, align 4
@AR_SLEEP2_BEACON_TIMEOUT = common dso_local global i32 0, align 4
@AR_TIM_PERIOD = common dso_local global i32 0, align 4
@AR_DTIM_PERIOD = common dso_local global i32 0, align 4
@AR_TIMER_MODE = common dso_local global i32 0, align 4
@AR_TBTT_TIMER_EN = common dso_local global i32 0, align 4
@AR_TIM_TIMER_EN = common dso_local global i32 0, align 4
@AR_DTIM_TIMER_EN = common dso_local global i32 0, align 4
@AR_TSFOOR_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set_sta_beacon_timers(%struct.ath_hw* %0, %struct.ath9k_beacon_state* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_beacon_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_hw_capabilities*, align 8
  %10 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_beacon_state* %1, %struct.ath9k_beacon_state** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  store %struct.ath9k_hw_capabilities* %12, %struct.ath9k_hw_capabilities** %9, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %10, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load i32, i32* @AR_NEXT_TBTT_TIMER, align 4
  %19 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %20 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @REG_WRITE(%struct.ath_hw* %17, i32 %18, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* @AR_BEACON_PERIOD, align 4
  %25 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %26 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @REG_WRITE(%struct.ath_hw* %23, i32 %24, i32 %27)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = load i32, i32* @AR_DMA_BEACON_PERIOD, align 4
  %31 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %32 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %29, i32 %30, i32 %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load i32, i32* @AR_RSSI_THR, align 4
  %39 = load i32, i32* @AR_RSSI_THR_BM_THR, align 4
  %40 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %41 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %37, i32 %38, i32 %39, i32 %42)
  %44 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %45 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %48 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %54 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %2
  %57 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %58 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %61 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %67 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %56
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %75 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %81

77:                                               ; preds = %69
  %78 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %79 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %83 = load i32, i32* @BEACON, align 4
  %84 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %85 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ath_dbg(%struct.ath_common* %82, i32 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %89 = load i32, i32* @BEACON, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ath_dbg(%struct.ath_common* %88, i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %93 = load i32, i32* @BEACON, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @ath_dbg(%struct.ath_common* %92, i32 %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %97 = load i32, i32* @BEACON, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @ath_dbg(%struct.ath_common* %96, i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %100)
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = load i32, i32* @AR_NEXT_DTIM, align 4
  %104 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %105 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SLEEP_SLOP, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 @REG_WRITE(%struct.ath_hw* %102, i32 %103, i32 %108)
  %110 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %111 = load i32, i32* @AR_NEXT_TIM, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @SLEEP_SLOP, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @REG_WRITE(%struct.ath_hw* %110, i32 %111, i32 %114)
  %116 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %117 = load i32, i32* @AR_SLEEP1, align 4
  %118 = load i32, i32* @CAB_TIMEOUT_VAL, align 4
  %119 = shl i32 %118, 3
  %120 = load i32, i32* @AR_SLEEP1_CAB_TIMEOUT, align 4
  %121 = call i32 @SM(i32 %119, i32 %120)
  %122 = load i32, i32* @AR_SLEEP1_ASSUME_DTIM, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @REG_WRITE(%struct.ath_hw* %116, i32 %117, i32 %123)
  %125 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %9, align 8
  %126 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %81
  %132 = load i32, i32* @BEACON_TIMEOUT_VAL, align 4
  %133 = shl i32 %132, 3
  store i32 %133, i32* %8, align 4
  br label %136

134:                                              ; preds = %81
  %135 = load i32, i32* @MIN_BEACON_TIMEOUT_VAL, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %134, %131
  %137 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %138 = load i32, i32* @AR_SLEEP2, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @AR_SLEEP2_BEACON_TIMEOUT, align 4
  %141 = call i32 @SM(i32 %139, i32 %140)
  %142 = call i32 @REG_WRITE(%struct.ath_hw* %137, i32 %138, i32 %141)
  %143 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %144 = load i32, i32* @AR_TIM_PERIOD, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @REG_WRITE(%struct.ath_hw* %143, i32 %144, i32 %145)
  %147 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %148 = load i32, i32* @AR_DTIM_PERIOD, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @REG_WRITE(%struct.ath_hw* %147, i32 %148, i32 %149)
  %151 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %152 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %151)
  %153 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %154 = load i32, i32* @AR_TIMER_MODE, align 4
  %155 = load i32, i32* @AR_TBTT_TIMER_EN, align 4
  %156 = load i32, i32* @AR_TIM_TIMER_EN, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @AR_DTIM_TIMER_EN, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @REG_SET_BIT(%struct.ath_hw* %153, i32 %154, i32 %159)
  %161 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %162 = load i32, i32* @AR_TSFOOR_THRESHOLD, align 4
  %163 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %164 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @REG_WRITE(%struct.ath_hw* %161, i32 %162, i32 %165)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
