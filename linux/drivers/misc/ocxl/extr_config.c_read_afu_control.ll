; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_afu_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_afu_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_afu_config = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Can't find AFU control DVSEC for AFU %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OCXL_DVSEC_AFU_CTRL_PASID_SUP = common dso_local global i64 0, align 8
@OCXL_DVSEC_AFU_CTRL_ACTAG_SUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_afu_config*)* @read_afu_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_afu_control(%struct.pci_dev* %0, %struct.ocxl_afu_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ocxl_afu_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ocxl_afu_config* %1, %struct.ocxl_afu_config** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %11 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @find_dvsec_afu_ctrl(%struct.pci_dev* %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %20 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %28 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_PASID_SUP, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %29, i64 %33, i32* %7)
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @EXTRACT_BITS(i32 %35, i32 0, i32 4)
  %37 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %38 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_ACTAG_SUP, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @pci_read_config_word(%struct.pci_dev* %39, i64 %43, i32* %8)
  %45 = load i32, i32* %8, align 4
  %46 = call i8* @EXTRACT_BITS(i32 %45, i32 0, i32 11)
  %47 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %48 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %25, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @find_dvsec_afu_ctrl(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i8* @EXTRACT_BITS(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
