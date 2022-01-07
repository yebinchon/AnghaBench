; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_read_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_read_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__, i32, %struct.ar5416AniState }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar5416AniState = type { i8*, i8*, i32 }
%struct.ath_common = type { i32 }

@AR_PHY_ERR_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_ani_read_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_ani_read_counters(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ar5416AniState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 2
  store %struct.ar5416AniState* %12, %struct.ar5416AniState** %5, align 8
  %13 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %14 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %13)
  %15 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %16 = call i64 @ath_hw_get_listen_time(%struct.ath_common* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = call i32 @ath9k_ani_restart(%struct.ath_hw* %25)
  store i32 0, i32* %2, align 4
  br label %79

27:                                               ; preds = %1
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %30 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 1
  %38 = call i32 @ath9k_hw_update_mibstats(%struct.ath_hw* %35, i32* %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = load i32, i32* @AR_PHY_ERR_1, align 4
  %41 = call i8* @REG_READ(%struct.ath_hw* %39, i32 %40)
  store i8* %41, i8** %6, align 8
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i32, i32* @AR_PHY_ERR_2, align 4
  %44 = call i8* @REG_READ(%struct.ath_hw* %42, i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %47 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %51
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %61 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %64 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %62 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %68
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %78 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %27, %19
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i64 @ath_hw_get_listen_time(%struct.ath_common*) #1

declare dso_local i32 @ath9k_ani_restart(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_update_mibstats(%struct.ath_hw*, i32*) #1

declare dso_local i8* @REG_READ(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
