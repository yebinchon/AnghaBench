; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i64, i64, i64, i64 }

@e1000_ce4100 = common dso_local global i64 0, align 8
@__E1000_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @e1000_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.e1000_adapter* %10, %struct.e1000_adapter** %4, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 4
  store %struct.e1000_hw* %12, %struct.e1000_hw** %5, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %14 = call i32 @e1000_down_and_stop(%struct.e1000_adapter* %13)
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %16 = call i32 @e1000_release_manageability(%struct.e1000_adapter* %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @unregister_netdev(%struct.net_device* %17)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %20 = call i32 @e1000_phy_hw_reset(%struct.e1000_hw* %19)
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @kfree(i32 %27)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_ce4100, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @iounmap(i64 %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @iounmap(i64 %42)
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @iounmap(i64 %51)
  br label %53

53:                                               ; preds = %48, %39
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pci_release_selected_regions(%struct.pci_dev* %54, i32 %57)
  %59 = load i32, i32* @__E1000_DISABLED, align 4
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 0
  %62 = call i32 @test_and_set_bit(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @free_netdev(%struct.net_device* %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = call i32 @pci_disable_device(%struct.pci_dev* %71)
  br label %73

73:                                               ; preds = %70, %53
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e1000_down_and_stop(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_release_manageability(%struct.e1000_adapter*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @e1000_phy_hw_reset(%struct.e1000_hw*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_selected_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
