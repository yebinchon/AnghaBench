; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rga_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vb2_queue = type { i32 }
%struct.rga_frame = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.rga_ctx*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca %struct.rga_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.rga_ctx*
  store %struct.rga_ctx* %12, %struct.rga_ctx** %8, align 8
  %13 = load %struct.rga_ctx*, %struct.rga_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %16, i32 %19)
  store %struct.vb2_queue* %20, %struct.vb2_queue** %9, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %22 = icmp ne %struct.vb2_queue* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %3
  %27 = load %struct.rga_ctx*, %struct.rga_ctx** %8, align 8
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.rga_frame* @rga_get_frame(%struct.rga_ctx* %27, i32 %30)
  store %struct.rga_frame* %31, %struct.rga_frame** %10, align 8
  %32 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %33 = call i64 @IS_ERR(%struct.rga_frame* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %37 = call i32 @PTR_ERR(%struct.rga_frame* %36)
  store i32 %37, i32* %4, align 4
  br label %88

38:                                               ; preds = %26
  %39 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %40 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 6
  store i32 %41, i32* %45, align 4
  %46 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %47 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 4
  %58 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %59 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i32 %62, i32* %66, align 4
  %67 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %68 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 4
  %74 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %75 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.rga_frame*, %struct.rga_frame** %10, align 8
  %82 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %38, %35, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.rga_frame* @rga_get_frame(%struct.rga_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rga_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.rga_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
