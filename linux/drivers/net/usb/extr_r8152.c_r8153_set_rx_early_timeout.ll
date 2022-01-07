; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_set_rx_early_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_set_rx_early_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32 }

@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_RX_EARLY_TIMEOUT = common dso_local global i32 0, align 4
@USB_RX_EXTRA_AGGR_TMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153_set_rx_early_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_set_rx_early_timeout(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %4 = load %struct.r8152*, %struct.r8152** %2, align 8
  %5 = getelementptr inbounds %struct.r8152, %struct.r8152* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sdiv i32 %6, 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.r8152*, %struct.r8152** %2, align 8
  %9 = getelementptr inbounds %struct.r8152, %struct.r8152* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %27 [
    i32 133, label %11
    i32 132, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %17
    i32 128, label %17
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = load %struct.r8152*, %struct.r8152** %2, align 8
  %13 = load i32, i32* @MCU_TYPE_USB, align 4
  %14 = load i32, i32* @USB_RX_EARLY_TIMEOUT, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ocp_write_word(%struct.r8152* %12, i32 %13, i32 %14, i32 %15)
  br label %28

17:                                               ; preds = %1, %1
  %18 = load %struct.r8152*, %struct.r8152** %2, align 8
  %19 = load i32, i32* @MCU_TYPE_USB, align 4
  %20 = load i32, i32* @USB_RX_EARLY_TIMEOUT, align 4
  %21 = call i32 @ocp_write_word(%struct.r8152* %18, i32 %19, i32 %20, i32 16)
  %22 = load %struct.r8152*, %struct.r8152** %2, align 8
  %23 = load i32, i32* @MCU_TYPE_USB, align 4
  %24 = load i32, i32* @USB_RX_EXTRA_AGGR_TMR, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ocp_write_word(%struct.r8152* %22, i32 %23, i32 %24, i32 %25)
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %17, %11
  ret void
}

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
