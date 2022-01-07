; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.vsp1_video = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.vsp1_vb2_buffer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @vsp1_video_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vsp1_video*, align 8
  %6 = alloca %struct.vsp1_vb2_buffer*, align 8
  %7 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %4, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vsp1_video* @vb2_get_drv_priv(i32 %13)
  store %struct.vsp1_video* %14, %struct.vsp1_video** %5, align 8
  %15 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %16 = call %struct.vsp1_vb2_buffer* @to_vsp1_vb2_buffer(%struct.vb2_v4l2_buffer* %15)
  store %struct.vsp1_vb2_buffer* %16, %struct.vsp1_vb2_buffer** %6, align 8
  %17 = load %struct.vsp1_video*, %struct.vsp1_video** %5, align 8
  %18 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %20, %struct.v4l2_pix_format_mplane** %7, align 8
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %84

31:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %39, i32 %40)
  %42 = load %struct.vsp1_vb2_buffer*, %struct.vsp1_vb2_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.vsp1_vb2_buffer, %struct.vsp1_vb2_buffer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %41, i64* %48, align 8
  %49 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @vb2_plane_size(%struct.vb2_buffer* %49, i32 %50)
  %52 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %51, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %38
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %84

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %32

68:                                               ; preds = %32
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %8, align 4
  %71 = icmp ult i32 %70, 3
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.vsp1_vb2_buffer*, %struct.vsp1_vb2_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.vsp1_vb2_buffer, %struct.vsp1_vb2_buffer* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %69

83:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %61, %28
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.vsp1_video* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.vsp1_vb2_buffer* @to_vsp1_vb2_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
