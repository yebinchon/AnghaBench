; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.fdp1_dev = type { i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32 }
%struct.fdp1_ctx = type { i32, %struct.TYPE_8__, %struct.TYPE_9__, i64, i32, %struct.fdp1_dev* }
%struct.v4l2_ctrl = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fdp1_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_DEINTERLACING_MODE = common dso_local global i32 0, align 4
@FDP1_NEXTFIELD = common dso_local global i32 0, align 4
@FDP1_FIXED3D = common dso_local global i32 0, align 4
@fdp1_ctrl_deint_menu = common dso_local global i32 0, align 4
@V4L2_CID_MIN_BUFFERS_FOR_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Created instance: %p, m2m_ctx: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fdp1_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.fdp1_dev*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane, align 4
  %6 = alloca %struct.fdp1_ctx*, align 8
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.fdp1_dev* @video_drvdata(%struct.file* %9)
  store %struct.fdp1_dev* %10, %struct.fdp1_dev** %4, align 8
  store %struct.fdp1_ctx* null, %struct.fdp1_ctx** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %12 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %11, i32 0, i32 0
  %13 = call i64 @mutex_lock_interruptible(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ERESTARTSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %147

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.fdp1_ctx* @kzalloc(i32 56, i32 %19)
  store %struct.fdp1_ctx* %20, %struct.fdp1_ctx** %6, align 8
  %21 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %22 = icmp ne %struct.fdp1_ctx* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %142

26:                                               ; preds = %18
  %27 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %27, i32 0, i32 1
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = call i32 @video_devdata(%struct.file* %29)
  %31 = call i32 @v4l2_fh_init(%struct.TYPE_8__* %28, i32 %30)
  %32 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %32, i32 0, i32 1
  %34 = load %struct.file*, %struct.file** %3, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %37 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %37, i32 0, i32 5
  store %struct.fdp1_dev* %36, %struct.fdp1_dev** %38, align 8
  %39 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %39, i32 0, i32 4
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %46, i32 0, i32 2
  %48 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %47, i32 3)
  %49 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* @V4L2_CID_DEINTERLACING_MODE, align 4
  %52 = load i32, i32* @FDP1_NEXTFIELD, align 4
  %53 = call i32 @BIT(i32 0)
  %54 = load i32, i32* @FDP1_FIXED3D, align 4
  %55 = load i32, i32* @fdp1_ctrl_deint_menu, align 4
  %56 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_9__* %50, i32* @fdp1_ctrl_ops, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %57, i32 0, i32 2
  %59 = load i32, i32* @V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, align 4
  %60 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_9__* %58, i32* @fdp1_ctrl_ops, i32 %59, i32 1, i32 2, i32 1, i32 1)
  store %struct.v4l2_ctrl* %60, %struct.v4l2_ctrl** %7, align 8
  %61 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %62 = icmp ne %struct.v4l2_ctrl* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %26
  %64 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %65 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %26
  %70 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %70, i32 0, i32 2
  %72 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %73 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_9__* %71, i32* @fdp1_ctrl_ops, i32 %72, i32 0, i32 255, i32 1, i32 255)
  %74 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %69
  %80 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %8, align 4
  %84 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %85 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %84, i32 0, i32 2
  %86 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %85)
  %87 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %88 = call i32 @kfree(%struct.fdp1_ctx* %87)
  br label %142

89:                                               ; preds = %69
  %90 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %91 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %90, i32 0, i32 2
  %92 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %93 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %94, align 8
  %95 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %96 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %95, i32 0, i32 2
  %97 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__* %96)
  %98 = call i32 @memset(%struct.v4l2_pix_format_mplane* %5, i32 0, i32 4)
  %99 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %100 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %101 = call i32 @fdp1_set_format(%struct.fdp1_ctx* %99, %struct.v4l2_pix_format_mplane* %5, i32 %100)
  %102 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %103 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %106 = call i32 @v4l2_m2m_ctx_init(i32 %104, %struct.fdp1_ctx* %105, i32* @queue_init)
  %107 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %108 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %111 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @IS_ERR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %89
  %117 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %118 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %123 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %122, i32 0, i32 2
  %124 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %123)
  %125 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %126 = call i32 @kfree(%struct.fdp1_ctx* %125)
  br label %142

127:                                              ; preds = %89
  %128 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %129 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @pm_runtime_get_sync(i32 %130)
  %132 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %133 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %132, i32 0, i32 1
  %134 = call i32 @v4l2_fh_add(%struct.TYPE_8__* %133)
  %135 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %136 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %137 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dprintk(%struct.fdp1_dev* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.fdp1_ctx* %136, i32 %140)
  br label %142

142:                                              ; preds = %127, %116, %79, %23
  %143 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %144 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %15
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.fdp1_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.fdp1_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.fdp1_ctx*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(%struct.v4l2_pix_format_mplane*, i32, i32) #1

declare dso_local i32 @fdp1_set_format(%struct.fdp1_ctx*, %struct.v4l2_pix_format_mplane*, i32) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.fdp1_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_8__*) #1

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*, %struct.fdp1_ctx*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
