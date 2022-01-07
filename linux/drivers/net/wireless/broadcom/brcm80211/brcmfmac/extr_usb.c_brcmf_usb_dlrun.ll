; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_dlrun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_dlrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rdl_state_le = type { i64 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DL_GETSTATE = common dso_local global i32 0, align 4
@DL_RUNNABLE = common dso_local global i32 0, align 4
@DL_GO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Dongle not runnable\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_usbdev_info*)* @brcmf_usb_dlrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_dlrun(%struct.brcmf_usbdev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_usbdev_info*, align 8
  %4 = alloca %struct.rdl_state_le, align 8
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %3, align 8
  %5 = load i32, i32* @USB, align 4
  %6 = call i32 @brcmf_dbg(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %8 = icmp ne %struct.brcmf_usbdev_info* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 57005
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.rdl_state_le, %struct.rdl_state_le* %4, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %24 = load i32, i32* @DL_GETSTATE, align 4
  %25 = call i64 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info* %23, i32 %24, %struct.rdl_state_le* %4, i32 8)
  %26 = getelementptr inbounds %struct.rdl_state_le, %struct.rdl_state_le* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @DL_RUNNABLE, align 4
  %29 = call i64 @cpu_to_le32(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %33 = load i32, i32* @DL_GO, align 4
  %34 = call i64 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info* %32, i32 %33, %struct.rdl_state_le* %4, i32 8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %31
  %40 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %41 = call i64 @brcmf_usb_resetcfg(%struct.brcmf_usbdev_info* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %39
  br label %51

47:                                               ; preds = %21
  %48 = call i32 @brcmf_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @USB, align 4
  %53 = call i32 @brcmf_dbg(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %47, %43, %36, %18, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info*, i32, %struct.rdl_state_le*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @brcmf_usb_resetcfg(%struct.brcmf_usbdev_info*) #1

declare dso_local i32 @brcmf_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
