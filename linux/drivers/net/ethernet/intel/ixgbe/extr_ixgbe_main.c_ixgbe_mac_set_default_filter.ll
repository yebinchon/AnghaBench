; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_mac_set_default_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_mac_set_default_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw, %struct.ixgbe_mac_addr* }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_mac_addr = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IXGBE_MAC_STATE_DEFAULT = common dso_local global i32 0, align 4
@IXGBE_MAC_STATE_IN_USE = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_mac_set_default_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_mac_set_default_filter(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_mac_addr*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 1
  %7 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %6, align 8
  %8 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %7, i64 0
  store %struct.ixgbe_mac_addr* %8, %struct.ixgbe_mac_addr** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %4, align 8
  %11 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %11, i32 0, i32 2
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @memcpy(i32* %12, i32 %16, i32 %17)
  %19 = call i32 @VMDQ_P(i32 0)
  %20 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @IXGBE_MAC_STATE_DEFAULT, align 4
  %23 = load i32, i32* @IXGBE_MAC_STATE_IN_USE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.0*
  %34 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IXGBE_RAH_AV, align 4
  %41 = call i32 %31(%struct.ixgbe_hw.0* %33, i32 0, i32 %36, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
