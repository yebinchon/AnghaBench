; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { i64, i32, i32, i32, i32, i32, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Enter, devinfo %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_usbdev_info*)* @brcmf_usb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_detach(%struct.brcmf_usbdev_info* %0) #0 {
  %2 = alloca %struct.brcmf_usbdev_info*, align 8
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %2, align 8
  %3 = load i32, i32* @USB, align 4
  %4 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %5 = call i32 @brcmf_dbg(i32 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.brcmf_usbdev_info* %4)
  %6 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %6, i32 0, i32 6
  %8 = call i32 @brcmf_usb_free_q(i32* %7)
  %9 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %10 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %9, i32 0, i32 5
  %11 = call i32 @brcmf_usb_free_q(i32* %10)
  %12 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %13 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_free_urb(i32 %14)
  %16 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %17 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @usb_free_urb(i32 %18)
  %20 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %21 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %25 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %29 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %34 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @brcmf_release_module_param(i64 %35)
  br label %37

37:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, %struct.brcmf_usbdev_info*) #1

declare dso_local i32 @brcmf_usb_free_q(i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @brcmf_release_module_param(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
