; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, %struct.TYPE_4__, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@__E1000_DOWN = common dso_local global i32 0, align 4
@FLAG_HAS_HW_TIMESTAMP = common dso_local global i32 0, align 4
@e1000_pch_spt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @e1000_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %4, align 8
  %10 = load i32, i32* @__E1000_DOWN, align 4
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 4
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %15 = call i32 @e1000e_ptp_remove(%struct.e1000_adapter* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @__E1000_DOWN, align 4
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 4
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %24, i32 0, i32 13
  %26 = call i32 @del_timer_sync(i32* %25)
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 12
  %29 = call i32 @cancel_work_sync(i32* %28)
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 11
  %32 = call i32 @cancel_work_sync(i32* %31)
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 10
  %35 = call i32 @cancel_work_sync(i32* %34)
  %36 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %36, i32 0, i32 9
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %39, i32 0, i32 8
  %41 = call i32 @cancel_delayed_work(i32* %40)
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @flush_workqueue(i32 %44)
  %46 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @destroy_workqueue(i32 %48)
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FLAG_HAS_HW_TIMESTAMP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %23
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 6
  %59 = call i32 @cancel_work_sync(i32* %58)
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @dev_consume_skb_any(i32* %67)
  %69 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %69, i32 0, i32 5
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %56
  br label %72

72:                                               ; preds = %71, %23
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @__E1000_DOWN, align 4
  %77 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %77, i32 0, i32 4
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 @unregister_netdev(%struct.net_device* %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %84 = call i64 @pci_dev_run_wake(%struct.pci_dev* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = call i32 @pm_runtime_get_noresume(i32* %88)
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %92 = call i32 @e1000e_release_hw_control(%struct.e1000_adapter* %91)
  %93 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %94 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %93)
  %95 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @kfree(i32 %97)
  %99 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @kfree(i32 %101)
  %103 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @iounmap(i64 %106)
  %108 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %90
  %114 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @e1000_pch_spt, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @iounmap(i64 %125)
  br label %127

127:                                              ; preds = %121, %113, %90
  %128 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %129 = call i32 @pci_release_mem_regions(%struct.pci_dev* %128)
  %130 = load %struct.net_device*, %struct.net_device** %3, align 8
  %131 = call i32 @free_netdev(%struct.net_device* %130)
  %132 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %133 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %132)
  %134 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %135 = call i32 @pci_disable_device(%struct.pci_dev* %134)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @e1000e_ptp_remove(%struct.e1000_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dev_consume_skb_any(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i64 @pci_dev_run_wake(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @e1000e_release_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
