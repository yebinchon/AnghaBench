; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_msm_ispif_unregister_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_msm_ispif_unregister_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_ispif_unregister_entities(%struct.ispif_device* %0) #0 {
  %2 = alloca %struct.ispif_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  store %struct.ispif_device* %0, %struct.ispif_device** %2, align 8
  %5 = load %struct.ispif_device*, %struct.ispif_device** %2, align 8
  %6 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %5, i32 0, i32 3
  %7 = call i32 @mutex_destroy(i32* %6)
  %8 = load %struct.ispif_device*, %struct.ispif_device** %2, align 8
  %9 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %8, i32 0, i32 2
  %10 = call i32 @mutex_destroy(i32* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ispif_device*, %struct.ispif_device** %2, align 8
  %14 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.ispif_device*, %struct.ispif_device** %2, align 8
  %19 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.v4l2_subdev* %24, %struct.v4l2_subdev** %4, align 8
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %25)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 0
  %29 = call i32 @media_entity_cleanup(i32* %28)
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %11

33:                                               ; preds = %11
  ret void
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
