; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_sync_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_sync_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw, %struct.ixgbe_mac_addr* }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_mac_addr = type { i32, i32, i32 }

@IXGBE_MAC_STATE_MODIFIED = common dso_local global i32 0, align 4
@IXGBE_MAC_STATE_IN_USE = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_sync_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_sync_mac_table(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_mac_addr*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 1
  %8 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %7, align 8
  %9 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %8, i64 0
  store %struct.ixgbe_mac_addr* %9, %struct.ixgbe_mac_addr** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %68, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %12
  %20 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IXGBE_MAC_STATE_MODIFIED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %68

27:                                               ; preds = %19
  %28 = load i32, i32* @IXGBE_MAC_STATE_MODIFIED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IXGBE_MAC_STATE_IN_USE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %27
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32, i32)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.1*
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %50 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IXGBE_RAH_AV, align 4
  %56 = call i32 %45(%struct.ixgbe_hw.1* %47, i32 %48, i32 %51, i32 %54, i32 %55)
  br label %67

57:                                               ; preds = %27
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %61, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = bitcast %struct.ixgbe_hw* %63 to %struct.ixgbe_hw.0*
  %65 = load i32, i32* %5, align 4
  %66 = call i32 %62(%struct.ixgbe_hw.0* %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %40
  br label %68

68:                                               ; preds = %67, %26
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %71, i32 1
  store %struct.ixgbe_mac_addr* %72, %struct.ixgbe_mac_addr** %3, align 8
  br label %12

73:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
