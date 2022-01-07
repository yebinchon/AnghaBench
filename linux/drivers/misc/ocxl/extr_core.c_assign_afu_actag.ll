; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_assign_afu_actag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_assign_afu_actag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i32, i64, %struct.TYPE_4__, %struct.ocxl_fn* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ocxl_fn = type { i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Can't allocate %d actags for AFU: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"actag base=%d enabled=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_afu*)* @assign_afu_actag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_afu_actag(%struct.ocxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocxl_afu*, align 8
  %4 = alloca %struct.ocxl_fn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %3, align 8
  %8 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %9 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %8, i32 0, i32 3
  %10 = load %struct.ocxl_fn*, %struct.ocxl_fn** %9, align 8
  store %struct.ocxl_fn* %10, %struct.ocxl_fn** %4, align 8
  %11 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %12 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %17 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %21 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %25 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ocxl_actag_afu_alloc(%struct.ocxl_fn* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %73

40:                                               ; preds = %1
  %41 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %42 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %48 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %51 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %53 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %54 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %58 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %61 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ocxl_config_set_afu_actag(%struct.pci_dev* %52, i32 %56, i64 %59, i32 %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %67 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ocxl_afu*, %struct.ocxl_afu** %3, align 8
  %70 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %40, %33
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ocxl_actag_afu_alloc(%struct.ocxl_fn*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @ocxl_config_set_afu_actag(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
