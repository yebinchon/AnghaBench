; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, %struct.net_device*, i64, %struct.pci_dev*, %struct.ixgb_hw }
%struct.net_device = type { i64 }
%struct.pci_dev = type { i64, i32, i32, i32 }
%struct.ixgb_hw = type { i64, %struct.TYPE_2__, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENET_HEADER_SIZE = common dso_local global i64 0, align 8
@ENET_FCS_LENGTH = common dso_local global i64 0, align 8
@IXGB_DEVICE_ID_82597EX = common dso_local global i64 0, align 8
@IXGB_DEVICE_ID_82597EX_CX4 = common dso_local global i64 0, align 8
@IXGB_DEVICE_ID_82597EX_LR = common dso_local global i64 0, align 8
@IXGB_DEVICE_ID_82597EX_SR = common dso_local global i64 0, align 8
@ixgb_82597 = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unsupported device id\0A\00", align 1
@__IXGB_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_adapter*)* @ixgb_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_sw_init(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %6 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %6, i32 0, i32 4
  store %struct.ixgb_hw* %7, %struct.ixgb_hw** %3, align 8
  %8 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %11, i32 0, i32 3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ENET_HEADER_SIZE, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* @ENET_FCS_LENGTH, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 8
  %47 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IXGB_DEVICE_ID_82597EX, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %72, label %54

54:                                               ; preds = %1
  %55 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IXGB_DEVICE_ID_82597EX_CX4, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %62 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IXGB_DEVICE_ID_82597EX_LR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IXGB_DEVICE_ID_82597EX_SR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66, %60, %54, %1
  %73 = load i32, i32* @ixgb_82597, align 4
  %74 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %83

76:                                               ; preds = %66
  %77 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %78 = load i32, i32* @probe, align 4
  %79 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %79, i32 0, i32 1
  %81 = load %struct.net_device*, %struct.net_device** %80, align 8
  %82 = call i32 @netif_err(%struct.ixgb_adapter* %77, i32 %78, %struct.net_device* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %76, %72
  %84 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load i32, i32* @__IXGB_DOWN, align 4
  %88 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %88, i32 0, i32 0
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  ret i32 0
}

declare dso_local i32 @netif_err(%struct.ixgb_adapter*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
