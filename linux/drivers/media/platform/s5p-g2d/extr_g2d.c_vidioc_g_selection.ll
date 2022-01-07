; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_vidioc_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_vidioc_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.g2d_ctx = type { i32 }
%struct.g2d_frame = type { i32, i32, i32, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.g2d_ctx*, align 8
  %9 = alloca %struct.g2d_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.g2d_ctx*
  store %struct.g2d_ctx* %11, %struct.g2d_ctx** %8, align 8
  %12 = load %struct.g2d_ctx*, %struct.g2d_ctx** %8, align 8
  %13 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.g2d_frame* @get_frame(%struct.g2d_ctx* %12, i32 %15)
  store %struct.g2d_frame* %16, %struct.g2d_frame** %9, align 8
  %17 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %18 = call i64 @IS_ERR(%struct.g2d_frame* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.g2d_frame* %21)
  store i32 %22, i32* %4, align 4
  br label %102

23:                                               ; preds = %3
  %24 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %47 [
    i32 130, label %27
    i32 128, label %27
    i32 129, label %27
    i32 133, label %37
    i32 131, label %37
    i32 132, label %37
  ]

27:                                               ; preds = %23, %23, %23
  %28 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %102

36:                                               ; preds = %27
  br label %50

37:                                               ; preds = %23, %23, %23
  %38 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %102

46:                                               ; preds = %37
  br label %50

47:                                               ; preds = %23
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %102

50:                                               ; preds = %46, %36
  %51 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %98 [
    i32 130, label %54
    i32 133, label %54
    i32 128, label %79
    i32 129, label %79
    i32 131, label %79
    i32 132, label %79
  ]

54:                                               ; preds = %50, %50
  %55 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %56 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 4
  %61 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %62 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %68 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %74 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  br label %101

79:                                               ; preds = %50, %50, %50, %50
  %80 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32 0, i32* %85, align 4
  %86 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %87 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.g2d_frame*, %struct.g2d_frame** %9, align 8
  %93 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  br label %101

98:                                               ; preds = %50
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %102

101:                                              ; preds = %79, %54
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %98, %47, %43, %33, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.g2d_frame* @get_frame(%struct.g2d_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.g2d_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.g2d_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
