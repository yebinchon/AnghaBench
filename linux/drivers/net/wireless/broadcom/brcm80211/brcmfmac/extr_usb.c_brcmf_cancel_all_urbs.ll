; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_cancel_all_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_cancel_all_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_usbdev_info*)* @brcmf_cancel_all_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_cancel_all_urbs(%struct.brcmf_usbdev_info* %0) #0 {
  %2 = alloca %struct.brcmf_usbdev_info*, align 8
  %3 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %2, align 8
  %4 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %10 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @usb_kill_urb(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %15 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %20 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @usb_kill_urb(i64 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %25 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %32 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %38 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @usb_kill_urb(i64 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %29

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %23
  %51 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %52 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %59 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %2, align 8
  %65 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @usb_kill_urb(i64 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %56

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %50
  ret void
}

declare dso_local i32 @usb_kill_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
