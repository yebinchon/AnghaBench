; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i64, i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vpif_buffer_prepare\0A\00", align 1
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"offset is not aligned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @vpif_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.channel_obj*, align 8
  %7 = alloca %struct.common_obj*, align 8
  %8 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %4, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  store %struct.vb2_queue* %13, %struct.vb2_queue** %5, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %15 = call %struct.channel_obj* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.channel_obj* %15, %struct.channel_obj** %6, align 8
  %16 = load i32, i32* @debug, align 4
  %17 = call i32 @vpif_dbg(i32 2, i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %19 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %18, i32 0, i32 0
  %20 = load %struct.common_obj*, %struct.common_obj** %19, align 8
  %21 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %22 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %20, i64 %21
  store %struct.common_obj* %22, %struct.common_obj** %7, align 8
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %24 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %25 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %23, i32 0, i32 %29)
  %31 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %32 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %31, i32 0)
  %33 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %34 = call i64 @vb2_plane_size(%struct.vb2_buffer* %33, i32 0)
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %87

39:                                               ; preds = %1
  %40 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %41 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %49 = call i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %48, i32 0)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %52 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %50, %53
  %55 = call i32 @IS_ALIGNED(i64 %54, i32 8)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %39
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %60 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  %63 = call i32 @IS_ALIGNED(i64 %62, i32 8)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %68 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  %71 = call i32 @IS_ALIGNED(i64 %70, i32 8)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %76 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %74, %77
  %79 = call i32 @IS_ALIGNED(i64 %78, i32 8)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %73, %65, %57, %39
  %82 = load i32, i32* @debug, align 4
  %83 = call i32 @vpif_dbg(i32 1, i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %87

86:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %81, %36
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.channel_obj* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
