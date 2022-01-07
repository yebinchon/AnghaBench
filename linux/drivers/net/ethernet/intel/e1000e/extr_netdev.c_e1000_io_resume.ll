; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_io_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_io_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32 }

@FLAG_HAS_AMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @e1000_io_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_io_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %4, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %10 = call i32 @e1000_init_manageability_pt(%struct.e1000_adapter* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i64 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %16 = call i32 @e1000e_up(%struct.e1000_adapter* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @netif_device_attach(%struct.net_device* %18)
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FLAG_HAS_AMT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %28 = call i32 @e1000e_get_hw_control(%struct.e1000_adapter* %27)
  br label %29

29:                                               ; preds = %26, %17
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e1000_init_manageability_pt(%struct.e1000_adapter*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @e1000e_up(%struct.e1000_adapter*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @e1000e_get_hw_control(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
