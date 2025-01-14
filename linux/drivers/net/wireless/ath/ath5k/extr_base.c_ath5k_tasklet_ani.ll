; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_tasklet_ani.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_tasklet_ani.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_CALIBRATION_ANI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ath5k_tasklet_ani to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_tasklet_ani(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath5k_hw*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.ath5k_hw*
  store %struct.ath5k_hw* %6, %struct.ath5k_hw** %3, align 8
  %7 = load i32, i32* @AR5K_CALIBRATION_ANI, align 4
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = call i32 @ath5k_ani_calibration(%struct.ath5k_hw* %12)
  %14 = load i32, i32* @AR5K_CALIBRATION_ANI, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  ret void
}

declare dso_local i32 @ath5k_ani_calibration(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
