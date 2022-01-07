; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_enable_rx_dma_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_enable_rx_dma_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbe_enable_rx_dma_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_enable_rx_dma_82599(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %8, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = bitcast %struct.ixgbe_hw* %10 to %struct.ixgbe_hw.3*
  %12 = call i32 %9(%struct.ixgbe_hw.3* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %21, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = bitcast %struct.ixgbe_hw* %23 to %struct.ixgbe_hw.2*
  %25 = call i32 %22(%struct.ixgbe_hw.2* %24)
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.1*
  %34 = call i32 %31(%struct.ixgbe_hw.1* %33)
  br label %35

35:                                               ; preds = %26, %17
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %39, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = bitcast %struct.ixgbe_hw* %41 to %struct.ixgbe_hw.0*
  %43 = call i32 %40(%struct.ixgbe_hw.0* %42)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
