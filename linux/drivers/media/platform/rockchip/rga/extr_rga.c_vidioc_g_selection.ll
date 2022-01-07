; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.rga_ctx = type { i32 }
%struct.rga_frame = type { i32, i32, %struct.TYPE_2__ }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.rga_ctx*, align 8
  %9 = alloca %struct.rga_frame*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.rga_ctx*
  store %struct.rga_ctx* %12, %struct.rga_ctx** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.rga_ctx*, %struct.rga_ctx** %8, align 8
  %14 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.rga_frame* @rga_get_frame(%struct.rga_ctx* %13, i32 %16)
  store %struct.rga_frame* %17, %struct.rga_frame** %9, align 8
  %18 = load %struct.rga_frame*, %struct.rga_frame** %9, align 8
  %19 = call i64 @IS_ERR(%struct.rga_frame* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.rga_frame*, %struct.rga_frame** %9, align 8
  %23 = call i32 @PTR_ERR(%struct.rga_frame* %22)
  store i32 %23, i32* %4, align 4
  br label %101

24:                                               ; preds = %3
  %25 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %68 [
    i32 131, label %28
    i32 132, label %28
    i32 128, label %38
    i32 129, label %38
    i32 133, label %48
    i32 130, label %58
  ]

28:                                               ; preds = %24, %24
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %101

37:                                               ; preds = %28
  br label %71

38:                                               ; preds = %24, %24
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %101

47:                                               ; preds = %38
  br label %71

48:                                               ; preds = %24
  %49 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  br label %71

58:                                               ; preds = %24
  %59 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %101

67:                                               ; preds = %58
  store i32 1, i32* %10, align 4
  br label %71

68:                                               ; preds = %24
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %101

71:                                               ; preds = %67, %57, %47, %37
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %75, i32 0, i32 1
  %77 = load %struct.rga_frame*, %struct.rga_frame** %9, align 8
  %78 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %77, i32 0, i32 2
  %79 = bitcast %struct.TYPE_2__* %76 to i8*
  %80 = bitcast %struct.TYPE_2__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 24, i1 false)
  br label %100

81:                                               ; preds = %71
  %82 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.rga_frame*, %struct.rga_frame** %9, align 8
  %89 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.rga_frame*, %struct.rga_frame** %9, align 8
  %95 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %100

100:                                              ; preds = %81, %74
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %68, %64, %54, %44, %34, %21
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.rga_frame* @rga_get_frame(%struct.rga_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rga_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.rga_frame*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
