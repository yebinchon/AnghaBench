; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32 }

@AX_ACCESS_MAC = common dso_local global i32 0, align 4
@AX_MEDIUM_STATUS_MODE = common dso_local global i32 0, align 4
@AX_MEDIUM_RECEIVE_EN = common dso_local global i32 0, align 4
@AX_PHYPWR_RSTCTL = common dso_local global i32 0, align 4
@AX_PHYPWR_RSTCTL_BZ = common dso_local global i32 0, align 4
@AX_PHYPWR_RSTCTL_IPRL = common dso_local global i32 0, align 4
@AX_CLK_SELECT = common dso_local global i32 0, align 4
@AX_RX_CTL_STOP = common dso_local global i32 0, align 4
@AX_RX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @ax88179_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usbnet* %9, %struct.usbnet** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @usbnet_suspend(%struct.usb_interface* %10, i32 %11)
  %13 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %14 = load i32, i32* @AX_ACCESS_MAC, align 4
  %15 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %16 = call i32 @ax88179_read_cmd_nopm(%struct.usbnet* %13, i32 %14, i32 %15, i32 2, i32 2, i32* %6)
  %17 = load i32, i32* @AX_MEDIUM_RECEIVE_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %22 = load i32, i32* @AX_ACCESS_MAC, align 4
  %23 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %24 = call i32 @ax88179_write_cmd_nopm(%struct.usbnet* %21, i32 %22, i32 %23, i32 2, i32 2, i32* %6)
  %25 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %26 = load i32, i32* @AX_ACCESS_MAC, align 4
  %27 = load i32, i32* @AX_PHYPWR_RSTCTL, align 4
  %28 = call i32 @ax88179_read_cmd_nopm(%struct.usbnet* %25, i32 %26, i32 %27, i32 2, i32 2, i32* %6)
  %29 = load i32, i32* @AX_PHYPWR_RSTCTL_BZ, align 4
  %30 = load i32, i32* @AX_PHYPWR_RSTCTL_IPRL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %35 = load i32, i32* @AX_ACCESS_MAC, align 4
  %36 = load i32, i32* @AX_PHYPWR_RSTCTL, align 4
  %37 = call i32 @ax88179_write_cmd_nopm(%struct.usbnet* %34, i32 %35, i32 %36, i32 2, i32 2, i32* %6)
  store i32 0, i32* %7, align 4
  %38 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %39 = load i32, i32* @AX_ACCESS_MAC, align 4
  %40 = load i32, i32* @AX_CLK_SELECT, align 4
  %41 = call i32 @ax88179_write_cmd_nopm(%struct.usbnet* %38, i32 %39, i32 %40, i32 1, i32 1, i32* %7)
  %42 = load i32, i32* @AX_RX_CTL_STOP, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %44 = load i32, i32* @AX_ACCESS_MAC, align 4
  %45 = load i32, i32* @AX_RX_CTL, align 4
  %46 = call i32 @ax88179_write_cmd_nopm(%struct.usbnet* %43, i32 %44, i32 %45, i32 2, i32 2, i32* %6)
  ret i32 0
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_suspend(%struct.usb_interface*, i32) #1

declare dso_local i32 @ax88179_read_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ax88179_write_cmd_nopm(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
