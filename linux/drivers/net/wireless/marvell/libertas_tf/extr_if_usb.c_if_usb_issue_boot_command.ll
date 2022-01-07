; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_issue_boot_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_issue_boot_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { %struct.bootcmd* }
%struct.bootcmd = type { i32, i32, i32 }

@BOOT_CMD_MAGIC_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, i32)* @if_usb_issue_boot_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_issue_boot_command(%struct.if_usb_card* %0, i32 %1) #0 {
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bootcmd*, align 8
  store %struct.if_usb_card* %0, %struct.if_usb_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %7 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %6, i32 0, i32 0
  %8 = load %struct.bootcmd*, %struct.bootcmd** %7, align 8
  store %struct.bootcmd* %8, %struct.bootcmd** %5, align 8
  %9 = load i32, i32* @BOOT_CMD_MAGIC_NUMBER, align 4
  %10 = call i32 @cpu_to_le32(i32 %9)
  %11 = load %struct.bootcmd*, %struct.bootcmd** %5, align 8
  %12 = getelementptr inbounds %struct.bootcmd, %struct.bootcmd* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.bootcmd*, %struct.bootcmd** %5, align 8
  %15 = getelementptr inbounds %struct.bootcmd, %struct.bootcmd* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bootcmd*, %struct.bootcmd** %5, align 8
  %17 = getelementptr inbounds %struct.bootcmd, %struct.bootcmd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memset(i32 %18, i32 0, i32 4)
  %20 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 0
  %23 = load %struct.bootcmd*, %struct.bootcmd** %22, align 8
  %24 = call i32 @usb_tx_block(%struct.if_usb_card* %20, %struct.bootcmd* %23, i32 12, i32 0)
  ret i32 0
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_tx_block(%struct.if_usb_card*, %struct.bootcmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
