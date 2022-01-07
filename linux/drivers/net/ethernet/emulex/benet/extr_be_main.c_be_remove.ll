; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.be_adapter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @be_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.be_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.be_adapter* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.be_adapter* %5, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = icmp ne %struct.be_adapter* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  %10 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %11 = call i32 @be_roce_dev_remove(%struct.be_adapter* %10)
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = call i32 @be_intr_set(%struct.be_adapter* %12, i32 0)
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = call i32 @be_cancel_err_detection(%struct.be_adapter* %14)
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @unregister_netdev(i32 %18)
  %20 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %21 = call i32 @be_clear(%struct.be_adapter* %20)
  %22 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_vfs_assigned(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %9
  %28 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %29 = call i32 @be_cmd_reset_function(%struct.be_adapter* %28)
  br label %30

30:                                               ; preds = %27, %9
  %31 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %32 = call i32 @be_cmd_fw_clean(%struct.be_adapter* %31)
  %33 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %34 = call i32 @be_unmap_pci_bars(%struct.be_adapter* %33)
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = call i32 @be_drv_cleanup(%struct.be_adapter* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_release_regions(%struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = call i32 @pci_disable_device(%struct.pci_dev* %41)
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @free_netdev(i32 %45)
  br label %47

47:                                               ; preds = %30, %8
  ret void
}

declare dso_local %struct.be_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @be_roce_dev_remove(%struct.be_adapter*) #1

declare dso_local i32 @be_intr_set(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_cancel_err_detection(%struct.be_adapter*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @be_clear(%struct.be_adapter*) #1

declare dso_local i32 @pci_vfs_assigned(i32) #1

declare dso_local i32 @be_cmd_reset_function(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_fw_clean(%struct.be_adapter*) #1

declare dso_local i32 @be_unmap_pci_bars(%struct.be_adapter*) #1

declare dso_local i32 @be_drv_cleanup(%struct.be_adapter*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
