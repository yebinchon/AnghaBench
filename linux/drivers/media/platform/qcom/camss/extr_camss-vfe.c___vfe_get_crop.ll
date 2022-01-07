; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c___vfe_get_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c___vfe_get_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32 }
%struct.vfe_line = type { %struct.v4l2_rect, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@MSM_VFE_PAD_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_rect* (%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, i32)* @__vfe_get_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_rect* @__vfe_get_crop(%struct.vfe_line* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.vfe_line*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca i32, align 4
  store %struct.vfe_line* %0, %struct.vfe_line** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.vfe_line*, %struct.vfe_line** %5, align 8
  %13 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %12, i32 0, i32 1
  %14 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %15 = load i32, i32* @MSM_VFE_PAD_SRC, align 4
  %16 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(i32* %13, %struct.v4l2_subdev_pad_config* %14, i32 %15)
  store %struct.v4l2_rect* %16, %struct.v4l2_rect** %4, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.vfe_line*, %struct.vfe_line** %5, align 8
  %19 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %18, i32 0, i32 0
  store %struct.v4l2_rect* %19, %struct.v4l2_rect** %4, align 8
  br label %20

20:                                               ; preds = %17, %11
  %21 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  ret %struct.v4l2_rect* %21
}

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(i32*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
