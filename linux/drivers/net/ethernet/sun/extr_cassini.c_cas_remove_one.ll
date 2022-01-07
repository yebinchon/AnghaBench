; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.cas = type { i32, i32, i32, i64, i32, i64, i32, i32 }

@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cas_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cas*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.cas* @netdev_priv(%struct.net_device* %11)
  store %struct.cas* %12, %struct.cas** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @unregister_netdev(%struct.net_device* %13)
  %15 = load %struct.cas*, %struct.cas** %4, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vfree(i32 %17)
  %19 = load %struct.cas*, %struct.cas** %4, align 8
  %20 = getelementptr inbounds %struct.cas, %struct.cas* %19, i32 0, i32 4
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.cas*, %struct.cas** %4, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 6
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.cas*, %struct.cas** %4, align 8
  %26 = getelementptr inbounds %struct.cas, %struct.cas* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %10
  %30 = load %struct.cas*, %struct.cas** %4, align 8
  %31 = call i32 @cas_shutdown(%struct.cas* %30)
  br label %32

32:                                               ; preds = %29, %10
  %33 = load %struct.cas*, %struct.cas** %4, align 8
  %34 = getelementptr inbounds %struct.cas, %struct.cas* %33, i32 0, i32 4
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.cas*, %struct.cas** %4, align 8
  %37 = getelementptr inbounds %struct.cas, %struct.cas* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %43 = load %struct.cas*, %struct.cas** %4, align 8
  %44 = getelementptr inbounds %struct.cas, %struct.cas* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pci_write_config_byte(%struct.pci_dev* %41, i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %40, %32
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = load %struct.cas*, %struct.cas** %4, align 8
  %50 = getelementptr inbounds %struct.cas, %struct.cas* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cas*, %struct.cas** %4, align 8
  %53 = getelementptr inbounds %struct.cas, %struct.cas* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pci_free_consistent(%struct.pci_dev* %48, i32 4, i32 %51, i32 %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %57 = load %struct.cas*, %struct.cas** %4, align 8
  %58 = getelementptr inbounds %struct.cas, %struct.cas* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pci_iounmap(%struct.pci_dev* %56, i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @free_netdev(%struct.net_device* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = call i32 @pci_release_regions(%struct.pci_dev* %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = call i32 @pci_disable_device(%struct.pci_dev* %65)
  br label %67

67:                                               ; preds = %47, %9
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cas_shutdown(%struct.cas*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
