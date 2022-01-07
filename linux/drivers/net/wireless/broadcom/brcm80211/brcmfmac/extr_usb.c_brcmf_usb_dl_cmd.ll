; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_dl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_dl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@brcmf_usb_sync_complete = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"usb_submit_urb failed %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_usbdev_info*, i32, i8*, i32)* @brcmf_usb_dl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_usbdev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %14 = icmp ne %struct.brcmf_usbdev_info* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %17 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %107

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %107

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %36 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = call i32 @cpu_to_le16p(i32* %12)
  %40 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %41 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @USB_DIR_IN, align 4
  %44 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %49 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %53 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %56 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %59 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %62 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_rcvctrlpipe(i32 %63, i32 0)
  %65 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %66 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %65, i32 0, i32 2
  %67 = bitcast %struct.TYPE_5__* %66 to i8*
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i64, i64* @brcmf_usb_sync_complete, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %73 = call i32 @usb_fill_control_urb(%struct.TYPE_6__* %57, i32 %60, i32 %64, i8* %67, i8* %68, i32 %69, i32 %71, %struct.brcmf_usbdev_info* %72)
  %74 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %75 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %77 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call i32 @usb_submit_urb(%struct.TYPE_6__* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %32
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %103

86:                                               ; preds = %32
  %87 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %88 = call i32 @brcmf_usb_ioctl_resp_wait(%struct.brcmf_usbdev_info* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %92 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @usb_kill_urb(%struct.TYPE_6__* %93)
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %102

97:                                               ; preds = %86
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @memcpy(i8* %98, i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %90
  br label %103

103:                                              ; preds = %102, %83
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @kfree(i8* %104)
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %29, %20
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16p(i32*) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_6__*, i32, i32, i8*, i8*, i32, i32, %struct.brcmf_usbdev_info*) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

declare dso_local i32 @brcmf_usb_ioctl_resp_wait(%struct.brcmf_usbdev_info*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
