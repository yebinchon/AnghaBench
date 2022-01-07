; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_hw_pfc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_hw_pfc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_hw_pfc_config(%struct.ixgbe_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %21 [
    i32 133, label %12
    i32 132, label %16
    i32 131, label %16
    i32 130, label %16
    i32 129, label %16
    i32 128, label %16
  ]

12:                                               ; preds = %3
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ixgbe_dcb_config_pfc_82598(%struct.ixgbe_hw* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %25

16:                                               ; preds = %3, %3, %3, %3, %3
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ixgbe_dcb_config_pfc_82599(%struct.ixgbe_hw* %17, i32 %18, i32* %19)
  store i32 %20, i32* %4, align 4
  br label %25

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %16, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @ixgbe_dcb_config_pfc_82598(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_dcb_config_pfc_82599(%struct.ixgbe_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
