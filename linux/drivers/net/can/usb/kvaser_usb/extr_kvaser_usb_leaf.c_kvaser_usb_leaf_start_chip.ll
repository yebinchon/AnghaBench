; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_start_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_start_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i32, i32, i32 }

@CMD_START_CHIP = common dso_local global i32 0, align 4
@KVASER_USB_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb_net_priv*)* @kvaser_usb_leaf_start_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_leaf_start_chip(%struct.kvaser_usb_net_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb_net_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %3, align 8
  %5 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %6 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %5, i32 0, i32 0
  %7 = call i32 @init_completion(i32* %6)
  %8 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %9 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CMD_START_CHIP, align 4
  %12 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %13 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kvaser_usb_leaf_send_simple_cmd(i32 %10, i32 %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %22 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %21, i32 0, i32 0
  %23 = load i32, i32* @KVASER_USB_TIMEOUT, align 4
  %24 = call i32 @msecs_to_jiffies(i32 %23)
  %25 = call i32 @wait_for_completion_timeout(i32* %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %27, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kvaser_usb_leaf_send_simple_cmd(i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
