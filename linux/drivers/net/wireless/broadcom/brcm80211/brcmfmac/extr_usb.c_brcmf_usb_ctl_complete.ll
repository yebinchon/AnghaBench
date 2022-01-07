; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_ctl_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_ctl_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Enter, status=%d\0A\00", align 1
@BRCMF_USB_CBCTL_READ = common dso_local global i32 0, align 4
@BRCMF_USB_CBCTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_usbdev_info*, i32, i32)* @brcmf_usb_ctl_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_ctl_complete(%struct.brcmf_usbdev_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_usbdev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @USB, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @brcmf_dbg(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %11 = icmp eq %struct.brcmf_usbdev_info* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %69

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BRCMF_USB_CBCTL_READ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %25 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %32 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %23
  br label %61

38:                                               ; preds = %16
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @BRCMF_USB_CBCTL_WRITE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %47 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %42
  %53 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %54 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %64 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %66 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %68 = call i32 @brcmf_usb_ioctl_resp_wake(%struct.brcmf_usbdev_info* %67)
  br label %69

69:                                               ; preds = %61, %15
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @brcmf_usb_ioctl_resp_wake(%struct.brcmf_usbdev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
