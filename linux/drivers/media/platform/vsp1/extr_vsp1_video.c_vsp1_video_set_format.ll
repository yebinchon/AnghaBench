; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vsp1_video = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.vsp1_format_info*, i32 }
%struct.vsp1_format_info = type { i32 }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vsp1_video_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_set_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.vsp1_video*, align 8
  %10 = alloca %struct.vsp1_format_info*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %13, align 8
  store %struct.v4l2_fh* %14, %struct.v4l2_fh** %8, align 8
  %15 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %16 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.vsp1_video* @to_vsp1_video(i32 %17)
  store %struct.vsp1_video* %18, %struct.vsp1_video** %9, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %23 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %3
  %31 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @__vsp1_video_try_format(%struct.vsp1_video* %31, i32* %34, %struct.vsp1_format_info** %10)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %70

40:                                               ; preds = %30
  %41 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %42 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %45 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %44, i32 0, i32 2
  %46 = call i64 @vb2_is_busy(%struct.TYPE_6__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %65

51:                                               ; preds = %40
  %52 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %57 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 8
  %60 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %61 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %62 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store %struct.vsp1_format_info* %60, %struct.vsp1_format_info** %64, align 8
  br label %65

65:                                               ; preds = %51, %48
  %66 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %67 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %38, %27
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.vsp1_video* @to_vsp1_video(i32) #1

declare dso_local i32 @__vsp1_video_try_format(%struct.vsp1_video*, i32*, %struct.vsp1_format_info**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vb2_is_busy(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
