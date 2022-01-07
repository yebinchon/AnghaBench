; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_wowl_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_wowl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_usbdev_info = type { i32, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Configuring WOWL, enabled=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @brcmf_usb_wowl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_wowl_config(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_usbdev_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.brcmf_usbdev_info* @brcmf_usb_get_businfo(%struct.device* %6)
  store %struct.brcmf_usbdev_info* %7, %struct.brcmf_usbdev_info** %5, align 8
  %8 = load i32, i32* @USB, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @brcmf_dbg(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %13 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_set_wakeup_enable(i32 %19, i32 1)
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_set_wakeup_enable(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %21, %16
  ret void
}

declare dso_local %struct.brcmf_usbdev_info* @brcmf_usb_get_businfo(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
