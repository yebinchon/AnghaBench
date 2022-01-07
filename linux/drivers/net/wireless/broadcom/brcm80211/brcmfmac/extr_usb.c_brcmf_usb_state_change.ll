; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.brcmf_bus* }
%struct.brcmf_bus = type { i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Enter, current state=%d, new state=%d\0A\00", align 1
@BRCMFMAC_USB_STATE_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"DBUS is down\0A\00", align 1
@BRCMF_BUS_DOWN = common dso_local global i32 0, align 4
@BRCMFMAC_USB_STATE_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"DBUS is up\0A\00", align 1
@BRCMF_BUS_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"DBUS current state=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_usbdev_info*, i32)* @brcmf_usb_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_state_change(%struct.brcmf_usbdev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_usbdev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_bus*, align 8
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  store %struct.brcmf_bus* %9, %struct.brcmf_bus** %5, align 8
  %10 = load i32, i32* @USB, align 4
  %11 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %12 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %53

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %27 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BRCMFMAC_USB_STATE_DOWN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @USB, align 4
  %34 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %36 = load i32, i32* @BRCMF_BUS_DOWN, align 4
  %37 = call i32 @brcmf_bus_change_state(%struct.brcmf_bus* %35, i32 %36)
  br label %53

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BRCMFMAC_USB_STATE_UP, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @USB, align 4
  %44 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %46 = load i32, i32* @BRCMF_BUS_UP, align 4
  %47 = call i32 @brcmf_bus_change_state(%struct.brcmf_bus* %45, i32 %46)
  br label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @USB, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %23, %52, %32
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_bus_change_state(%struct.brcmf_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
