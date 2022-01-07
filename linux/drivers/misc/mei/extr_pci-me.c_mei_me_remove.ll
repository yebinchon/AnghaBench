; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-me.c_mei_me_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-me.c_mei_me_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.mei_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mei_me_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_me_remove(%struct.pci_dev* %0) #0 {
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
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %11 = call i64 @mei_pg_is_enabled(%struct.mei_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call i32 @pm_runtime_get_noresume(i32* %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %22 = call i32 @mei_stop(%struct.mei_device* %21)
  %23 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %24 = call i32 @mei_me_unset_pm_domain(%struct.mei_device* %23)
  %25 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %26 = call i32 @mei_disable_interrupts(%struct.mei_device* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.mei_device* %30)
  %32 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %33 = call i32 @mei_deregister(%struct.mei_device* %32)
  br label %34

34:                                               ; preds = %17, %8
  ret void
}

declare dso_local %struct.mei_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @mei_pg_is_enabled(%struct.mei_device*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mei_stop(%struct.mei_device*) #1

declare dso_local i32 @mei_me_unset_pm_domain(%struct.mei_device*) #1

declare dso_local i32 @mei_disable_interrupts(%struct.mei_device*) #1

declare dso_local i32 @free_irq(i32, %struct.mei_device*) #1

declare dso_local i32 @mei_deregister(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
