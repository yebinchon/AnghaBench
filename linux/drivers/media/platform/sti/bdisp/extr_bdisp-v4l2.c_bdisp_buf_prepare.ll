; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bdisp_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bdisp_frame = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid frame (%p)\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @bdisp_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.bdisp_ctx*, align 8
  %5 = alloca %struct.bdisp_frame*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.bdisp_ctx* @vb2_get_drv_priv(%struct.TYPE_4__* %8)
  store %struct.bdisp_ctx* %9, %struct.bdisp_ctx** %4, align 8
  %10 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx* %10, i32 %15)
  store %struct.bdisp_frame* %16, %struct.bdisp_frame** %5, align 8
  %17 = load %struct.bdisp_frame*, %struct.bdisp_frame** %5, align 8
  %18 = call i64 @IS_ERR(%struct.bdisp_frame* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bdisp_frame*, %struct.bdisp_frame** %5, align 8
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.bdisp_frame* %26)
  %28 = load %struct.bdisp_frame*, %struct.bdisp_frame** %5, align 8
  %29 = call i32 @PTR_ERR(%struct.bdisp_frame* %28)
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %40 = load %struct.bdisp_frame*, %struct.bdisp_frame** %5, align 8
  %41 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %39, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %38, %30
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.bdisp_ctx* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bdisp_frame*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.bdisp_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.bdisp_frame*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
