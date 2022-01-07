; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vid_cap_buf_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vid_cap_buf_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, %struct.v4l2_timecode }
%struct.v4l2_timecode = type { i32, i32, i32, i32, i64, i32 }
%struct.vivid_dev = type { i32*, i64 }

@V4L2_BUF_FLAG_TIMECODE = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_TC_TYPE_30FPS = common dso_local global i32 0, align 4
@V4L2_TC_TYPE_25FPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @vid_cap_buf_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vid_cap_buf_finish(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca %struct.v4l2_timecode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %8)
  store %struct.vb2_v4l2_buffer* %9, %struct.vb2_v4l2_buffer** %3, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.vivid_dev* @vb2_get_drv_priv(i32 %12)
  store %struct.vivid_dev* %13, %struct.vivid_dev** %4, align 8
  %14 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %14, i32 0, i32 2
  store %struct.v4l2_timecode* %15, %struct.v4l2_timecode** %5, align 8
  store i32 25, i32* %6, align 4
  %16 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %20 = call i32 @vivid_is_sdtv_cap(%struct.vivid_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %79

23:                                               ; preds = %1
  %24 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @V4L2_STD_525_60, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  store i32 30, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 30
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @V4L2_TC_TYPE_30FPS, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @V4L2_TC_TYPE_25FPS, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = urem i32 %54, %55
  %57 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = udiv i32 %59, %60
  %62 = urem i32 %61, 60
  %63 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = mul i32 60, %66
  %68 = udiv i32 %65, %67
  %69 = urem i32 %68, 60
  %70 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul i32 3600, %73
  %75 = udiv i32 %72, %74
  %76 = urem i32 %75, 24
  %77 = load %struct.v4l2_timecode*, %struct.v4l2_timecode** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_timecode, %struct.v4l2_timecode* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %48, %22
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.vivid_dev* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
