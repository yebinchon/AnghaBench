; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_prepare_fw_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_prepare_fw_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_fw_name = type { i8*, i32 }
%struct.brcmf_fw_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.brcmf_usbdev_info = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@brcmf_usb_fwnames = common dso_local global %struct.brcmf_fw_name* null, align 8
@BRCMF_FW_TYPE_BINARY = common dso_local global i32 0, align 4
@BRCMF_USB_FW_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_fw_request* (%struct.brcmf_usbdev_info*)* @brcmf_usb_prepare_fw_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_fw_request* @brcmf_usb_prepare_fw_request(%struct.brcmf_usbdev_info* %0) #0 {
  %2 = alloca %struct.brcmf_fw_request*, align 8
  %3 = alloca %struct.brcmf_usbdev_info*, align 8
  %4 = alloca %struct.brcmf_fw_request*, align 8
  %5 = alloca [1 x %struct.brcmf_fw_name], align 16
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %3, align 8
  %6 = getelementptr inbounds [1 x %struct.brcmf_fw_name], [1 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %6, i32 0, i32 1
  %9 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 8
  %12 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %17 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** @brcmf_usb_fwnames, align 8
  %21 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** @brcmf_usb_fwnames, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.brcmf_fw_name* %21)
  %23 = getelementptr inbounds [1 x %struct.brcmf_fw_name], [1 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %24 = getelementptr inbounds [1 x %struct.brcmf_fw_name], [1 x %struct.brcmf_fw_name]* %5, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(%struct.brcmf_fw_name* %24)
  %26 = call %struct.brcmf_fw_request* @brcmf_fw_alloc_request(i32 %15, i32 %19, %struct.brcmf_fw_name* %20, i32 %22, %struct.brcmf_fw_name* %23, i32 %25)
  store %struct.brcmf_fw_request* %26, %struct.brcmf_fw_request** %4, align 8
  %27 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %28 = icmp ne %struct.brcmf_fw_request* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store %struct.brcmf_fw_request* null, %struct.brcmf_fw_request** %2, align 8
  br label %39

30:                                               ; preds = %1
  %31 = load i32, i32* @BRCMF_FW_TYPE_BINARY, align 4
  %32 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  %33 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* @BRCMF_USB_FW_CODE, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %4, align 8
  store %struct.brcmf_fw_request* %38, %struct.brcmf_fw_request** %2, align 8
  br label %39

39:                                               ; preds = %30, %29
  %40 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %2, align 8
  ret %struct.brcmf_fw_request* %40
}

declare dso_local %struct.brcmf_fw_request* @brcmf_fw_alloc_request(i32, i32, %struct.brcmf_fw_name*, i32, %struct.brcmf_fw_name*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.brcmf_fw_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
