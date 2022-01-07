; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hnae3_ae_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hnae3_ae_dev*)* }

@.str = private unnamed_addr constant [34 x i8] c"PCI error detected, state(=%d)!!\0A\00", align 1
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Can't recover - error happened before device initialized\0A\00", align 1
@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @hns3_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hnae3_ae_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.hnae3_ae_dev* %9, %struct.hnae3_ae_dev** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %21 = icmp ne %struct.hnae3_ae_dev* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %24 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %22
  %33 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %34 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.hnae3_ae_dev*)*, i32 (%struct.hnae3_ae_dev*)** %36, align 8
  %38 = icmp ne i32 (%struct.hnae3_ae_dev*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %41 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.hnae3_ae_dev*)*, i32 (%struct.hnae3_ae_dev*)** %43, align 8
  %45 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %46 = call i32 %44(%struct.hnae3_ae_dev* %45)
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %32
  %48 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %47, %27, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
