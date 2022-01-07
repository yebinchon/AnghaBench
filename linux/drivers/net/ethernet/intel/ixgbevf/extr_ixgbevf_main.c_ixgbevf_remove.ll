; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i64 }
%struct.ixgbevf_adapter = type { i32, i32, i32, i32, i32 }

@__IXGBEVF_REMOVING = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Remove complete\0A\00", align 1
@__IXGBEVF_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ixgbevf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbevf_adapter* %13, %struct.ixgbevf_adapter** %4, align 8
  %14 = load i32, i32* @__IXGBEVF_REMOVING, align 4
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %18, i32 0, i32 4
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NETREG_REGISTERED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @unregister_netdev(%struct.net_device* %27)
  br label %29

29:                                               ; preds = %26, %11
  %30 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %31 = call i32 @ixgbevf_stop_ipsec_offload(%struct.ixgbevf_adapter* %30)
  %32 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %33 = call i32 @ixgbevf_clear_interrupt_scheme(%struct.ixgbevf_adapter* %32)
  %34 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %35 = call i32 @ixgbevf_reset_interrupt_capability(%struct.ixgbevf_adapter* %34)
  %36 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iounmap(i32 %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = call i32 @pci_release_regions(%struct.pci_dev* %40)
  %42 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %42, i32 0, i32 2
  %44 = call i32 @hw_dbg(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load i32, i32* @__IXGBEVF_DISABLED, align 4
  %50 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %50, i32 0, i32 0
  %52 = call i32 @test_and_set_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @free_netdev(%struct.net_device* %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %29
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = call i32 @pci_disable_device(%struct.pci_dev* %61)
  br label %63

63:                                               ; preds = %10, %60, %29
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_stop_ipsec_offload(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_clear_interrupt_scheme(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_reset_interrupt_capability(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @hw_dbg(i32*, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
