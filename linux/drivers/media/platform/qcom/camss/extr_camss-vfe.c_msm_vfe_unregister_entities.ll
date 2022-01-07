; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_msm_vfe_unregister_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_msm_vfe_unregister_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.camss_video, %struct.v4l2_subdev }
%struct.camss_video = type { i32 }
%struct.v4l2_subdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_vfe_unregister_entities(%struct.vfe_device* %0) #0 {
  %2 = alloca %struct.vfe_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.camss_video*, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %2, align 8
  %6 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %7 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %6, i32 0, i32 2
  %8 = call i32 @mutex_destroy(i32* %7)
  %9 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %9, i32 0, i32 1
  %11 = call i32 @mutex_destroy(i32* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %15 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %21 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store %struct.v4l2_subdev* %26, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.camss_video* %33, %struct.camss_video** %5, align 8
  %34 = load %struct.camss_video*, %struct.camss_video** %5, align 8
  %35 = call i32 @msm_video_unregister(%struct.camss_video* %34)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %37 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %36)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %38, i32 0, i32 0
  %40 = call i32 @media_entity_cleanup(i32* %39)
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %12

44:                                               ; preds = %12
  ret void
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @msm_video_unregister(%struct.camss_video*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
