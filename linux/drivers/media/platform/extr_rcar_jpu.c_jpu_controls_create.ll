; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_controls_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_controls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpu_ctx = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@jpu_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@JPU_MAX_QUALITY = common dso_local global i64 0, align 8
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jpu_ctx*)* @jpu_controls_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpu_controls_create(%struct.jpu_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jpu_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.jpu_ctx* %0, %struct.jpu_ctx** %3, align 8
  %6 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %6, i32 0, i32 0
  %8 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__* %7, i32 1)
  %9 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %12 = load i64, i64* @JPU_MAX_QUALITY, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_5__* %10, i32* @jpu_ctrl_ops, i32 %11, i32 0, i64 %13, i32 1, i32 0)
  store %struct.v4l2_ctrl* %14, %struct.v4l2_ctrl** %4, align 8
  %15 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %1
  %26 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %32 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %39, i32 0, i32 0
  %41 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_5__* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %46

45:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %51

46:                                               ; preds = %44, %20
  %47 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %47, i32 0, i32 0
  %49 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_5__*, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
