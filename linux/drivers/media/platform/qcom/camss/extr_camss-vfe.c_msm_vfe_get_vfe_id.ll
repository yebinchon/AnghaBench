; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_msm_vfe_get_vfe_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_msm_vfe_get_vfe_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.vfe_line = type { i32 }
%struct.vfe_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_vfe_get_vfe_id(%struct.media_entity* %0, i32* %1) #0 {
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.vfe_line*, align 8
  %7 = alloca %struct.vfe_device*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %9 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %8)
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.vfe_line* %11, %struct.vfe_line** %6, align 8
  %12 = load %struct.vfe_line*, %struct.vfe_line** %6, align 8
  %13 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %12)
  store %struct.vfe_device* %13, %struct.vfe_device** %7, align 8
  %14 = load %struct.vfe_device*, %struct.vfe_device** %7, align 8
  %15 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  ret void
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.vfe_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
