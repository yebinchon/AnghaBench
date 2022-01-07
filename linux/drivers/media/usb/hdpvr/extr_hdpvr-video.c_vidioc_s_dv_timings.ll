; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.hdpvr_device = type { i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.hdpvr_fh = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@hdpvr_dv_timings = common dso_local global %struct.TYPE_8__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @vidioc_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca %struct.hdpvr_fh*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %11)
  store %struct.hdpvr_device* %12, %struct.hdpvr_device** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.hdpvr_fh*
  store %struct.hdpvr_fh* %14, %struct.hdpvr_fh** %9, align 8
  %15 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %9, align 8
  %16 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %18 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODATA, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %3
  %26 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %27 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STATUS_IDLE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %88

34:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hdpvr_dv_timings, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hdpvr_dv_timings, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = call i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %41, %struct.TYPE_8__* %45, i32 0, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %35

53:                                               ; preds = %48, %35
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hdpvr_dv_timings, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %55)
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %88

61:                                               ; preds = %53
  %62 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %63 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hdpvr_dv_timings, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = bitcast %struct.TYPE_8__* %63 to i8*
  %69 = bitcast %struct.TYPE_8__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 4 %69, i64 8, i1 false)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hdpvr_dv_timings, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %78 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hdpvr_dv_timings, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %87 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %61, %58, %31, %22
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, %struct.TYPE_8__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
