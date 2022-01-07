; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.gsc_frame = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.gsc_ctx = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @gsc_m2m_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.gsc_frame*, align 8
  %9 = alloca %struct.gsc_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.gsc_ctx* @fh_to_ctx(i8* %10)
  store %struct.gsc_ctx* %11, %struct.gsc_ctx** %9, align 8
  %12 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %93

26:                                               ; preds = %17, %3
  %27 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %28 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.gsc_frame* @ctx_get_frame(%struct.gsc_ctx* %27, i32 %30)
  store %struct.gsc_frame* %31, %struct.gsc_frame** %8, align 8
  %32 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %33 = call i64 @IS_ERR(%struct.gsc_frame* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %37 = call i32 @PTR_ERR(%struct.gsc_frame* %36)
  store i32 %37, i32* %4, align 4
  br label %93

38:                                               ; preds = %26
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %90 [
    i32 131, label %42
    i32 132, label %42
    i32 129, label %42
    i32 128, label %42
    i32 133, label %61
    i32 130, label %61
  ]

42:                                               ; preds = %38, %38, %38, %38
  %43 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 0, i32* %45, align 4
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %50 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %56 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %93

61:                                               ; preds = %38, %38
  %62 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %63 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  %69 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %70 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %77 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %84 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %93

90:                                               ; preds = %38
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %61, %42, %35, %23
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.gsc_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.gsc_frame* @ctx_get_frame(%struct.gsc_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gsc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.gsc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
