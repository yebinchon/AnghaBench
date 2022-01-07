; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_assign_afu_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_assign_afu_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i32, i64, %struct.TYPE_4__, i32, %struct.ocxl_fn* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ocxl_fn = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Can't allocate %d PASIDs for AFU: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"PASID base=%d, enabled=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_afu*)* @assign_afu_pasid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_afu_pasid(%struct.ocxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocxl_afu*, align 8
  %4 = alloca %struct.ocxl_fn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %3, align 8
  %8 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %9 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %8, i32 0, i32 4
  %10 = load %struct.ocxl_fn*, %struct.ocxl_fn** %9, align 8
  store %struct.ocxl_fn* %10, %struct.ocxl_fn** %4, align 8
  %11 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %12 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %17 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 1, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ocxl_pasid_afu_alloc(%struct.ocxl_fn* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %1
  %34 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %35 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %41 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %43 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %42, i32 0, i32 3
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %46 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %48 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %49 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %53 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %56 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ocxl_config_set_afu_pasid(%struct.pci_dev* %47, i32 %51, i64 %54, i32 %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %63 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %33, %26
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ocxl_pasid_afu_alloc(%struct.ocxl_fn*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @ocxl_config_set_afu_pasid(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
