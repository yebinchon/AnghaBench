; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_hardware_ops* }
%struct.qlcnic_hardware_ops = type { i32 (%struct.pci_dev.0*, i32)* }
%struct.pci_dev.0 = type opaque

@.str = private unnamed_addr constant [44 x i8] c"AER error_detected handler not registered.\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @qlcnic_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_io_error_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_hardware_ops*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.qlcnic_hardware_ops*, %struct.qlcnic_hardware_ops** %13, align 8
  store %struct.qlcnic_hardware_ops* %14, %struct.qlcnic_hardware_ops** %7, align 8
  %15 = load %struct.qlcnic_hardware_ops*, %struct.qlcnic_hardware_ops** %7, align 8
  %16 = getelementptr inbounds %struct.qlcnic_hardware_ops, %struct.qlcnic_hardware_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.pci_dev.0*, i32)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.qlcnic_hardware_ops*, %struct.qlcnic_hardware_ops** %7, align 8
  %21 = getelementptr inbounds %struct.qlcnic_hardware_ops, %struct.qlcnic_hardware_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %21, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = bitcast %struct.pci_dev* %23 to %struct.pci_dev.0*
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %22(%struct.pci_dev.0* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
