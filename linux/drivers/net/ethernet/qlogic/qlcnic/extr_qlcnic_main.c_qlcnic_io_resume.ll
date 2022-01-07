; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_io_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_io_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_hardware_ops* }
%struct.qlcnic_hardware_ops = type { i32 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque

@.str = private unnamed_addr constant [36 x i8] c"AER resume handler not registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qlcnic_io_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_io_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_ops*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.qlcnic_adapter* %6, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.qlcnic_hardware_ops*, %struct.qlcnic_hardware_ops** %10, align 8
  store %struct.qlcnic_hardware_ops* %11, %struct.qlcnic_hardware_ops** %4, align 8
  %12 = load %struct.qlcnic_hardware_ops*, %struct.qlcnic_hardware_ops** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_hardware_ops, %struct.qlcnic_hardware_ops* %12, i32 0, i32 0
  %14 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %13, align 8
  %15 = icmp ne i32 (%struct.pci_dev.0*)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.qlcnic_hardware_ops*, %struct.qlcnic_hardware_ops** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_hardware_ops, %struct.qlcnic_hardware_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %18, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = bitcast %struct.pci_dev* %20 to %struct.pci_dev.0*
  %22 = call i32 %19(%struct.pci_dev.0* %21)
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
