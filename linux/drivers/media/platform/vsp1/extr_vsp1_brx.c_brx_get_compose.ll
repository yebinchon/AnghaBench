; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_brx_get_compose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_brx.c_brx_get_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32 }
%struct.vsp1_brx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_rect* (%struct.vsp1_brx*, %struct.v4l2_subdev_pad_config*, i32)* @brx_get_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_rect* @brx_get_compose(%struct.vsp1_brx* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2) #0 {
  %4 = alloca %struct.vsp1_brx*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca i32, align 4
  store %struct.vsp1_brx* %0, %struct.vsp1_brx** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vsp1_brx*, %struct.vsp1_brx** %4, align 8
  %8 = getelementptr inbounds %struct.vsp1_brx, %struct.vsp1_brx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.v4l2_rect* @v4l2_subdev_get_try_compose(i32* %9, %struct.v4l2_subdev_pad_config* %10, i32 %11)
  ret %struct.v4l2_rect* %12
}

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_compose(i32*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
