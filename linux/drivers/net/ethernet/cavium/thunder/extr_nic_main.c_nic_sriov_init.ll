; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_sriov_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_sriov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nicpf = type { i32, i32, i64 }

@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"SRIOV capability is not found in PCIe config space\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_SRIOV_TOTAL_VF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"SRIOV enable failed, num VF is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"SRIOV enabled, number of VF available %d\0A\00", align 1
@NIC_SRIOV_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.nicpf*)* @nic_sriov_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_sriov_init(%struct.pci_dev* %0, %struct.nicpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.nicpf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.nicpf* %1, %struct.nicpf** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %12 = call i32 @pci_find_ext_capability(%struct.pci_dev* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @PCI_SRIOV_TOTAL_VF, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @pci_read_config_word(%struct.pci_dev* %22, i64 %26, i32* %9)
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %30 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %36 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %21
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %82

41:                                               ; preds = %37
  %42 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %43 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %46 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %47 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @nic_num_sqs_en(%struct.nicpf* %45, i32 %48)
  %50 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %51 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %53 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @pci_enable_sriov(%struct.pci_dev* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %41
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %70 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %82

72:                                               ; preds = %41
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @NIC_SRIOV_ENABLED, align 4
  %78 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %79 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %72, %64, %40, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @nic_num_sqs_en(%struct.nicpf*, i32) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
