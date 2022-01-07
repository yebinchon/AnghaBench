; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_rfkill.c_ath5k_rfkill_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_rfkill.c_ath5k_rfkill_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ath5k_tasklet_rfkill_toggle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_rfkill_hw_start(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %3 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* @ath5k_tasklet_rfkill_toggle, align 4
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %24 = ptrtoint %struct.ath5k_hw* %23 to i64
  %25 = call i32 @tasklet_init(i32* %21, i32 %22, i64 %24)
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %27 = call i32 @ath5k_rfkill_disable(%struct.ath5k_hw* %26)
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @AR5K_EEPROM_HDR_RFKILL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %37 = call i32 @ath5k_rfkill_set_intr(%struct.ath5k_hw* %36, i32 1)
  br label %38

38:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @ath5k_rfkill_disable(%struct.ath5k_hw*) #1

declare dso_local i64 @AR5K_EEPROM_HDR_RFKILL(i32) #1

declare dso_local i32 @ath5k_rfkill_set_intr(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
