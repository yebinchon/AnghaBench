; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_enq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { i32 }
%struct.list_head = type { i32 }
%struct.brcmf_usbreq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_usbdev_info*, %struct.list_head*, %struct.brcmf_usbreq*, i32*)* @brcmf_usb_enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_enq(%struct.brcmf_usbdev_info* %0, %struct.list_head* %1, %struct.brcmf_usbreq* %2, i32* %3) #0 {
  %5 = alloca %struct.brcmf_usbdev_info*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.brcmf_usbreq*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.brcmf_usbreq* %2, %struct.brcmf_usbreq** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %11 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %15 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %14, i32 0, i32 0
  %16 = load %struct.list_head*, %struct.list_head** %6, align 8
  %17 = call i32 @list_add_tail(i32* %15, %struct.list_head* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %26 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
