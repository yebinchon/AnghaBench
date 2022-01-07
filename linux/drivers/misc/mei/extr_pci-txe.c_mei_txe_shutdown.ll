; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-txe.c_mei_txe_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-txe.c_mei_txe_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.mei_device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"shutdown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mei_txe_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_txe_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mei_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.mei_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.mei_device* %5, %struct.mei_device** %3, align 8
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = icmp ne %struct.mei_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %14 = call i32 @mei_stop(%struct.mei_device* %13)
  %15 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %16 = call i32 @mei_txe_unset_pm_domain(%struct.mei_device* %15)
  %17 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %18 = call i32 @mei_disable_interrupts(%struct.mei_device* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.mei_device* %22)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.mei_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mei_stop(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_unset_pm_domain(%struct.mei_device*) #1

declare dso_local i32 @mei_disable_interrupts(%struct.mei_device*) #1

declare dso_local i32 @free_irq(i32, %struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
