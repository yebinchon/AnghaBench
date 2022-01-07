; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_hw_config_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_hw_config_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_hw_config_82599(%struct.ixgbe_hw* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i32 @ixgbe_dcb_config_rx_arbiter_82599(%struct.ixgbe_hw* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(%struct.ixgbe_hw* %22, i32* %23, i32* %24, i32* %25, i32* %26)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @ixgbe_dcb_config_tx_data_arbiter_82599(%struct.ixgbe_hw* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @ixgbe_dcb_config_pfc_82599(%struct.ixgbe_hw* %35, i32 %36, i32* %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %40 = call i32 @ixgbe_dcb_config_tc_stats_82599(%struct.ixgbe_hw* %39)
  ret i32 0
}

declare dso_local i32 @ixgbe_dcb_config_rx_arbiter_82599(%struct.ixgbe_hw*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(%struct.ixgbe_hw*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ixgbe_dcb_config_tx_data_arbiter_82599(%struct.ixgbe_hw*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ixgbe_dcb_config_pfc_82599(%struct.ixgbe_hw*, i32, i32*) #1

declare dso_local i32 @ixgbe_dcb_config_tc_stats_82599(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
