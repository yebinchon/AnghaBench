; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_link_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_link_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_link = type { i32 }
%struct.v4l2_subdev_format = type { i32 }
%struct.isp_res_device = type { i32 }
%struct.isp_pipeline = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)* @resizer_link_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_link_validate(%struct.v4l2_subdev* %0, %struct.media_link* %1, %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format* %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.media_link*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.isp_res_device*, align 8
  %10 = alloca %struct.isp_pipeline*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.media_link* %1, %struct.media_link** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %8, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.isp_res_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.isp_res_device* %12, %struct.isp_res_device** %9, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 0
  %15 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %14)
  store %struct.isp_pipeline* %15, %struct.isp_pipeline** %10, align 8
  %16 = load %struct.isp_res_device*, %struct.isp_res_device** %9, align 8
  %17 = load %struct.isp_pipeline*, %struct.isp_pipeline** %10, align 8
  %18 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %17, i32 0, i32 0
  %19 = call i32 @omap3isp_resizer_max_rate(%struct.isp_res_device* %16, i32* %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %21 = load %struct.media_link*, %struct.media_link** %6, align 8
  %22 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %23 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %24 = call i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev* %20, %struct.media_link* %21, %struct.v4l2_subdev_format* %22, %struct.v4l2_subdev_format* %23)
  ret i32 %24
}

declare dso_local %struct.isp_res_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @omap3isp_resizer_max_rate(%struct.isp_res_device*, i32*) #1

declare dso_local i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
