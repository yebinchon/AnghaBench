; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.brcmf_usbdev_info = type { i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @brcmf_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.brcmf_usbdev_info*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load i32, i32* @USB, align 4
  %5 = call i32 @brcmf_dbg(i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i64 @usb_get_intfdata(%struct.usb_interface* %6)
  %8 = inttoptr i64 %7 to %struct.brcmf_usbdev_info*
  store %struct.brcmf_usbdev_info* %8, %struct.brcmf_usbdev_info** %3, align 8
  %9 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %10 = icmp ne %struct.brcmf_usbdev_info* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %12, i32 0, i32 0
  %14 = call i32 @wait_for_completion(i32* %13)
  %15 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %16 = call i64 @usb_get_intfdata(%struct.usb_interface* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %25

19:                                               ; preds = %11
  %20 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %21 = call i32 @brcmf_usb_disconnect_cb(%struct.brcmf_usbdev_info* %20)
  %22 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %23 = call i32 @kfree(%struct.brcmf_usbdev_info* %22)
  br label %24

24:                                               ; preds = %19, %1
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* @USB, align 4
  %27 = call i32 @brcmf_dbg(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @brcmf_usb_disconnect_cb(%struct.brcmf_usbdev_info*) #1

declare dso_local i32 @kfree(%struct.brcmf_usbdev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
