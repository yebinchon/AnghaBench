; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_stop_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_stop_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@CMD_STOP_CHIP_REQ = common dso_local global i32 0, align 4
@KVASER_USB_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb_net_priv*)* @kvaser_usb_hydra_stop_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_stop_chip(%struct.kvaser_usb_net_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb_net_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %3, align 8
  %5 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %6 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %5, i32 0, i32 0
  %7 = call i32 @init_completion(i32* %6)
  %8 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %9 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %10 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %13 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CMD_STOP_CHIP_REQ, align 4
  %16 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %17 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kvaser_usb_hydra_send_simple_cmd(i32 %14, i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %26 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %25, i32 0, i32 0
  %27 = load i32, i32* @KVASER_USB_TIMEOUT, align 4
  %28 = call i32 @msecs_to_jiffies(i32 %27)
  %29 = call i32 @wait_for_completion_timeout(i32* %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31, %22
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kvaser_usb_hydra_send_simple_cmd(i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
