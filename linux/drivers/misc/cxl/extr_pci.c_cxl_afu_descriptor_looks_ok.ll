; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_afu_descriptor_looks_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_afu_descriptor_looks_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.cxl_afu*, i32, i32, i64*)* }
%struct.cxl_afu = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"per-process PSA can't fit inside the PSA!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"AFU uses pp_size(%#016llx) < PAGE_SIZE per-process PSA!\0A\00", align 1
@cxl_ops = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"ABORTING: AFU configuration record %i is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CXL_MODE_DEDICATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"AFU does not support any processes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @cxl_afu_descriptor_looks_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_afu_descriptor_looks_ok(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %13 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %12, i32 0, i32 7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %18 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %17, i32 0, i32 6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %23 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %26 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %21, %29
  %31 = icmp slt i64 %16, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %11
  %33 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %34 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %33, i32 0, i32 4
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %106

38:                                               ; preds = %11, %1
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %40 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %45 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %51 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %50, i32 0, i32 4
  %52 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %53 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %43, %38
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %60 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxl_ops, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32 (%struct.cxl_afu*, i32, i32, i64*)*, i32 (%struct.cxl_afu*, i32, i32, i64*)** %65, align 8
  %67 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 %66(%struct.cxl_afu* %67, i32 %68, i32 0, i64* %6)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %6, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72, %63
  %76 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %77 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %76, i32 0, i32 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %106

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %57

86:                                               ; preds = %57
  %87 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %88 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CXL_MODE_DEDICATED, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %96 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %101 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %100, i32 0, i32 4
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %94, %86
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %99, %75, %32
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
