; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i64, i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"buffer offset not aligned to 8 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @vpif_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.channel_obj*, align 8
  %6 = alloca %struct.common_obj*, align 8
  %7 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %9 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %8)
  store %struct.vb2_v4l2_buffer* %9, %struct.vb2_v4l2_buffer** %4, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = call %struct.channel_obj* @vb2_get_drv_priv(%struct.TYPE_8__* %12)
  store %struct.channel_obj* %13, %struct.channel_obj** %5, align 8
  %14 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %15 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %14, i32 0, i32 0
  %16 = load %struct.common_obj*, %struct.common_obj** %15, align 8
  %17 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %18 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %16, i64 %17
  store %struct.common_obj* %18, %struct.common_obj** %6, align 8
  %19 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %20 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %19, i32 0, i32 %25)
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %28 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %27, i32 0)
  %29 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %30 = call i64 @vb2_plane_size(%struct.vb2_buffer* %29, i32 0)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %91

35:                                               ; preds = %1
  %36 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %37 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_OUTPUT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %35
  %52 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %53 = call i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %52, i32 0)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %56 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  %59 = call i32 @ISALIGNED(i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %51
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %64 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  %67 = call i32 @ISALIGNED(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %72 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %70, %73
  %75 = call i32 @ISALIGNED(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %80 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %78, %81
  %83 = call i32 @ISALIGNED(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %77, %69, %61, %51
  %86 = call i32 @vpif_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %91

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %35
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %85, %32
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.channel_obj* @vb2_get_drv_priv(%struct.TYPE_8__*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @ISALIGNED(i64) #1

declare dso_local i32 @vpif_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
