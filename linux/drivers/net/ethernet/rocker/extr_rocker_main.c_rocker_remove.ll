; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.pci_dev = type { i32 }
%struct.rocker = type { i32, i32, i32, i32 }

@rocker_switchdev_blocking_notifier = common dso_local global %struct.notifier_block zeroinitializer, align 4
@rocker_switchdev_notifier = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@ROCKER_CONTROL_RESET = common dso_local global i32 0, align 4
@ROCKER_MSIX_VEC_EVENT = common dso_local global i32 0, align 4
@ROCKER_MSIX_VEC_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rocker_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.notifier_block*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.rocker* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.rocker* %6, %struct.rocker** %3, align 8
  store %struct.notifier_block* @rocker_switchdev_blocking_notifier, %struct.notifier_block** %4, align 8
  %7 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %8 = call i32 @unregister_switchdev_blocking_notifier(%struct.notifier_block* %7)
  %9 = call i32 @unregister_switchdev_notifier(i32* @rocker_switchdev_notifier)
  %10 = load %struct.rocker*, %struct.rocker** %3, align 8
  %11 = getelementptr inbounds %struct.rocker, %struct.rocker* %10, i32 0, i32 3
  %12 = call i32 @unregister_fib_notifier(i32* %11)
  %13 = load %struct.rocker*, %struct.rocker** %3, align 8
  %14 = call i32 @rocker_remove_ports(%struct.rocker* %13)
  %15 = load %struct.rocker*, %struct.rocker** %3, align 8
  %16 = load i32, i32* @CONTROL, align 4
  %17 = load i32, i32* @ROCKER_CONTROL_RESET, align 4
  %18 = call i32 @rocker_write32(%struct.rocker* %15, i32 %16, i32 %17)
  %19 = load %struct.rocker*, %struct.rocker** %3, align 8
  %20 = getelementptr inbounds %struct.rocker, %struct.rocker* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @destroy_workqueue(i32 %21)
  %23 = load %struct.rocker*, %struct.rocker** %3, align 8
  %24 = load i32, i32* @ROCKER_MSIX_VEC_EVENT, align 4
  %25 = call i32 @rocker_msix_vector(%struct.rocker* %23, i32 %24)
  %26 = load %struct.rocker*, %struct.rocker** %3, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.rocker* %26)
  %28 = load %struct.rocker*, %struct.rocker** %3, align 8
  %29 = load i32, i32* @ROCKER_MSIX_VEC_CMD, align 4
  %30 = call i32 @rocker_msix_vector(%struct.rocker* %28, i32 %29)
  %31 = load %struct.rocker*, %struct.rocker** %3, align 8
  %32 = call i32 @free_irq(i32 %30, %struct.rocker* %31)
  %33 = load %struct.rocker*, %struct.rocker** %3, align 8
  %34 = call i32 @rocker_dma_rings_fini(%struct.rocker* %33)
  %35 = load %struct.rocker*, %struct.rocker** %3, align 8
  %36 = call i32 @rocker_msix_fini(%struct.rocker* %35)
  %37 = load %struct.rocker*, %struct.rocker** %3, align 8
  %38 = getelementptr inbounds %struct.rocker, %struct.rocker* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @iounmap(i32 %39)
  %41 = load %struct.rocker*, %struct.rocker** %3, align 8
  %42 = getelementptr inbounds %struct.rocker, %struct.rocker* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_release_regions(i32 %43)
  %45 = load %struct.rocker*, %struct.rocker** %3, align 8
  %46 = getelementptr inbounds %struct.rocker, %struct.rocker* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_disable_device(i32 %47)
  %49 = load %struct.rocker*, %struct.rocker** %3, align 8
  %50 = call i32 @kfree(%struct.rocker* %49)
  ret void
}

declare dso_local %struct.rocker* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @unregister_switchdev_blocking_notifier(%struct.notifier_block*) #1

declare dso_local i32 @unregister_switchdev_notifier(i32*) #1

declare dso_local i32 @unregister_fib_notifier(i32*) #1

declare dso_local i32 @rocker_remove_ports(%struct.rocker*) #1

declare dso_local i32 @rocker_write32(%struct.rocker*, i32, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @free_irq(i32, %struct.rocker*) #1

declare dso_local i32 @rocker_msix_vector(%struct.rocker*, i32) #1

declare dso_local i32 @rocker_dma_rings_fini(%struct.rocker*) #1

declare dso_local i32 @rocker_msix_fini(%struct.rocker*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.rocker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
