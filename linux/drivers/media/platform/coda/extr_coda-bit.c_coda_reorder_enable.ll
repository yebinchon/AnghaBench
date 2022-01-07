; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_reorder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_reorder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.coda_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.coda_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@CODA_HX4 = common dso_local global i64 0, align 8
@CODA_7541 = common dso_local global i64 0, align 8
@CODA_960 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unknown H264 Profile: %u\0A\00", align 1
@V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*)* @coda_reorder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_reorder_enable(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %6 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %6, i32 0, i32 2
  %8 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  store %struct.coda_dev* %8, %struct.coda_dev** %4, align 8
  %9 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %10 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CODA_HX4, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %18 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CODA_7541, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %26 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CODA_960, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %72

33:                                               ; preds = %24, %16, %1
  %34 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %72

42:                                               ; preds = %33
  %43 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %72

51:                                               ; preds = %42
  %52 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @coda_h264_profile(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %61 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %60, i32 0, i32 0
  %62 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @v4l2_warn(i32* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %59, %51
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %70 = icmp sgt i32 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %50, %41, %32
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @coda_h264_profile(i32) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
