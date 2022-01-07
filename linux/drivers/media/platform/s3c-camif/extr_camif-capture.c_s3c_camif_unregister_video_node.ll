; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_unregister_video_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_unregister_video_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.video_device }
%struct.video_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c_camif_unregister_video_node(%struct.camif_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  store %struct.camif_dev* %0, %struct.camif_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %7 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.video_device* %12, %struct.video_device** %5, align 8
  %13 = load %struct.video_device*, %struct.video_device** %5, align 8
  %14 = call i64 @video_is_registered(%struct.video_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.video_device*, %struct.video_device** %5, align 8
  %18 = call i32 @video_unregister_device(%struct.video_device* %17)
  %19 = load %struct.video_device*, %struct.video_device** %5, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 1
  %21 = call i32 @media_entity_cleanup(i32* %20)
  %22 = load %struct.video_device*, %struct.video_device** %5, align 8
  %23 = getelementptr inbounds %struct.video_device, %struct.video_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @v4l2_ctrl_handler_free(i32 %24)
  br label %26

26:                                               ; preds = %16, %2
  ret void
}

declare dso_local i64 @video_is_registered(%struct.video_device*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
