; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_frame_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_frame_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.delta_ctx = type { i64, i32, %struct.delta_frameinfo, %struct.delta_streaminfo, %struct.delta_dev* }
%struct.delta_frameinfo = type { i32 }
%struct.delta_streaminfo = type { i64 }
%struct.delta_dev = type { i32 }

@DELTA_MIN_FRAME_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s num_buffers too low (%d), increasing to %d\0A\00", align 1
@DELTA_PEAK_FRAME_SMOOTHING = common dso_local global i64 0, align 8
@DELTA_MAX_FRAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s output frame count too high (%d), cut to %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @delta_vb2_frame_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_vb2_frame_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.delta_ctx*, align 8
  %13 = alloca %struct.delta_dev*, align 8
  %14 = alloca %struct.delta_streaminfo*, align 8
  %15 = alloca %struct.delta_frameinfo*, align 8
  %16 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %18 = call %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %17)
  store %struct.delta_ctx* %18, %struct.delta_ctx** %12, align 8
  %19 = load %struct.delta_ctx*, %struct.delta_ctx** %12, align 8
  %20 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %19, i32 0, i32 4
  %21 = load %struct.delta_dev*, %struct.delta_dev** %20, align 8
  store %struct.delta_dev* %21, %struct.delta_dev** %13, align 8
  %22 = load %struct.delta_ctx*, %struct.delta_ctx** %12, align 8
  %23 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %22, i32 0, i32 3
  store %struct.delta_streaminfo* %23, %struct.delta_streaminfo** %14, align 8
  %24 = load %struct.delta_ctx*, %struct.delta_ctx** %12, align 8
  %25 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %24, i32 0, i32 2
  store %struct.delta_frameinfo* %25, %struct.delta_frameinfo** %15, align 8
  %26 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %15, align 8
  %27 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DELTA_MIN_FRAME_USER, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %5
  %34 = load %struct.delta_dev*, %struct.delta_dev** %13, align 8
  %35 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.delta_ctx*, %struct.delta_ctx** %12, align 8
  %38 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DELTA_MIN_FRAME_USER, align 4
  %43 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41, i32 %42)
  %44 = load i32, i32* @DELTA_MIN_FRAME_USER, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %5
  %47 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %14, align 8
  %48 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DELTA_PEAK_FRAME_SMOOTHING, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %54, %51
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DELTA_MAX_FRAMES, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %46
  %62 = load %struct.delta_dev*, %struct.delta_dev** %13, align 8
  %63 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.delta_ctx*, %struct.delta_ctx** %12, align 8
  %66 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DELTA_MAX_FRAMES, align 4
  %71 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69, i32 %70)
  %72 = load i32, i32* @DELTA_MAX_FRAMES, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %61, %46
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  br label %88

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  store i32 %89, i32* %6, align 4
  br label %97

90:                                               ; preds = %74
  %91 = load i32*, i32** %9, align 8
  store i32 1, i32* %91, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.delta_ctx*, %struct.delta_ctx** %12, align 8
  %96 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %90, %88
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
