; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }

@AX_RX_CTL_STOP = common dso_local global i64 0, align 8
@AX_ACCESS_MAC = common dso_local global i32 0, align 4
@AX_RX_CTL = common dso_local global i32 0, align 4
@AX_CLK_SELECT = common dso_local global i32 0, align 4
@AX_PHYPWR_RSTCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.usb_interface*)* @ax88179_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax88179_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load i64, i64* @AX_RX_CTL_STOP, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = load i32, i32* @AX_ACCESS_MAC, align 4
  %9 = load i32, i32* @AX_RX_CTL, align 4
  %10 = call i32 @ax88179_write_cmd(%struct.usbnet* %7, i32 %8, i32 %9, i32 2, i32 2, i64* %5)
  store i64 0, i64* %5, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = load i32, i32* @AX_ACCESS_MAC, align 4
  %13 = load i32, i32* @AX_CLK_SELECT, align 4
  %14 = call i32 @ax88179_write_cmd(%struct.usbnet* %11, i32 %12, i32 %13, i32 1, i32 1, i64* %5)
  store i64 0, i64* %5, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = load i32, i32* @AX_ACCESS_MAC, align 4
  %17 = load i32, i32* @AX_PHYPWR_RSTCTL, align 4
  %18 = call i32 @ax88179_write_cmd(%struct.usbnet* %15, i32 %16, i32 %17, i32 2, i32 2, i64* %5)
  ret void
}

declare dso_local i32 @ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
