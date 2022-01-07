; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_eeh_err_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_eeh_err_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"EEH error detected\0A\00", align 1
@BE_ERROR_EEH = common dso_local global i32 0, align 4
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @be_eeh_err_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_eeh_err_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.be_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call %struct.be_adapter* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.be_adapter* %8, %struct.be_adapter** %6, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %15 = call i32 @be_roce_dev_remove(%struct.be_adapter* %14)
  %16 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %17 = load i32, i32* @BE_ERROR_EEH, align 4
  %18 = call i32 @be_check_error(%struct.be_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %22 = load i32, i32* @BE_ERROR_EEH, align 4
  %23 = call i32 @be_set_error(%struct.be_adapter* %21, i32 %22)
  %24 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %25 = call i32 @be_cancel_err_detection(%struct.be_adapter* %24)
  %26 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %27 = call i32 @be_cleanup(%struct.be_adapter* %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_disable_device(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @ssleep(i32 30)
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %32
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.be_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be_roce_dev_remove(%struct.be_adapter*) #1

declare dso_local i32 @be_check_error(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_set_error(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_cancel_err_detection(%struct.be_adapter*) #1

declare dso_local i32 @be_cleanup(%struct.be_adapter*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
