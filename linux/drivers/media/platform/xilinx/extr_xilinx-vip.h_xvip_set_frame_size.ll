; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.h_xvip_set_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.h_xvip_set_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@XVIP_ACTIVE_SIZE = common dso_local global i32 0, align 4
@XVIP_ACTIVE_VSIZE_SHIFT = common dso_local global i32 0, align 4
@XVIP_ACTIVE_HSIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xvip_device*, %struct.v4l2_mbus_framefmt*)* @xvip_set_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xvip_set_frame_size(%struct.xvip_device* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.xvip_device*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.xvip_device* %0, %struct.xvip_device** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %5 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %6 = load i32, i32* @XVIP_ACTIVE_SIZE, align 4
  %7 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @XVIP_ACTIVE_VSIZE_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XVIP_ACTIVE_HSIZE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %11, %16
  %18 = call i32 @xvip_write(%struct.xvip_device* %5, i32 %6, i32 %17)
  ret void
}

declare dso_local i32 @xvip_write(%struct.xvip_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
