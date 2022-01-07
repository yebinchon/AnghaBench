; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_get_pixel_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_get_pixel_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camss_get_pixel_clock(%struct.media_entity* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %10 = call %struct.media_entity* @camss_find_sensor(%struct.media_entity* %9)
  store %struct.media_entity* %10, %struct.media_entity** %6, align 8
  %11 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %12 = icmp ne %struct.media_entity* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %18 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %17)
  store %struct.v4l2_subdev* %18, %struct.v4l2_subdev** %7, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %23 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %21, i32 %22)
  store %struct.v4l2_ctrl* %23, %struct.v4l2_ctrl** %8, align 8
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %25 = icmp ne %struct.v4l2_ctrl* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %31 = call i32 @v4l2_ctrl_g_ctrl_int64(%struct.v4l2_ctrl* %30)
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %26, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.media_entity* @camss_find_sensor(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl_int64(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
