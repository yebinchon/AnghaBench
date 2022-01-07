; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_async_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_async_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_fmt = type { i64, i32 }
%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.cal_ctx = type { i32, %struct.cal_fmt**, %struct.v4l2_subdev* }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Rejecting subdev %s (Already set!!)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Using sensor %s for capture\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"subdev %s: code: %04x idx: %d\0A\00", align 1
@cal_formats = common dso_local global %struct.cal_fmt* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"matched fourcc: %s: code: %04x idx: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"No suitable format reported by subdev %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @cal_async_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_async_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.cal_ctx*, align 8
  %9 = alloca %struct.v4l2_subdev_mbus_code_enum, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cal_fmt*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %15 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %16 = call %struct.cal_ctx* @notifier_to_ctx(%struct.v4l2_async_notifier* %15)
  store %struct.cal_ctx* %16, %struct.cal_ctx** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %17, i32 0, i32 2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %18, align 8
  %20 = icmp ne %struct.v4l2_subdev* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ctx_info(%struct.cal_ctx* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %4, align 4
  br label %123

27:                                               ; preds = %3
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %29 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %29, i32 0, i32 2
  store %struct.v4l2_subdev* %28, %struct.v4l2_subdev** %30, align 8
  %31 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %106, %27
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %109

43:                                               ; preds = %38
  %44 = call i32 @memset(%struct.v4l2_subdev_mbus_code_enum* %9, i32 0, i32 16)
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %9, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %48 = load i32, i32* @pad, align 4
  %49 = load i32, i32* @enum_mbus_code, align 4
  %50 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %47, i32 %48, i32 %49, i32* null, %struct.v4l2_subdev_mbus_code_enum* %9)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %106

54:                                               ; preds = %43
  %55 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %9, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 2, %struct.cal_ctx* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %58, i64 %60, i32 %61)
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %102, %54
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.cal_fmt*, %struct.cal_fmt** @cal_formats, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.cal_fmt* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %63
  %69 = load %struct.cal_fmt*, %struct.cal_fmt** @cal_formats, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %69, i64 %71
  store %struct.cal_fmt* %72, %struct.cal_fmt** %14, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %9, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cal_fmt*, %struct.cal_fmt** %14, align 8
  %76 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %68
  %80 = load %struct.cal_fmt*, %struct.cal_fmt** %14, align 8
  %81 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %82 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %81, i32 0, i32 1
  %83 = load %struct.cal_fmt**, %struct.cal_fmt*** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.cal_fmt*, %struct.cal_fmt** %83, i64 %85
  store %struct.cal_fmt* %80, %struct.cal_fmt** %86, align 8
  %87 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %88 = load %struct.cal_fmt*, %struct.cal_fmt** %14, align 8
  %89 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @fourcc_to_str(i32 %90)
  %92 = load %struct.cal_fmt*, %struct.cal_fmt** %14, align 8
  %93 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 2, %struct.cal_ctx* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %91, i64 %94, i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %100 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %79, %68
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %63

105:                                              ; preds = %63
  br label %106

106:                                              ; preds = %105, %53
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %38

109:                                              ; preds = %38
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %115 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ctx_err(%struct.cal_ctx* %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %123

120:                                              ; preds = %109
  %121 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %122 = call i32 @cal_complete_ctx(%struct.cal_ctx* %121)
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %112, %21
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.cal_ctx* @notifier_to_ctx(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @ctx_info(%struct.cal_ctx*, i8*, i32) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.v4l2_subdev_mbus_code_enum*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_mbus_code_enum*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cal_fmt*) #1

declare dso_local i32 @fourcc_to_str(i32) #1

declare dso_local i32 @ctx_err(%struct.cal_ctx*, i8*, i32) #1

declare dso_local i32 @cal_complete_ctx(%struct.cal_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
