; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_ctrl_command_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_ctrl_command_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { i32, i32, i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@UCAN_USB_CTL_PIPE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucan_priv*, i32, i32, i32)* @ucan_ctrl_command_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_ctrl_command_out(%struct.ucan_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ucan_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ucan_priv* %0, %struct.ucan_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_sndctrlpipe(i32 %14, i32 0)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @USB_DIR_OUT, align 4
  %18 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @UCAN_USB_CTL_PIPE_TIMEOUT, align 4
  %31 = call i32 @usb_control_msg(i32 %11, i32 %15, i32 %16, i32 %21, i32 %22, i32 %25, i32 %28, i32 %29, i32 %30)
  ret i32 %31
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
