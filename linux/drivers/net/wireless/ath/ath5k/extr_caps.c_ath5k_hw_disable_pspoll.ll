; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_caps.c_ath5k_hw_disable_pspoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_caps.c_ath5k_hw_disable_pspoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_STA_ID1 = common dso_local global i32 0, align 4
@AR5K_STA_ID1_NO_PSPOLL = common dso_local global i32 0, align 4
@AR5K_STA_ID1_DEFAULT_ANTENNA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_disable_pspoll(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %4 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %5 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AR5K_AR5210, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %11 = load i32, i32* @AR5K_STA_ID1, align 4
  %12 = load i32, i32* @AR5K_STA_ID1_NO_PSPOLL, align 4
  %13 = load i32, i32* @AR5K_STA_ID1_DEFAULT_ANTENNA, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %10, i32 %11, i32 %14)
  store i32 0, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
