; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_validate_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_validate_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn_config = type { i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"AFUs are defined but no PASIDs are requested\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCXL_MAX_AFU_PER_FUNCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Max AFU index out of architectural limit (%d vs %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_fn_config*)* @validate_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_function(%struct.pci_dev* %0, %struct.ocxl_fn_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ocxl_fn_config*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ocxl_fn_config* %1, %struct.ocxl_fn_config** %5, align 8
  %6 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %7 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %12 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %10, %2
  %22 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %23 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OCXL_MAX_AFU_PER_FUNCTION, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load %struct.ocxl_fn_config*, %struct.ocxl_fn_config** %5, align 8
  %31 = getelementptr inbounds %struct.ocxl_fn_config, %struct.ocxl_fn_config* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OCXL_MAX_AFU_PER_FUNCTION, align 8
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %27, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
