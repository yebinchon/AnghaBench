; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qlcnic_adapter = type { i32 }

@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@__QLCNIC_AER = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @qlcnic_83xx_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_io_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.qlcnic_adapter* %8, %struct.qlcnic_adapter** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @pci_channel_io_normal, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %14
  %21 = load i32, i32* @__QLCNIC_AER, align 4
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = call i32 @qlcnic_83xx_aer_stop_poll_work(%struct.qlcnic_adapter* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_save_state(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_disable_device(%struct.pci_dev* %33)
  %35 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %20, %18, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_aer_stop_poll_work(%struct.qlcnic_adapter*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
