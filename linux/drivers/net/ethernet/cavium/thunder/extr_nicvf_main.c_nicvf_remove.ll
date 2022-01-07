; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i64 }
%struct.nicvf = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }

@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nicvf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %67

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.nicvf* @netdev_priv(%struct.net_device* %12)
  store %struct.nicvf* %13, %struct.nicvf** %4, align 8
  %14 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NETREG_REGISTERED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @unregister_netdev(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %27, %21, %11
  %31 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %37 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @destroy_workqueue(i32* %38)
  %40 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %41 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %44 = call i32 @nicvf_unregister_interrupts(%struct.nicvf* %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @pci_set_drvdata(%struct.pci_dev* %45, i32* null)
  %47 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %48 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %53 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @free_percpu(i64 %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %58 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cavium_ptp_put(i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @free_netdev(%struct.net_device* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = call i32 @pci_release_regions(%struct.pci_dev* %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = call i32 @pci_disable_device(%struct.pci_dev* %65)
  br label %67

67:                                               ; preds = %56, %10
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @nicvf_unregister_interrupts(%struct.nicvf*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @free_percpu(i64) #1

declare dso_local i32 @cavium_ptp_put(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
