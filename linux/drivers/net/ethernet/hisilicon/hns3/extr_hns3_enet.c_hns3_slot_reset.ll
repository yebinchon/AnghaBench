; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.hnae3_ae_dev = type { i64, %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.hnae3_ae_dev.0*, i64*)*, i32 (%struct.pci_dev*, i32*)*, i32 (%struct.hnae3_ae_dev.1*, i32)* }
%struct.hnae3_ae_dev.0 = type opaque
%struct.hnae3_ae_dev.1 = type opaque

@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"requesting reset due to PCI error\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @hns3_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  %5 = alloca %struct.hnae3_ae_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.hnae3_ae_dev* %9, %struct.hnae3_ae_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %13 = icmp ne %struct.hnae3_ae_dev* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %15, i32 0, i32 1
  %17 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %16, align 8
  %18 = icmp ne %struct.hnae3_ae_ops* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %14
  %22 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %22, i32 0, i32 1
  %24 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %23, align 8
  store %struct.hnae3_ae_ops* %24, %struct.hnae3_ae_ops** %5, align 8
  %25 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %26 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %25, i32 0, i32 1
  %27 = load i32 (%struct.pci_dev*, i32*)*, i32 (%struct.pci_dev*, i32*)** %26, align 8
  %28 = icmp ne i32 (%struct.pci_dev*, i32*)* %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %21
  %30 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %31 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.hnae3_ae_dev.0*, i64*)*, i32 (%struct.hnae3_ae_dev.0*, i64*)** %31, align 8
  %33 = icmp ne i32 (%struct.hnae3_ae_dev.0*, i64*)* %32, null
  br i1 %33, label %34, label %69

34:                                               ; preds = %29
  %35 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %36 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %35, i32 0, i32 2
  %37 = load i32 (%struct.hnae3_ae_dev.1*, i32)*, i32 (%struct.hnae3_ae_dev.1*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.hnae3_ae_dev.1*, i32)* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %34
  %40 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %41 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %46 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.hnae3_ae_dev.0*, i64*)*, i32 (%struct.hnae3_ae_dev.0*, i64*)** %46, align 8
  %48 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %49 = bitcast %struct.hnae3_ae_dev* %48 to %struct.hnae3_ae_dev.0*
  %50 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %51 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %50, i32 0, i32 0
  %52 = call i32 %47(%struct.hnae3_ae_dev.0* %49, i64* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %54 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %53, i32 0, i32 2
  %55 = load i32 (%struct.hnae3_ae_dev.1*, i32)*, i32 (%struct.hnae3_ae_dev.1*, i32)** %54, align 8
  %56 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %57 = bitcast %struct.hnae3_ae_dev* %56 to %struct.hnae3_ae_dev.1*
  %58 = load i32, i32* %6, align 4
  %59 = call i32 %55(%struct.hnae3_ae_dev.1* %57, i32 %58)
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 @dev_info(%struct.device* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %63 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %62, i32 0, i32 1
  %64 = load i32 (%struct.pci_dev*, i32*)*, i32 (%struct.pci_dev*, i32*)** %63, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = call i32 %64(%struct.pci_dev* %65, i32* null)
  br label %67

67:                                               ; preds = %44, %39
  %68 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %34, %29, %21
  %70 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %67, %19
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
