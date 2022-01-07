; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-streamer.c_vimc_streamer_pipeline_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-streamer.c_vimc_streamer_pipeline_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_stream = type { i32, %struct.vimc_ent_device** }
%struct.vimc_ent_device = type { i32 }
%struct.v4l2_subdev = type { i32 }

@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vimc_stream*)* @vimc_streamer_pipeline_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vimc_streamer_pipeline_terminate(%struct.vimc_stream* %0) #0 {
  %2 = alloca %struct.vimc_stream*, align 8
  %3 = alloca %struct.vimc_ent_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  store %struct.vimc_stream* %0, %struct.vimc_stream** %2, align 8
  br label %5

5:                                                ; preds = %38, %37, %1
  %6 = load %struct.vimc_stream*, %struct.vimc_stream** %2, align 8
  %7 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %5
  %11 = load %struct.vimc_stream*, %struct.vimc_stream** %2, align 8
  %12 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.vimc_stream*, %struct.vimc_stream** %2, align 8
  %16 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %15, i32 0, i32 1
  %17 = load %struct.vimc_ent_device**, %struct.vimc_ent_device*** %16, align 8
  %18 = load %struct.vimc_stream*, %struct.vimc_stream** %2, align 8
  %19 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vimc_ent_device*, %struct.vimc_ent_device** %17, i64 %21
  %23 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %22, align 8
  store %struct.vimc_ent_device* %23, %struct.vimc_ent_device** %3, align 8
  %24 = load %struct.vimc_stream*, %struct.vimc_stream** %2, align 8
  %25 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %24, i32 0, i32 1
  %26 = load %struct.vimc_ent_device**, %struct.vimc_ent_device*** %25, align 8
  %27 = load %struct.vimc_stream*, %struct.vimc_stream** %2, align 8
  %28 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vimc_ent_device*, %struct.vimc_ent_device** %26, i64 %30
  store %struct.vimc_ent_device* null, %struct.vimc_ent_device** %31, align 8
  %32 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %3, align 8
  %33 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @is_media_entity_v4l2_subdev(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %10
  br label %5

38:                                               ; preds = %10
  %39 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %3, align 8
  %40 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %41)
  store %struct.v4l2_subdev* %42, %struct.v4l2_subdev** %4, align 8
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %44 = load i32, i32* @video, align 4
  %45 = load i32, i32* @s_stream, align 4
  %46 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %43, i32 %44, i32 %45, i32 0)
  br label %5

47:                                               ; preds = %5
  ret void
}

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
