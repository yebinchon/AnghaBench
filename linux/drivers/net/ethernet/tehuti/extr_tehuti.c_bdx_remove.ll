; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_nic = type { i32, i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@IRQ_MSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @bdx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_nic*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.pci_nic* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.pci_nic* %7, %struct.pci_nic** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.pci_nic*, %struct.pci_nic** %3, align 8
  %11 = getelementptr inbounds %struct.pci_nic, %struct.pci_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.pci_nic*, %struct.pci_nic** %3, align 8
  %16 = getelementptr inbounds %struct.pci_nic, %struct.pci_nic* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %4, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @unregister_netdev(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @free_netdev(%struct.net_device* %26)
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.pci_nic*, %struct.pci_nic** %3, align 8
  %33 = getelementptr inbounds %struct.pci_nic, %struct.pci_nic* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @iounmap(i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = call i32 @pci_release_regions(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = call i32 @pci_disable_device(%struct.pci_dev* %38)
  %40 = load %struct.pci_nic*, %struct.pci_nic** %3, align 8
  %41 = call i32 @vfree(%struct.pci_nic* %40)
  %42 = call i32 (...) @RET()
  ret void
}

declare dso_local %struct.pci_nic* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @vfree(%struct.pci_nic*) #1

declare dso_local i32 @RET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
