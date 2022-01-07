; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_cleanup_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_cleanup_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@IGP01E1000_GMII_FIFO = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_cleanup_led(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %22 [
    i32 133, label %9
    i32 132, label %9
    i32 131, label %9
    i32 130, label %9
    i32 135, label %10
    i32 129, label %10
    i32 134, label %10
    i32 128, label %10
  ]

9:                                                ; preds = %1, %1, %1, %1
  br label %28

10:                                               ; preds = %1, %1, %1, %1
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %11, i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %1, %21
  %23 = load i32, i32* @LEDCTL, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ew32(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %9
  %29 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
