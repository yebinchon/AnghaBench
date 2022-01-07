; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_disconnect_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_disconnect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Enter, bus_pub %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_usbdev_info*)* @brcmf_usb_disconnect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_disconnect_cb(%struct.brcmf_usbdev_info* %0) #0 {
  %2 = alloca %struct.brcmf_usbdev_info*, align 8
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %2, align 8
  %3 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %4 = icmp ne %struct.brcmf_usbdev_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load i32, i32* @USB, align 4
  %8 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %9 = call i32 @brcmf_dbg(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.brcmf_usbdev_info* %8)
  %10 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %11 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @brcmf_detach(i32 %12)
  %14 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %15 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @brcmf_free(i32 %16)
  %18 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %19 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  %23 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %24 = call i32 @brcmf_usb_detach(%struct.brcmf_usbdev_info* %23)
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, %struct.brcmf_usbdev_info*) #1

declare dso_local i32 @brcmf_detach(i32) #1

declare dso_local i32 @brcmf_free(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @brcmf_usb_detach(%struct.brcmf_usbdev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
