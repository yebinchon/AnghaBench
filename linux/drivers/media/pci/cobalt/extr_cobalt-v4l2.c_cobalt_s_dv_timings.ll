; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.cobalt_stream = type { i32, i32, i32, i32, i32, %struct.v4l2_dv_timings, i32, i32 }

@cea1080p60 = common dso_local global %struct.v4l2_dv_timings zeroinitializer, align 4
@EBUSY = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_dv_timings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @cobalt_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_s_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.cobalt_stream*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %10)
  store %struct.cobalt_stream* %11, %struct.cobalt_stream** %8, align 8
  %12 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %13 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %18 = bitcast %struct.v4l2_dv_timings* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.v4l2_dv_timings* @cea1080p60 to i8*), i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %21 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %22 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %21, i32 0, i32 5
  %23 = call i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %20, %struct.v4l2_dv_timings* %22, i32 0, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %74

26:                                               ; preds = %19
  %27 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %28 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %27, i32 0, i32 7
  %29 = call i64 @vb2_is_busy(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %74

34:                                               ; preds = %26
  %35 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %36 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @video, align 4
  %39 = load i32, i32* @s_dv_timings, align 4
  %40 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %41 = call i32 @v4l2_subdev_call(i32 %37, i32 %38, i32 %39, %struct.v4l2_dv_timings* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %34
  %45 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %46 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %45, i32 0, i32 5
  %47 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %48 = bitcast %struct.v4l2_dv_timings* %46 to i8*
  %49 = bitcast %struct.v4l2_dv_timings* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 8, i1 false)
  %50 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %55 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %61 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %67 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %71 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %44, %34
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %31, %25, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, %struct.v4l2_dv_timings*, i32, i32) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_dv_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
