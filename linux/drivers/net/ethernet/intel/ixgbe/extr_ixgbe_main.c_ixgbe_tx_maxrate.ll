; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_tx_maxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_tx_maxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_RTTBCNRC_RF_INT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC_RF_INT_MASK = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC_RF_DEC_MASK = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC_RS_ENA = common dso_local global i32 0, align 4
@IXGBE_RTTDQSEL = common dso_local global i32 0, align 4
@IXGBE_RTTBCNRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @ixgbe_tx_maxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_tx_maxrate(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %8, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %9, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %16 = call i32 @ixgbe_link_mbps(%struct.ixgbe_adapter* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load i32, i32* @IXGBE_RTTBCNRC_RF_INT_SHIFT, align 4
  %22 = load i32, i32* %10, align 4
  %23 = shl i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @IXGBE_RTTBCNRC_RF_INT_MASK, align 4
  %28 = load i32, i32* @IXGBE_RTTBCNRC_RF_DEC_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @IXGBE_RTTBCNRC_RS_ENA, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %36 = load i32, i32* @IXGBE_RTTDQSEL, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %36, i32 %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %40 = load i32, i32* @IXGBE_RTTBCNRC, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %39, i32 %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %20, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_link_mbps(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
