; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_mc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_mc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rvin_dev = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @rvin_mc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_mc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.rvin_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.rvin_dev* @video_drvdata(%struct.file* %9)
  store %struct.rvin_dev* %10, %struct.rvin_dev** %8, align 8
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %12 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %11, i32 0, i32 3
  %13 = call i64 @vb2_is_busy(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @rvin_mc_try_format(%struct.rvin_dev* %19, %struct.TYPE_6__* %22)
  %24 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %25 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %24, i32 0, i32 2
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_6__* %25 to i8*
  %30 = bitcast %struct.TYPE_6__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 8, i1 false)
  %31 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %32 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %35 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %38 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %42 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %45 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %49 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %52 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %51, i32 0, i32 1
  %53 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %54 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %53, i32 0, i32 0
  %55 = bitcast %struct.TYPE_5__* %52 to i8*
  %56 = bitcast %struct.TYPE_5__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %18, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.rvin_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @rvin_mc_try_format(%struct.rvin_dev*, %struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
