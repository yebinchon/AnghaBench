; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { %struct.if_usb_card* }
%struct.if_usb_card = type { i32, %struct.cmd_ds_802_11_reset* }
%struct.cmd_ds_802_11_reset = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@CMD_TYPE_REQUEST = common dso_local global i32 0, align 4
@CMD_802_11_RESET = common dso_local global i32 0, align 4
@CMD_ACT_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbtf_private*)* @if_usb_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_reset_device(%struct.lbtf_private* %0) #0 {
  %2 = alloca %struct.lbtf_private*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.cmd_ds_802_11_reset*, align 8
  %5 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %2, align 8
  %6 = load %struct.lbtf_private*, %struct.lbtf_private** %2, align 8
  %7 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %6, i32 0, i32 0
  %8 = load %struct.if_usb_card*, %struct.if_usb_card** %7, align 8
  store %struct.if_usb_card* %8, %struct.if_usb_card** %3, align 8
  %9 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %10 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %9, i32 0, i32 1
  %11 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %10, align 8
  %12 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %11, i64 4
  store %struct.cmd_ds_802_11_reset* %12, %struct.cmd_ds_802_11_reset** %4, align 8
  %13 = load i32, i32* @LBTF_DEB_USB, align 4
  %14 = call i32 @lbtf_deb_enter(i32 %13)
  %15 = load i32, i32* @CMD_TYPE_REQUEST, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  %17 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %18 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %17, i32 0, i32 1
  %19 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %18, align 8
  %20 = bitcast %struct.cmd_ds_802_11_reset* %19 to i32*
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @CMD_802_11_RESET, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %4, align 8
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i8* %22, i8** %25, align 8
  %26 = call i8* @cpu_to_le16(i32 40)
  %27 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %4, align 8
  %28 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  %30 = call i8* @cpu_to_le16(i32 0)
  %31 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %4, align 8
  %32 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = call i8* @cpu_to_le16(i32 23130)
  %35 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %4, align 8
  %36 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* @CMD_ACT_HALT, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %4, align 8
  %41 = getelementptr inbounds %struct.cmd_ds_802_11_reset, %struct.cmd_ds_802_11_reset* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %43 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %44 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %43, i32 0, i32 1
  %45 = load %struct.cmd_ds_802_11_reset*, %struct.cmd_ds_802_11_reset** %44, align 8
  %46 = call i32 @usb_tx_block(%struct.if_usb_card* %42, %struct.cmd_ds_802_11_reset* %45, i32 44, i32 0)
  %47 = call i32 @msleep(i32 100)
  %48 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %49 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_reset_device(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = call i32 @msleep(i32 100)
  %53 = load i32, i32* @LBTF_DEB_USB, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @lbtf_deb_leave_args(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_tx_block(%struct.if_usb_card*, %struct.cmd_ds_802_11_reset*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
