; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_query_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_query_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i64, i64, i32, i64 }
%struct.file = type { i32 }
%struct.hdpvr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hdpvr_fh = type { i32 }
%struct.hdpvr_video_info = type { i32, i64, i64, i32 }

@ENODATA = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@hdpvr_dv_timings = common dso_local global %struct.v4l2_dv_timings* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @vidioc_query_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_query_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca %struct.hdpvr_fh*, align 8
  %10 = alloca %struct.hdpvr_video_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.v4l2_bt_timings*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %18)
  store %struct.hdpvr_device* %19, %struct.hdpvr_device** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.hdpvr_fh*
  store %struct.hdpvr_fh* %21, %struct.hdpvr_fh** %9, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %9, align 8
  %23 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %25 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENODATA, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %126

32:                                               ; preds = %3
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %34 = call i32 @get_video_info(%struct.hdpvr_device* %33, %struct.hdpvr_video_info* %10)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %126

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %10, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOLCK, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %126

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %48, 30
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %113, %46
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @hdpvr_dv_timings, align 8
  %54 = call i32 @ARRAY_SIZE(%struct.v4l2_dv_timings* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %51
  %57 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @hdpvr_dv_timings, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %57, i64 %59
  %61 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %60, i32 0, i32 0
  store %struct.v4l2_bt_timings* %61, %struct.v4l2_bt_timings** %14, align 8
  %62 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %14, align 8
  %63 = call i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings* %62)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %14, align 8
  %65 = call i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings* %64)
  store i32 %65, i32* %16, align 4
  %66 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %14, align 8
  %67 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = mul i32 %70, %71
  %73 = udiv i32 %69, %72
  store i32 %73, i32* %17, align 4
  %74 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %14, align 8
  %75 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %10, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %104, label %80

80:                                               ; preds = %56
  %81 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %14, align 8
  %82 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %10, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %83, %85
  br i1 %86, label %104, label %87

87:                                               ; preds = %80
  %88 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %14, align 8
  %89 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %17, align 4
  %95 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %10, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* %17, align 4
  %100 = add i32 %99, 1
  %101 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98, %87, %80, %56
  br label %113

105:                                              ; preds = %98, %93
  %106 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %107 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @hdpvr_dv_timings, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %107, i64 %109
  %111 = bitcast %struct.v4l2_dv_timings* %106 to i8*
  %112 = bitcast %struct.v4l2_dv_timings* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 32, i1 false)
  br label %116

113:                                              ; preds = %104
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %51

116:                                              ; preds = %105, %51
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @hdpvr_dv_timings, align 8
  %119 = call i32 @ARRAY_SIZE(%struct.v4l2_dv_timings* %118)
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @ERANGE, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %43, %37, %29
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @get_video_info(%struct.hdpvr_device*, %struct.hdpvr_video_info*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.v4l2_dv_timings*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
