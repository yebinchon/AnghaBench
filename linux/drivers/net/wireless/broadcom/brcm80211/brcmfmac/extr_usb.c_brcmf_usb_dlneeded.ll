; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_dlneeded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_dlneeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bootrom_id_le = type { i32, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@DL_GETVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"chip %x rev 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"chip %d rev 0x%x\0A\00", align 1
@BRCMF_POSTBOOT_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"firmware already downloaded\0A\00", align 1
@DL_RESETCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_usbdev_info*)* @brcmf_usb_dlneeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_dlneeded(%struct.brcmf_usbdev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_usbdev_info*, align 8
  %4 = alloca %struct.bootrom_id_le, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %3, align 8
  %7 = load i32, i32* @USB, align 4
  %8 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %10 = icmp eq %struct.brcmf_usbdev_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = call i32 @cpu_to_le32(i32 57005)
  %14 = getelementptr inbounds %struct.bootrom_id_le, %struct.bootrom_id_le* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %16 = load i32, i32* @DL_GETVER, align 4
  %17 = call i32 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info* %15, i32 %16, %struct.bootrom_id_le* %4, i32 8)
  %18 = getelementptr inbounds %struct.bootrom_id_le, %struct.bootrom_id_le* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = getelementptr inbounds %struct.bootrom_id_le, %struct.bootrom_id_le* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 17152
  %26 = icmp eq i32 %25, 17152
  br i1 %26, label %27, label %32

27:                                               ; preds = %12
  %28 = load i32, i32* @USB, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  br label %37

32:                                               ; preds = %12
  %33 = load i32, i32* @USB, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BRCMF_POSTBOOT_ID, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @USB, align 4
  %43 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %45 = load i32, i32* @DL_RESETCFG, align 4
  %46 = call i32 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info* %44, i32 %45, %struct.bootrom_id_le* %4, i32 8)
  store i32 0, i32* %2, align 4
  br label %57

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %50 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %54 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %41, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @brcmf_usb_dl_cmd(%struct.brcmf_usbdev_info*, i32, %struct.bootrom_id_le*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
