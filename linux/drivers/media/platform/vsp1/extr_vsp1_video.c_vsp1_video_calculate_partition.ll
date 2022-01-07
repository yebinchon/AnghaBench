; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_calculate_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_calculate_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vsp1_partition = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.vsp1_partition_window = type { i32, i32 }

@RWPF_PAD_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_pipeline*, %struct.vsp1_partition*, i32, i32)* @vsp1_video_calculate_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_video_calculate_partition(%struct.vsp1_pipeline* %0, %struct.vsp1_partition* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vsp1_pipeline*, align 8
  %6 = alloca %struct.vsp1_partition*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.vsp1_partition_window, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %5, align 8
  store %struct.vsp1_partition* %1, %struct.vsp1_partition** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %14 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %18 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RWPF_PAD_SINK, align 4
  %24 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__* %16, i32 %22, i32 %23)
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %9, align 8
  %25 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %26 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %10, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %10, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %36 = load %struct.vsp1_partition*, %struct.vsp1_partition** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @vsp1_pipeline_propagate_partition(%struct.vsp1_pipeline* %35, %struct.vsp1_partition* %36, i32 %37, %struct.vsp1_partition_window* %10)
  br label %102

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul i32 %40, %41
  %43 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %10, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = urem i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %39
  %54 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %55 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = udiv i32 %59, 2
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sub i32 %64, 1
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = udiv i32 %68, 2
  %70 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %10, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  br label %87

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = udiv i32 %76, 2
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %77, %78
  %80 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %10, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = udiv i32 %81, 2
  %83 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %75, %71
  br label %87

87:                                               ; preds = %86, %67
  br label %96

88:                                               ; preds = %53
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %10, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %88
  br label %96

96:                                               ; preds = %95, %87
  br label %97

97:                                               ; preds = %96, %39
  %98 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %99 = load %struct.vsp1_partition*, %struct.vsp1_partition** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @vsp1_pipeline_propagate_partition(%struct.vsp1_pipeline* %98, %struct.vsp1_partition* %99, i32 %100, %struct.vsp1_partition_window* %10)
  br label %102

102:                                              ; preds = %97, %29
  ret void
}

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @vsp1_pipeline_propagate_partition(%struct.vsp1_pipeline*, %struct.vsp1_partition*, i32, %struct.vsp1_partition_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
