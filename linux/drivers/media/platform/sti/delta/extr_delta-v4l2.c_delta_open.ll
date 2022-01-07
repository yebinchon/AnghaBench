; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.delta_dev = type { i32, i32, i32, i64, i64, i32 }
%struct.delta_ctx = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.delta_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@delta_run_work = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s failed to initialize m2m context (%d)\0A\00", align 1
@DELTA_PREFIX = common dso_local global i32 0, align 4
@DELTA_STATE_WF_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"[%3d:----]\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to enable st231 clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to enable delta promip clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s decoder instance created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @delta_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.delta_dev*, align 8
  %5 = alloca %struct.delta_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.delta_dev* @video_drvdata(%struct.file* %7)
  store %struct.delta_dev* %8, %struct.delta_dev** %4, align 8
  store %struct.delta_ctx* null, %struct.delta_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %10 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.delta_ctx* @kzalloc(i32 32, i32 %12)
  store %struct.delta_ctx* %13, %struct.delta_ctx** %5, align 8
  %14 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %15 = icmp ne %struct.delta_ctx* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %142

19:                                               ; preds = %1
  %20 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %21 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %21, i32 0, i32 6
  store %struct.delta_dev* %20, %struct.delta_dev** %22, align 8
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 0
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = call i32 @video_devdata(%struct.file* %25)
  %27 = call i32 @v4l2_fh_init(%struct.TYPE_5__* %24, i32 %26)
  %28 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %28, i32 0, i32 0
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %32, i32 0, i32 0
  %34 = call i32 @v4l2_fh_add(%struct.TYPE_5__* %33)
  %35 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %35, i32 0, i32 5
  %37 = load i32, i32* @delta_run_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %39, i32 0, i32 4
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %43 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %46 = load i32, i32* @queue_init, align 4
  %47 = call i32 @v4l2_m2m_ctx_init(i32 %44, %struct.delta_ctx* %45, i32 %46)
  %48 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %19
  %58 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %64 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DELTA_PREFIX, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %133

69:                                               ; preds = %19
  %70 = load i32, i32* @DELTA_STATE_WF_FORMAT, align 4
  %71 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %73, i32 0, i32 2
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %77 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %84 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @snprintf(i32 %82, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %88 = call i32 @set_default_params(%struct.delta_ctx* %87)
  %89 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %90 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %69
  %94 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %95 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @clk_prepare_enable(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %101 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %93
  br label %105

105:                                              ; preds = %104, %69
  %106 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %107 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %112 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @clk_prepare_enable(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %118 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dev_warn(i32 %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %110
  br label %122

122:                                              ; preds = %121, %105
  %123 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %124 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %127 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %130 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_dbg(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  store i32 0, i32* %2, align 4
  br label %147

133:                                              ; preds = %57
  %134 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %135 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %134, i32 0, i32 0
  %136 = call i32 @v4l2_fh_del(%struct.TYPE_5__* %135)
  %137 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %137, i32 0, i32 0
  %139 = call i32 @v4l2_fh_exit(%struct.TYPE_5__* %138)
  %140 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %141 = call i32 @kfree(%struct.delta_ctx* %140)
  br label %142

142:                                              ; preds = %133, %16
  %143 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %144 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %143, i32 0, i32 1
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %122
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.delta_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.delta_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_5__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.delta_ctx*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @set_default_params(%struct.delta_ctx*) #1

declare dso_local i64 @clk_prepare_enable(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.delta_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
