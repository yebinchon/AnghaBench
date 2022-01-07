; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__, %struct.ar5416AniState }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.ar5416AniState = type { i32, i32, i32, i32, i32, i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"listenTime=%d OFDM:%d errs=%d/s CCK:%d errs=%d/s ofdm_turn=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_ani_monitor(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ar5416AniState*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 2
  store %struct.ar5416AniState* %10, %struct.ar5416AniState** %5, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %6, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call i32 @ath9k_hw_ani_read_counters(%struct.ath_hw* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %115

17:                                               ; preds = %2
  %18 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %19 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %23 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %21, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %28 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 1000
  %31 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %32 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %30, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %37 = load i32, i32* @ANI, align 4
  %38 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %39 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %42 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %46 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %50 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i64 %44, i32 %47, i64 %48, i32 %51)
  %53 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %54 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %17
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %76 = call i32 @ath9k_hw_ani_lower_immunity(%struct.ath_hw* %75)
  %77 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %78 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %84 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %112

85:                                               ; preds = %67, %60
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %88 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %86, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %94 = call i32 @ath9k_hw_ani_ofdm_err_trigger(%struct.ath_hw* %93)
  %95 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %96 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %95, i32 0, i32 3
  store i32 0, i32* %96, align 4
  br label %111

97:                                               ; preds = %85
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %100 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %98, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %106 = call i32 @ath9k_hw_ani_cck_err_trigger(%struct.ath_hw* %105)
  %107 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %108 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %107, i32 0, i32 3
  store i32 1, i32* %108, align 4
  br label %110

109:                                              ; preds = %97
  br label %115

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %74
  %113 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %114 = call i32 @ath9k_ani_restart(%struct.ath_hw* %113)
  br label %115

115:                                              ; preds = %16, %109, %112, %17
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_read_counters(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ath9k_hw_ani_lower_immunity(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_ofdm_err_trigger(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_cck_err_trigger(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ani_restart(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
