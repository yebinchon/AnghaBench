; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_ocxl_function_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_ocxl_function_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_fn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unsupported memory model (hash)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"function init failed: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Can't initialize AFU index %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%d AFU(s) configured\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ocxl_fn* @ocxl_function_open(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.ocxl_fn*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ocxl_fn*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 (...) @radix_enabled()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 (i32*, i8*, ...) @dev_err(i32* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.ocxl_fn* @ERR_PTR(i32 %15)
  store %struct.ocxl_fn* %16, %struct.ocxl_fn** %2, align 8
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = call %struct.ocxl_fn* @init_function(%struct.pci_dev* %18)
  store %struct.ocxl_fn* %19, %struct.ocxl_fn** %7, align 8
  %20 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  %21 = call i64 @IS_ERR(%struct.ocxl_fn* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  %27 = call i64 @PTR_ERR(%struct.ocxl_fn* %26)
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  store %struct.ocxl_fn* %29, %struct.ocxl_fn** %2, align 8
  br label %71

30:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  %34 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %32, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %31
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  %41 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @ocxl_config_check_afu_index(%struct.pci_dev* %39, %struct.TYPE_2__* %41, i64 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @init_afu(%struct.pci_dev* %47, %struct.ocxl_fn* %48, i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  br label %62

58:                                               ; preds = %46
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %38
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %31

65:                                               ; preds = %31
  %66 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.ocxl_fn*, %struct.ocxl_fn** %7, align 8
  store %struct.ocxl_fn* %70, %struct.ocxl_fn** %2, align 8
  br label %71

71:                                               ; preds = %65, %23, %10
  %72 = load %struct.ocxl_fn*, %struct.ocxl_fn** %2, align 8
  ret %struct.ocxl_fn* %72
}

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.ocxl_fn* @ERR_PTR(i32) #1

declare dso_local %struct.ocxl_fn* @init_function(%struct.pci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.ocxl_fn*) #1

declare dso_local i64 @PTR_ERR(%struct.ocxl_fn*) #1

declare dso_local i32 @ocxl_config_check_afu_index(%struct.pci_dev*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @init_afu(%struct.pci_dev*, %struct.ocxl_fn*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
