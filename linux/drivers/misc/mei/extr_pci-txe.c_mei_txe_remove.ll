; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-txe.c_mei_txe_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-txe.c_mei_txe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.mei_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"mei: dev == NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mei_txe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_txe_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mei_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.mei_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.mei_device* %5, %struct.mei_device** %3, align 8
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = icmp ne %struct.mei_device* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = call i32 @dev_err(i32* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = call i32 @pm_runtime_get_noresume(i32* %14)
  %16 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %17 = call i32 @mei_stop(%struct.mei_device* %16)
  %18 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %19 = call i32 @mei_txe_unset_pm_domain(%struct.mei_device* %18)
  %20 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %21 = call i32 @mei_disable_interrupts(%struct.mei_device* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.mei_device* %25)
  %27 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %28 = call i32 @mei_deregister(%struct.mei_device* %27)
  br label %29

29:                                               ; preds = %12, %8
  ret void
}

declare dso_local %struct.mei_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @mei_stop(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_unset_pm_domain(%struct.mei_device*) #1

declare dso_local i32 @mei_disable_interrupts(%struct.mei_device*) #1

declare dso_local i32 @free_irq(i32, %struct.mei_device*) #1

declare dso_local i32 @mei_deregister(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
