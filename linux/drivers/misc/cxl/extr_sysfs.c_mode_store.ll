; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl_afu*, i32)*, i32 (%struct.cxl_afu*, i32)* }
%struct.cxl_afu = type { i32, i32, i64, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dedicated_process\00", align 1
@CXL_MODE_DEDICATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"afu_directed\00", align 1
@CXL_MODE_DIRECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cxl_afu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.cxl_afu* @to_cxl_afu(%struct.device* %14)
  store %struct.cxl_afu* %15, %struct.cxl_afu** %10, align 8
  store i32 -1, i32* %12, align 4
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %19 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %22 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %21, i32 0, i32 3
  %23 = call i32 @idr_is_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %82

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @CXL_MODE_DEDICATED, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 12)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @CXL_MODE_DIRECTED, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %82

49:                                               ; preds = %43
  %50 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %51 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %11, align 4
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %54 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %56 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %58 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.cxl_afu*, i32)*, i32 (%struct.cxl_afu*, i32)** %61, align 8
  %63 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 %62(%struct.cxl_afu* %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %87

69:                                               ; preds = %49
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32 (%struct.cxl_afu*, i32)*, i32 (%struct.cxl_afu*, i32)** %71, align 8
  %73 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 %72(%struct.cxl_afu* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %87

79:                                               ; preds = %69
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %87

82:                                               ; preds = %46, %25
  %83 = load %struct.cxl_afu*, %struct.cxl_afu** %10, align 8
  %84 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %79, %77, %67
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.cxl_afu* @to_cxl_afu(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_is_empty(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
