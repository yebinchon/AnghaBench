; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_usb_ms.c_ms_pull_ctl_disable_qfn24.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_usb_ms.c_ms_pull_ctl_disable_qfn24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PULL_CTL1 = common dso_local global i32 0, align 4
@CARD_PULL_CTL2 = common dso_local global i32 0, align 4
@CARD_PULL_CTL3 = common dso_local global i32 0, align 4
@CARD_PULL_CTL4 = common dso_local global i32 0, align 4
@CARD_PULL_CTL5 = common dso_local global i32 0, align 4
@CARD_PULL_CTL6 = common dso_local global i32 0, align 4
@MODE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_ucr*)* @ms_pull_ctl_disable_qfn24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_pull_ctl_disable_qfn24(%struct.rtsx_ucr* %0) #0 {
  %2 = alloca %struct.rtsx_ucr*, align 8
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %2, align 8
  %3 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %2, align 8
  %4 = call i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr* %3)
  %5 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %2, align 8
  %6 = load i32, i32* @WRITE_REG_CMD, align 4
  %7 = load i32, i32* @CARD_PULL_CTL1, align 4
  %8 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %5, i32 %6, i32 %7, i32 255, i32 101)
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %2, align 8
  %10 = load i32, i32* @WRITE_REG_CMD, align 4
  %11 = load i32, i32* @CARD_PULL_CTL2, align 4
  %12 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %9, i32 %10, i32 %11, i32 255, i32 85)
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %2, align 8
  %14 = load i32, i32* @WRITE_REG_CMD, align 4
  %15 = load i32, i32* @CARD_PULL_CTL3, align 4
  %16 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %13, i32 %14, i32 %15, i32 255, i32 149)
  %17 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %2, align 8
  %18 = load i32, i32* @WRITE_REG_CMD, align 4
  %19 = load i32, i32* @CARD_PULL_CTL4, align 4
  %20 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %17, i32 %18, i32 %19, i32 255, i32 85)
  %21 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %2, align 8
  %22 = load i32, i32* @WRITE_REG_CMD, align 4
  %23 = load i32, i32* @CARD_PULL_CTL5, align 4
  %24 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %21, i32 %22, i32 %23, i32 255, i32 86)
  %25 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %2, align 8
  %26 = load i32, i32* @WRITE_REG_CMD, align 4
  %27 = load i32, i32* @CARD_PULL_CTL6, align 4
  %28 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %25, i32 %26, i32 %27, i32 255, i32 89)
  %29 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %2, align 8
  %30 = load i32, i32* @MODE_C, align 4
  %31 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %29, i32 %30, i32 100)
  ret i32 %31
}

declare dso_local i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr*) #1

declare dso_local i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
