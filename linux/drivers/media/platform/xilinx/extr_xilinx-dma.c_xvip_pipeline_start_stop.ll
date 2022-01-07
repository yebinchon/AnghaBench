; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_pipeline_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_pipeline_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_pipeline = type { %struct.xvip_dma* }
%struct.xvip_dma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvip_pipeline*, i32)* @xvip_pipeline_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_pipeline_start_stop(%struct.xvip_pipeline* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xvip_pipeline*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xvip_dma*, align 8
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  store %struct.xvip_pipeline* %0, %struct.xvip_pipeline** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %4, align 8
  %12 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %11, i32 0, i32 0
  %13 = load %struct.xvip_dma*, %struct.xvip_dma** %12, align 8
  store %struct.xvip_dma* %13, %struct.xvip_dma** %6, align 8
  %14 = load %struct.xvip_dma*, %struct.xvip_dma** %6, align 8
  %15 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.media_entity* %16, %struct.media_entity** %7, align 8
  br label %17

17:                                               ; preds = %2, %64
  %18 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %19 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %18, i32 0, i32 0
  %20 = load %struct.media_pad*, %struct.media_pad** %19, align 8
  %21 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %20, i64 0
  store %struct.media_pad* %21, %struct.media_pad** %8, align 8
  %22 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %23 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %65

29:                                               ; preds = %17
  %30 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %31 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %30)
  store %struct.media_pad* %31, %struct.media_pad** %8, align 8
  %32 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %33 = icmp ne %struct.media_pad* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %36 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %35, i32 0, i32 1
  %37 = load %struct.media_entity*, %struct.media_entity** %36, align 8
  %38 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %29
  br label %65

41:                                               ; preds = %34
  %42 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %43 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %42, i32 0, i32 1
  %44 = load %struct.media_entity*, %struct.media_entity** %43, align 8
  store %struct.media_entity* %44, %struct.media_entity** %7, align 8
  %45 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %46 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %45)
  store %struct.v4l2_subdev* %46, %struct.v4l2_subdev** %9, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %48 = load i32, i32* @video, align 4
  %49 = load i32, i32* @s_stream, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @ENOIOCTLCMD, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %57, %54, %41
  br label %17

65:                                               ; preds = %40, %28
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
