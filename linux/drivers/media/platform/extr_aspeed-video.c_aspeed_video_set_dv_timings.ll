; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_set_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_set_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.aspeed_video = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_DV_BT_656_1120 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @aspeed_video_set_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_video_set_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.aspeed_video*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.aspeed_video* @video_drvdata(%struct.file* %9)
  store %struct.aspeed_video* %10, %struct.aspeed_video** %8, align 8
  %11 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %16 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %26 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %71

31:                                               ; preds = %20, %3
  %32 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %33 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %32, i32 0, i32 3
  %34 = call i64 @vb2_is_busy(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %71

39:                                               ; preds = %31
  %40 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %41 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %40, i32 0, i32 2
  %42 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %42, i32 0, i32 1
  %44 = bitcast %struct.TYPE_3__* %41 to i8*
  %45 = bitcast %struct.TYPE_3__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %47 = call i32 @aspeed_video_set_resolution(%struct.aspeed_video* %46)
  %48 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %53 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %60 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %63 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %66 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @V4L2_DV_BT_656_1120, align 4
  %69 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %39, %36, %30
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.aspeed_video* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aspeed_video_set_resolution(%struct.aspeed_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
