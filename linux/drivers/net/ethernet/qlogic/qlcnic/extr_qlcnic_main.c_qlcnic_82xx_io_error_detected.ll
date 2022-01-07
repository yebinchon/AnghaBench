; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_82xx_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_82xx_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@__QLCNIC_AER = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @qlcnic_82xx_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_82xx_io_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @pci_channel_io_normal, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %18
  %25 = load i32, i32* @__QLCNIC_AER, align 4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = call i32 @netif_device_detach(%struct.net_device* %29)
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 1
  %33 = call i32 @cancel_delayed_work_sync(i32* %32)
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = call i64 @netif_running(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = call i32 @qlcnic_down(%struct.qlcnic_adapter* %38, %struct.net_device* %39)
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %43 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %42)
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %45 = call i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter* %44)
  %46 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_save_state(%struct.pci_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  %54 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %41, %22, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
