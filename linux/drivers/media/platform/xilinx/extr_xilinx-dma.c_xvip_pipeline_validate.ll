; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_pipeline_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_pipeline_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_pipeline = type { i32, %struct.xvip_dma* }
%struct.xvip_dma = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.media_entity }
%struct.media_entity = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.media_device* }
%struct.media_device = type { i32 }
%struct.media_graph = type { i32 }

@MEDIA_ENT_F_IO_V4L = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvip_pipeline*, %struct.xvip_dma*)* @xvip_pipeline_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_pipeline_validate(%struct.xvip_pipeline* %0, %struct.xvip_dma* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xvip_pipeline*, align 8
  %5 = alloca %struct.xvip_dma*, align 8
  %6 = alloca %struct.media_graph, align 4
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca %struct.media_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xvip_dma*, align 8
  store %struct.xvip_pipeline* %0, %struct.xvip_pipeline** %4, align 8
  store %struct.xvip_dma* %1, %struct.xvip_dma** %5, align 8
  %13 = load %struct.xvip_dma*, %struct.xvip_dma** %5, align 8
  %14 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.media_entity* %15, %struct.media_entity** %7, align 8
  %16 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %17 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.media_device*, %struct.media_device** %18, align 8
  store %struct.media_device* %19, %struct.media_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.media_device*, %struct.media_device** %8, align 8
  %21 = getelementptr inbounds %struct.media_device, %struct.media_device* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.media_device*, %struct.media_device** %8, align 8
  %24 = call i32 @media_graph_walk_init(%struct.media_graph* %6, %struct.media_device* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.media_device*, %struct.media_device** %8, align 8
  %29 = getelementptr inbounds %struct.media_device, %struct.media_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %85

32:                                               ; preds = %2
  %33 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %34 = call i32 @media_graph_walk_start(%struct.media_graph* %6, %struct.media_entity* %33)
  br label %35

35:                                               ; preds = %65, %44, %32
  %36 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %6)
  store %struct.media_entity* %36, %struct.media_entity** %7, align 8
  %37 = icmp ne %struct.media_entity* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %40 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MEDIA_ENT_F_IO_V4L, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %35

45:                                               ; preds = %38
  %46 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %47 = call i32 @media_entity_to_video_device(%struct.media_entity* %46)
  %48 = call %struct.xvip_dma* @to_xvip_dma(i32 %47)
  store %struct.xvip_dma* %48, %struct.xvip_dma** %12, align 8
  %49 = load %struct.xvip_dma*, %struct.xvip_dma** %12, align 8
  %50 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.xvip_dma*, %struct.xvip_dma** %12, align 8
  %58 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %4, align 8
  %59 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %58, i32 0, i32 1
  store %struct.xvip_dma* %57, %struct.xvip_dma** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %65

62:                                               ; preds = %45
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %56
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.media_device*, %struct.media_device** %8, align 8
  %68 = getelementptr inbounds %struct.media_device, %struct.media_device* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = call i32 @media_graph_walk_cleanup(%struct.media_graph* %6)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %66
  %77 = load i32, i32* @EPIPE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %80, %81
  %83 = load %struct.xvip_pipeline*, %struct.xvip_pipeline** %4, align 8
  %84 = getelementptr inbounds %struct.xvip_pipeline, %struct.xvip_pipeline* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %76, %27
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @media_graph_walk_init(%struct.media_graph*, %struct.media_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local %struct.xvip_dma* @to_xvip_dma(i32) #1

declare dso_local i32 @media_entity_to_video_device(%struct.media_entity*) #1

declare dso_local i32 @media_graph_walk_cleanup(%struct.media_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
