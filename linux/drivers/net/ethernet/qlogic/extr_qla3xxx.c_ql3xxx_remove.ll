; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql3xxx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql3xxx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ql3_adapter = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ql3xxx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql3xxx_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ql3_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ql3_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ql3_adapter* %8, %struct.ql3_adapter** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %12 = call i32 @ql_disable_interrupts(%struct.ql3_adapter* %11)
  %13 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %18, i32 0, i32 3
  %20 = call i32 @cancel_delayed_work(i32* %19)
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %21, i32 0, i32 2
  %23 = call i32 @cancel_delayed_work(i32* %22)
  %24 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @destroy_workqueue(i32* %26)
  %28 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @iounmap(i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_release_regions(%struct.pci_dev* %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @free_netdev(%struct.net_device* %37)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.ql3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ql_disable_interrupts(%struct.ql3_adapter*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
