; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_terminate_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_terminate_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@OCXL_DVSEC_AFU_CTRL_TERM_PASID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"Can't terminate PASID %#x, previous termination didn't complete\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OCXL_DVSEC_PASID_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@OCXL_CFG_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"Timeout while waiting for AFU to terminate PASID %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_config_terminate_pasid(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_TERM_PASID, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @pci_read_config_dword(%struct.pci_dev* %10, i64 %14, i32* %8)
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @EXTRACT_BIT(i32 %16, i32 20)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %82

26:                                               ; preds = %3
  %27 = load i32, i32* @OCXL_DVSEC_PASID_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @OCXL_DVSEC_PASID_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = call i32 @BIT(i32 20)
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_TERM_PASID, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pci_write_config_dword(%struct.pci_dev* %39, i64 %43, i32 %44)
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* @HZ, align 8
  %48 = load i64, i64* @OCXL_CFG_TIMEOUT, align 8
  %49 = mul i64 %47, %48
  %50 = add i64 %46, %49
  store i64 %50, i64* %9, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_TERM_PASID, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @pci_read_config_dword(%struct.pci_dev* %51, i64 %55, i32* %8)
  br label %57

57:                                               ; preds = %73, %26
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @EXTRACT_BIT(i32 %58, i32 20)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @time_after_eq(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %82

73:                                               ; preds = %61
  %74 = call i32 (...) @cpu_relax()
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_TERM_PASID, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @pci_read_config_dword(%struct.pci_dev* %75, i64 %79, i32* %8)
  br label %57

81:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %66, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @EXTRACT_BIT(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
