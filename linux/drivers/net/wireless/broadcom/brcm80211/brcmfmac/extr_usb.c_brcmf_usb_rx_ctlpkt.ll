; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_rx_ctlpkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_rx_ctlpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_usbdev_info = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMFMAC_USB_STATE_UP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"fail %d bytes: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"rxctl wait timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i32)* @brcmf_usb_rx_ctlpkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_rx_ctlpkt(%struct.device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcmf_usbdev_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.brcmf_usbdev_info* @brcmf_usb_get_businfo(%struct.device* %11)
  store %struct.brcmf_usbdev_info* %12, %struct.brcmf_usbdev_info** %10, align 8
  %13 = load i32, i32* @USB, align 4
  %14 = call i32 @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %16 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BRCMFMAC_USB_STATE_UP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %73

24:                                               ; preds = %3
  %25 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %26 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %25, i32 0, i32 3
  %27 = call i64 @test_and_set_bit(i32 0, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %73

32:                                               ; preds = %24
  %33 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %34 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @brcmf_usb_recv_ctl(%struct.brcmf_usbdev_info* %35, i32* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %46 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %45, i32 0, i32 3
  %47 = call i32 @clear_bit(i32 0, i32* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %73

49:                                               ; preds = %32
  %50 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %51 = call i32 @brcmf_usb_ioctl_resp_wait(%struct.brcmf_usbdev_info* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %53 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %56 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %55, i32 0, i32 3
  %57 = call i32 @clear_bit(i32 0, i32* %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %49
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %10, align 8
  %69 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %67, %41, %29, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.brcmf_usbdev_info* @brcmf_usb_get_businfo(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @brcmf_usb_recv_ctl(%struct.brcmf_usbdev_info*, i32*, i32) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @brcmf_usb_ioctl_resp_wait(%struct.brcmf_usbdev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
