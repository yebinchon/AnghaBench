; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_read_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_read_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Invalid Transaction Layer DVSEC configuration: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid Function DVSEC configuration: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid AFU configuration: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Invalid vendor specific DVSEC configuration: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_config_read_function(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ocxl_fn_config*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %9 = call i32 @read_pasid(%struct.pci_dev* %7, %struct.ocxl_fn_config* %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %12 = call i32 @read_dvsec_tl(%struct.pci_dev* %10, %struct.ocxl_fn_config* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %25 = call i32 @read_dvsec_function(%struct.pci_dev* %23, %struct.ocxl_fn_config* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %65

35:                                               ; preds = %22
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %38 = call i32 @read_dvsec_afu_info(%struct.pci_dev* %36, %struct.ocxl_fn_config* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %65

48:                                               ; preds = %35
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = call i32 @read_dvsec_vendor(%struct.pci_dev* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %48
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %63 = call i32 @validate_function(%struct.pci_dev* %61, %struct.ocxl_fn_config* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %53, %41, %28, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @read_pasid(%struct.pci_dev*, %struct.ocxl_fn_config*) #1

declare dso_local i32 @read_dvsec_tl(%struct.pci_dev*, %struct.ocxl_fn_config*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @read_dvsec_function(%struct.pci_dev*, %struct.ocxl_fn_config*) #1

declare dso_local i32 @read_dvsec_afu_info(%struct.pci_dev*, %struct.ocxl_fn_config*) #1

declare dso_local i32 @read_dvsec_vendor(%struct.pci_dev*) #1

declare dso_local i32 @validate_function(%struct.pci_dev*, %struct.ocxl_fn_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
