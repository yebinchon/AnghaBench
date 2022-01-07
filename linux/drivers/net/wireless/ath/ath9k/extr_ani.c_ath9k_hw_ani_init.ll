; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__, i32, %struct.ar5416AniState }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ar5416AniState = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Initialize ANI\0A\00", align 1
@ATH9K_ANI_OFDM_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_LOW = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_TRIG_LOW = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_HIGH_OLD = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_LOW_OLD = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_TRIG_HIGH_OLD = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_TRIG_LOW_OLD = common dso_local global i32 0, align 4
@ATH9K_ANI_SPUR_IMMUNE_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_FIRSTEP_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_DEF_LEVEL = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_DEF_LEVEL = common dso_local global i32 0, align 4
@ATH9K_ANI_PERIOD = common dso_local global i32 0, align 4
@ATH9K_ANI_POLLINTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_ani_init(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ar5416AniState*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 2
  store %struct.ar5416AniState* %8, %struct.ar5416AniState** %4, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %10 = load i32, i32* @ANI, align 4
  %11 = call i32 @ath_dbg(%struct.ath_common* %9, i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_HIGH, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_LOW, align 4
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @ATH9K_ANI_CCK_TRIG_HIGH, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @ATH9K_ANI_CCK_TRIG_LOW, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %49

32:                                               ; preds = %1
  %33 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_HIGH_OLD, align 4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_LOW_OLD, align 4
  %38 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @ATH9K_ANI_CCK_TRIG_HIGH_OLD, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @ATH9K_ANI_CCK_TRIG_LOW_OLD, align 4
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %32, %15
  %50 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 4
  %51 = load %struct.ar5416AniState*, %struct.ar5416AniState** %4, align 8
  %52 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ATH9K_ANI_FIRSTEP_LVL, align 4
  %54 = load %struct.ar5416AniState*, %struct.ar5416AniState** %4, align 8
  %55 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %56)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = load %struct.ar5416AniState*, %struct.ar5416AniState** %4, align 8
  %62 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ar5416AniState*, %struct.ar5416AniState** %4, align 8
  %64 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.ar5416AniState*, %struct.ar5416AniState** %4, align 8
  %66 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @ATH9K_ANI_CCK_DEF_LEVEL, align 4
  %68 = load %struct.ar5416AniState*, %struct.ar5416AniState** %4, align 8
  %69 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @ATH9K_ANI_OFDM_DEF_LEVEL, align 4
  %71 = load %struct.ar5416AniState*, %struct.ar5416AniState** %4, align 8
  %72 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @ATH9K_ANI_PERIOD, align 4
  %74 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ATH9K_ANI_POLLINTERVAL, align 4
  %77 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %78 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %81 = call i32 @ath9k_ani_restart(%struct.ath_hw* %80)
  %82 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %83 = call i32 @ath9k_enable_mib_counters(%struct.ath_hw* %82)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ani_restart(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_enable_mib_counters(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
