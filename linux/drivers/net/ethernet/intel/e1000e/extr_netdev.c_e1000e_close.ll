; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_4__*, %struct.pci_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@E1000_CHECK_RESET_COUNT = common dso_local global i32 0, align 4
@__E1000_RESETTING = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s NIC Link is Down\0A\00", align 1
@E1000_MNG_DHCP_COOKIE_STATUS_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@FLAG_HAS_AMT = common dso_local global i32 0, align 4
@__E1000_TESTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.e1000_adapter* %7, %struct.e1000_adapter** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 9
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @E1000_CHECK_RESET_COUNT, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* @__E1000_RESETTING, align 4
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %19, 0
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ false, %12 ], [ %21, %18 ]
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %12

26:                                               ; preds = %22
  %27 = load i32, i32* @__E1000_RESETTING, align 4
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = call i32 @WARN_ON(i64 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_get_sync(i32* %33)
  %35 = load i32, i32* @__E1000_DOWN, align 4
  %36 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %26
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %42 = call i32 @e1000e_down(%struct.e1000_adapter* %41, i32 1)
  %43 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %44 = call i32 @e1000_free_irq(%struct.e1000_adapter* %43)
  %45 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %45, i32 0, i32 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %40, %26
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 7
  %54 = call i32 @napi_disable(i32* %53)
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @e1000e_free_tx_resources(i32 %57)
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @e1000e_free_rx_resources(i32 %61)
  %63 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %51
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = load i32, i32* @ETH_P_8021Q, align 4
  %74 = call i32 @htons(i32 %73)
  %75 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @e1000_vlan_rx_kill_vid(%struct.net_device* %72, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %51
  %80 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FLAG_HAS_AMT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load i32, i32* @__E1000_TESTING, align 4
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %88, i32 0, i32 2
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %94 = call i32 @e1000e_release_hw_control(%struct.e1000_adapter* %93)
  br label %95

95:                                               ; preds = %92, %86, %79
  %96 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %96, i32 0, i32 1
  %98 = call i32 @pm_qos_remove_request(i32* %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = call i32 @pm_runtime_put_sync(i32* %100)
  ret i32 0
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @e1000e_down(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @e1000_free_irq(%struct.e1000_adapter*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @e1000e_free_tx_resources(i32) #1

declare dso_local i32 @e1000e_free_rx_resources(i32) #1

declare dso_local i32 @e1000_vlan_rx_kill_vid(%struct.net_device*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @e1000e_release_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
