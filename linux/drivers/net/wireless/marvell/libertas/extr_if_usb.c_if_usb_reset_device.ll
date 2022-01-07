; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i32, %struct.cmd_header* }
%struct.cmd_header = type { i8*, i8*, i8*, i8* }

@CMD_TYPE_REQUEST = common dso_local global i32 0, align 4
@CMD_802_11_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*)* @if_usb_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_reset_device(%struct.if_usb_card* %0) #0 {
  %2 = alloca %struct.if_usb_card*, align 8
  %3 = alloca %struct.cmd_header*, align 8
  %4 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %2, align 8
  %5 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %6 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %5, i32 0, i32 1
  %7 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %8 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %7, i64 4
  store %struct.cmd_header* %8, %struct.cmd_header** %3, align 8
  %9 = load i32, i32* @CMD_TYPE_REQUEST, align 4
  %10 = call i32 @cpu_to_le32(i32 %9)
  %11 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %12 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %11, i32 0, i32 1
  %13 = load %struct.cmd_header*, %struct.cmd_header** %12, align 8
  %14 = bitcast %struct.cmd_header* %13 to i32*
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @CMD_802_11_RESET, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.cmd_header*, %struct.cmd_header** %3, align 8
  %18 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = call i8* @cpu_to_le16(i32 8)
  %20 = load %struct.cmd_header*, %struct.cmd_header** %3, align 8
  %21 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = call i8* @cpu_to_le16(i32 0)
  %23 = load %struct.cmd_header*, %struct.cmd_header** %3, align 8
  %24 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = call i8* @cpu_to_le16(i32 23130)
  %26 = load %struct.cmd_header*, %struct.cmd_header** %3, align 8
  %27 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %29 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %30 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %29, i32 0, i32 1
  %31 = load %struct.cmd_header*, %struct.cmd_header** %30, align 8
  %32 = call i32 @usb_tx_block(%struct.if_usb_card* %28, %struct.cmd_header* %31, i32 36)
  %33 = call i32 @msleep(i32 100)
  %34 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %35 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @usb_reset_device(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = call i32 @msleep(i32 100)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_tx_block(%struct.if_usb_card*, %struct.cmd_header*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_reset_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
