; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.rvin_dev = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @rvin_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.rvin_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.rvin_dev* @video_drvdata(%struct.file* %9)
  store %struct.rvin_dev* %10, %struct.rvin_dev** %8, align 8
  %11 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %83

19:                                               ; preds = %3
  %20 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %79 [
    i32 129, label %23
    i32 128, label %23
    i32 130, label %44
    i32 132, label %51
    i32 131, label %51
    i32 133, label %72
  ]

23:                                               ; preds = %19, %19
  %24 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %31 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %38 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %82

44:                                               ; preds = %19
  %45 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %45, i32 0, i32 2
  %47 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %48 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %47, i32 0, i32 2
  %49 = bitcast %struct.TYPE_6__* %46 to i8*
  %50 = bitcast %struct.TYPE_6__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 16, i1 false)
  br label %82

51:                                               ; preds = %19, %19
  %52 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %59 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %66 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %82

72:                                               ; preds = %19
  %73 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %73, i32 0, i32 2
  %75 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %76 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %75, i32 0, i32 0
  %77 = bitcast %struct.TYPE_6__* %74 to i8*
  %78 = bitcast %struct.TYPE_6__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 16, i1 false)
  br label %82

79:                                               ; preds = %19
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %83

82:                                               ; preds = %72, %51, %44, %23
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %79, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.rvin_dev* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
