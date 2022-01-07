; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_usb_ms.c_ms_clear_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_rtsx_usb_ms.c_ms_clear_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_usb_ms = type { %struct.rtsx_ucr* }
%struct.rtsx_ucr = type { i32 }

@CARD_STOP = common dso_local global i32 0, align 4
@MS_STOP = common dso_local global i32 0, align 4
@MS_CLR_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_usb_ms*)* @ms_clear_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_clear_error(%struct.rtsx_usb_ms* %0) #0 {
  %2 = alloca %struct.rtsx_usb_ms*, align 8
  %3 = alloca %struct.rtsx_ucr*, align 8
  store %struct.rtsx_usb_ms* %0, %struct.rtsx_usb_ms** %2, align 8
  %4 = load %struct.rtsx_usb_ms*, %struct.rtsx_usb_ms** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_usb_ms, %struct.rtsx_usb_ms* %4, i32 0, i32 0
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  store %struct.rtsx_ucr* %6, %struct.rtsx_ucr** %3, align 8
  %7 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %8 = load i32, i32* @CARD_STOP, align 4
  %9 = load i32, i32* @MS_STOP, align 4
  %10 = load i32, i32* @MS_CLR_ERR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MS_STOP, align 4
  %13 = load i32, i32* @MS_CLR_ERR, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @rtsx_usb_ep0_write_register(%struct.rtsx_ucr* %7, i32 %8, i32 %11, i32 %14)
  %16 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %17 = call i32 @rtsx_usb_clear_dma_err(%struct.rtsx_ucr* %16)
  %18 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %19 = call i32 @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr* %18)
  ret void
}

declare dso_local i32 @rtsx_usb_ep0_write_register(%struct.rtsx_ucr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_clear_dma_err(%struct.rtsx_ucr*) #1

declare dso_local i32 @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
