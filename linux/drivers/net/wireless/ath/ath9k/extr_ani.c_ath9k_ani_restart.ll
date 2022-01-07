; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_ani_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_ani_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64 }

@AR_PHY_ERR_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_2 = common dso_local global i32 0, align 4
@AR_PHY_ERR_MASK_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR_MASK_2 = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_ani_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_ani_restart(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar5416AniState*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 1
  store %struct.ar5416AniState* %5, %struct.ar5416AniState** %3, align 8
  %6 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %7 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %8)
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = load i32, i32* @AR_PHY_ERR_1, align 4
  %12 = call i32 @REG_WRITE(%struct.ath_hw* %10, i32 %11, i32 0)
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = load i32, i32* @AR_PHY_ERR_2, align 4
  %15 = call i32 @REG_WRITE(%struct.ath_hw* %13, i32 %14, i32 0)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = load i32, i32* @AR_PHY_ERR_MASK_1, align 4
  %18 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %19 = call i32 @REG_WRITE(%struct.ath_hw* %16, i32 %17, i32 %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @AR_PHY_ERR_MASK_2, align 4
  %22 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %23 = call i32 @REG_WRITE(%struct.ath_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = call i32 @ath9k_hw_update_mibstats(%struct.ath_hw* %26, i32* %28)
  %30 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %31 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %33 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_update_mibstats(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
