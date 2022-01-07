; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.jpu = type { i64, i32, i32, i32, %struct.video_device }
%struct.video_device = type { i32 }
%struct.jpu_ctx = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.jpu*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@jpu_queue_init = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @jpu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpu_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.jpu*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.jpu_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.jpu* @video_drvdata(%struct.file* %8)
  store %struct.jpu* %9, %struct.jpu** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.jpu_ctx* @kzalloc(i32 56, i32 %12)
  store %struct.jpu_ctx* %13, %struct.jpu_ctx** %6, align 8
  %14 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %15 = icmp ne %struct.jpu_ctx* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %146

19:                                               ; preds = %1
  %20 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %20, i32 0, i32 1
  %22 = load %struct.video_device*, %struct.video_device** %5, align 8
  %23 = call i32 @v4l2_fh_init(%struct.TYPE_9__* %21, %struct.video_device* %22)
  %24 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %24, i32 0, i32 5
  %26 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  %29 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %29, i32 0, i32 1
  %31 = load %struct.file*, %struct.file** %3, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %32, align 8
  %33 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %33, i32 0, i32 1
  %35 = call i32 @v4l2_fh_add(%struct.TYPE_9__* %34)
  %36 = load %struct.jpu*, %struct.jpu** %4, align 8
  %37 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %37, i32 0, i32 4
  store %struct.jpu* %36, %struct.jpu** %38, align 8
  %39 = load %struct.video_device*, %struct.video_device** %5, align 8
  %40 = load %struct.jpu*, %struct.jpu** %4, align 8
  %41 = getelementptr inbounds %struct.jpu, %struct.jpu* %40, i32 0, i32 4
  %42 = icmp eq %struct.video_device* %39, %41
  %43 = zext i1 %42 to i32
  %44 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %47 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %54 = call i32 @__jpu_try_fmt(%struct.jpu_ctx* %46, i32* %49, i32* %52, i32 %53)
  %55 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %56 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %63 = call i32 @__jpu_try_fmt(%struct.jpu_ctx* %55, i32* %58, i32* %61, i32 %62)
  %64 = load %struct.jpu*, %struct.jpu** %4, align 8
  %65 = getelementptr inbounds %struct.jpu, %struct.jpu* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %68 = load i32, i32* @jpu_queue_init, align 4
  %69 = call i32 @v4l2_m2m_ctx_init(i32 %66, %struct.jpu_ctx* %67, i32 %68)
  %70 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %19
  %80 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %7, align 4
  br label %136

85:                                               ; preds = %19
  %86 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %87 = call i32 @jpu_controls_create(%struct.jpu_ctx* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %136

91:                                               ; preds = %85
  %92 = load %struct.jpu*, %struct.jpu** %4, align 8
  %93 = getelementptr inbounds %struct.jpu, %struct.jpu* %92, i32 0, i32 1
  %94 = call i64 @mutex_lock_interruptible(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @ERESTARTSYS, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %136

99:                                               ; preds = %91
  %100 = load %struct.jpu*, %struct.jpu** %4, align 8
  %101 = getelementptr inbounds %struct.jpu, %struct.jpu* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load %struct.jpu*, %struct.jpu** %4, align 8
  %106 = getelementptr inbounds %struct.jpu, %struct.jpu* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_prepare_enable(i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %132

112:                                              ; preds = %104
  %113 = load %struct.jpu*, %struct.jpu** %4, align 8
  %114 = call i32 @jpu_reset(%struct.jpu* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %127

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %99
  %120 = load %struct.jpu*, %struct.jpu** %4, align 8
  %121 = getelementptr inbounds %struct.jpu, %struct.jpu* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.jpu*, %struct.jpu** %4, align 8
  %125 = getelementptr inbounds %struct.jpu, %struct.jpu* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  store i32 0, i32* %2, align 4
  br label %146

127:                                              ; preds = %117
  %128 = load %struct.jpu*, %struct.jpu** %4, align 8
  %129 = getelementptr inbounds %struct.jpu, %struct.jpu* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @clk_disable_unprepare(i32 %130)
  br label %132

132:                                              ; preds = %127, %111
  %133 = load %struct.jpu*, %struct.jpu** %4, align 8
  %134 = getelementptr inbounds %struct.jpu, %struct.jpu* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  br label %136

136:                                              ; preds = %132, %96, %90, %79
  %137 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %137, i32 0, i32 1
  %139 = call i32 @v4l2_fh_del(%struct.TYPE_9__* %138)
  %140 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %141 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %140, i32 0, i32 1
  %142 = call i32 @v4l2_fh_exit(%struct.TYPE_9__* %141)
  %143 = load %struct.jpu_ctx*, %struct.jpu_ctx** %6, align 8
  %144 = call i32 @kfree(%struct.jpu_ctx* %143)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %136, %119, %16
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.jpu* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.jpu_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_9__*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_9__*) #1

declare dso_local i32 @__jpu_try_fmt(%struct.jpu_ctx*, i32*, i32*, i32) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.jpu_ctx*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @jpu_controls_create(%struct.jpu_ctx*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @jpu_reset(%struct.jpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.jpu_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
