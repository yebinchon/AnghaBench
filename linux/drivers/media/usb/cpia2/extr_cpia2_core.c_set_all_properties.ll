; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_set_all_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_set_all_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4
@CPIA2_CMD_SET_VC_MP_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*)* @set_all_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_all_properties(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %3 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %4 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %5 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data* %3, i32 %8)
  %10 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %11 = load i32, i32* @CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION, align 4
  %12 = load i32, i32* @TRANSFER_WRITE, align 4
  %13 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %14 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpia2_do_command(%struct.camera_data* %10, i32 %11, i32 %12, i32 %17)
  %19 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %20 = load i32, i32* @CPIA2_CMD_SET_VC_MP_GPIO_DATA, align 4
  %21 = load i32, i32* @TRANSFER_WRITE, align 4
  %22 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %23 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpia2_do_command(%struct.camera_data* %19, i32 %20, i32 %21, i32 %26)
  %28 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %29 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %28, i32 0, i32 0
  %30 = call i32 @v4l2_ctrl_handler_setup(i32* %29)
  %31 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %32 = call i32 @wake_system(%struct.camera_data* %31)
  %33 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %34 = call i32 @set_lowlight_boost(%struct.camera_data* %33)
  ret i32 0
}

declare dso_local i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data*, i32) #1

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @wake_system(%struct.camera_data*) #1

declare dso_local i32 @set_lowlight_boost(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
