; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_rx_fill_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_rx_fill_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.brcmf_usbreq = type { i32 }

@BRCMFMAC_USB_STATE_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"bus is not up=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_usbdev_info*)* @brcmf_usb_rx_fill_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_rx_fill_all(%struct.brcmf_usbdev_info* %0) #0 {
  %2 = alloca %struct.brcmf_usbdev_info*, align 8
  %3 = alloca %struct.brcmf_usbreq*, align 8
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %2, align 8
  %4 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BRCMFMAC_USB_STATE_UP, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @brcmf_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %27

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %23, %16
  %18 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %19 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %20 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %19, i32 0, i32 0
  %21 = call %struct.brcmf_usbreq* @brcmf_usb_deq(%struct.brcmf_usbdev_info* %18, i32* %20, i32* null)
  store %struct.brcmf_usbreq* %21, %struct.brcmf_usbreq** %3, align 8
  %22 = icmp ne %struct.brcmf_usbreq* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %25 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %26 = call i32 @brcmf_usb_rx_refill(%struct.brcmf_usbdev_info* %24, %struct.brcmf_usbreq* %25)
  br label %17

27:                                               ; preds = %10, %17
  ret void
}

declare dso_local i32 @brcmf_err(i8*, i64) #1

declare dso_local %struct.brcmf_usbreq* @brcmf_usb_deq(%struct.brcmf_usbdev_info*, i32*, i32*) #1

declare dso_local i32 @brcmf_usb_rx_refill(%struct.brcmf_usbdev_info*, %struct.brcmf_usbreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
