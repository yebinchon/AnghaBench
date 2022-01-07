; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_dvsec_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_dvsec_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i32, i32 }

@OCXL_DVSEC_FUNC_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't find function DVSEC\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OCXL_DVSEC_FUNC_OFF_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Function doesn't define any AFU\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Function DVSEC:\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"  Max AFU index = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_fn_config*)* @read_dvsec_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dvsec_function(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ocxl_fn_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @OCXL_DVSEC_FUNC_ID, align 4
  %11 = call i32 @find_dvsec(%struct.pci_dev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %23 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @OCXL_DVSEC_FUNC_OFF_INDEX, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i64 %28, i32* %8)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @EXTRACT_BIT(i32 %30, i32 31)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %20
  %35 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %36 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %45

40:                                               ; preds = %20
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @EXTRACT_BITS(i32 %41, i32 24, i32 29)
  %43 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %44 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %52 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @find_dvsec(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @EXTRACT_BIT(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @EXTRACT_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
