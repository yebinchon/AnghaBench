; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rwpf.c_vsp1_rwpf_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rwpf.c_vsp1_rwpf_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32 }
%struct.vsp1_rwpf = type { i32, i32 }

@RWPF_MIN_WIDTH = common dso_local global i32 0, align 4
@RWPF_MIN_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)* @vsp1_rwpf_enum_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_rwpf_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  %7 = alloca %struct.vsp1_rwpf*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %6, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev* %8)
  store %struct.vsp1_rwpf* %9, %struct.vsp1_rwpf** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %12 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %6, align 8
  %13 = load i32, i32* @RWPF_MIN_WIDTH, align 4
  %14 = load i32, i32* @RWPF_MIN_HEIGHT, align 4
  %15 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %7, align 8
  %16 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %7, align 8
  %19 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vsp1_subdev_enum_frame_size(%struct.v4l2_subdev* %10, %struct.v4l2_subdev_pad_config* %11, %struct.v4l2_subdev_frame_size_enum* %12, i32 %13, i32 %14, i32 %17, i32 %20)
  ret i32 %21
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev*) #1

declare dso_local i32 @vsp1_subdev_enum_frame_size(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
