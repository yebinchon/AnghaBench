; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_afu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_read_afu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@OCXL_CFG_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Invalid offset in AFU info DVSEC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCXL_DVSEC_AFU_INFO_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Timeout while reading AFU info DVSEC (offset=%d)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OCXL_DVSEC_AFU_INFO_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_fn_config*, i32, i32*)* @read_afu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_afu_info(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ocxl_fn_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = load i64, i64* @OCXL_CFG_TIMEOUT, align 8
  %16 = mul i64 %14, %15
  %17 = add i64 %13, %16
  store i64 %17, i64* %11, align 8
  %18 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %7, align 8
  %19 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @EXTRACT_BIT(i32 %21, i32 31)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %77

30:                                               ; preds = %4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @OCXL_DVSEC_AFU_INFO_OFF, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pci_write_config_dword(%struct.pci_dev* %31, i64 %35, i32 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @OCXL_DVSEC_AFU_INFO_OFF, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @pci_read_config_dword(%struct.pci_dev* %38, i64 %42, i32* %10)
  br label %44

44:                                               ; preds = %61, %30
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @EXTRACT_BIT(i32 %45, i32 31)
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @time_after_eq(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %77

61:                                               ; preds = %49
  %62 = call i32 (...) @cpu_relax()
  %63 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @OCXL_DVSEC_AFU_INFO_OFF, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @pci_read_config_dword(%struct.pci_dev* %63, i64 %67, i32* %10)
  br label %44

69:                                               ; preds = %44
  %70 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @OCXL_DVSEC_AFU_INFO_DATA, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @pci_read_config_dword(%struct.pci_dev* %70, i64 %74, i32* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %69, %54, %24
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @EXTRACT_BIT(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
