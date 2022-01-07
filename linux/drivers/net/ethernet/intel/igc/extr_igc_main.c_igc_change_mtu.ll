; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igc_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@__IGC_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"changing MTU from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @igc_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.igc_adapter*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ETH_HLEN, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @ETH_FCS_LEN, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @VLAN_HLEN, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.igc_adapter* %16, %struct.igc_adapter** %6, align 8
  %17 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ETH_FRAME_LEN, align 4
  %22 = load i32, i32* @ETH_FCS_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @ETH_FRAME_LEN, align 4
  %27 = load i32, i32* @ETH_FCS_LEN, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %2
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i32, i32* @__IGC_RESETTING, align 4
  %32 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %32, i32 0, i32 1
  %34 = call i64 @test_and_set_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %30

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i64 @netif_running(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %47 = call i32 @igc_down(%struct.igc_adapter* %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i64 @netif_running(%struct.net_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %64 = call i32 @igc_up(%struct.igc_adapter* %63)
  br label %68

65:                                               ; preds = %48
  %66 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %67 = call i32 @igc_reset(%struct.igc_adapter* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @__IGC_RESETTING, align 4
  %70 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %71 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %70, i32 0, i32 1
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  ret i32 0
}

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @igc_down(%struct.igc_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @igc_up(%struct.igc_adapter*) #1

declare dso_local i32 @igc_reset(%struct.igc_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
