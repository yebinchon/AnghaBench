; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_recv_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_recv_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@brcmf_usb_ctlread_complete = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"usb_submit_urb failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_usbdev_info*, i32*, i32)* @brcmf_usb_recv_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_recv_ctl(%struct.brcmf_usbdev_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_usbdev_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @USB, align 4
  %11 = call i32 @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %13 = icmp eq %struct.brcmf_usbdev_info* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %22 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %17, %14, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %80

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %9, align 4
  %30 = call i32 @cpu_to_le16p(i32* %9)
  %31 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %32 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %36 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* @USB_DIR_IN, align 4
  %40 = load i32, i32* @USB_TYPE_CLASS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %45 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %48 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %51 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %54 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %57 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %60 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %59, i32 0, i32 1
  %61 = bitcast %struct.TYPE_4__* %60 to i8*
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* @brcmf_usb_ctlread_complete, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %67 = call i32 @usb_fill_control_urb(%struct.TYPE_5__* %52, i32 %55, i32 %58, i8* %61, i32* %62, i32 %63, i32 %65, %struct.brcmf_usbdev_info* %66)
  %68 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %69 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i32 @usb_submit_urb(%struct.TYPE_5__* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %28
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %28
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %25
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @cpu_to_le16p(i32*) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_5__*, i32, i32, i8*, i32*, i32, i32, %struct.brcmf_usbdev_info*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
