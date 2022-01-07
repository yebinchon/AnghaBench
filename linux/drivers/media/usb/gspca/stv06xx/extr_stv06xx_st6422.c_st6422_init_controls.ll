; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_st6422.c_st6422_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_st6422.c_st6422_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { i32 }

@st6422_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @st6422_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st6422_init_controls(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = getelementptr inbounds %struct.sd, %struct.sd* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %6, %struct.v4l2_ctrl_handler** %3, align 8
  %7 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %8 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %7, i32 4)
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %10 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %11 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %9, i32* @st6422_ctrl_ops, i32 %10, i32 0, i32 31, i32 1, i32 3)
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %13 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %14 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %12, i32* @st6422_ctrl_ops, i32 %13, i32 0, i32 15, i32 1, i32 11)
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %16 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %17 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %15, i32* @st6422_ctrl_ops, i32 %16, i32 0, i32 1023, i32 1, i32 256)
  %18 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %19 = load i32, i32* @V4L2_CID_GAIN, align 4
  %20 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %18, i32* @st6422_ctrl_ops, i32 %19, i32 0, i32 255, i32 1, i32 64)
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
