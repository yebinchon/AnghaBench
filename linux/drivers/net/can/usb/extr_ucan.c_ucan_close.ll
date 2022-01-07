; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucan_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@UCAN_COMMAND_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not stop device, code: %d\0A\00", align 1
@UCAN_COMMAND_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not reset device, code: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ucan_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucan_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ucan_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ucan_priv* %6, %struct.ucan_priv** %4, align 8
  %7 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %8 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %11, i32 0, i32 2
  %13 = call i32 @usb_kill_anchored_urbs(i32* %12)
  %14 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %14, i32 0, i32 1
  %16 = call i32 @usb_kill_anchored_urbs(i32* %15)
  %17 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %18 = load i32, i32* @UCAN_COMMAND_STOP, align 4
  %19 = call i32 @ucan_ctrl_command_out(%struct.ucan_priv* %17, i32 %18, i32 0, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @netdev_err(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %30 = load i32, i32* @UCAN_COMMAND_RESET, align 4
  %31 = call i32 @ucan_ctrl_command_out(%struct.ucan_priv* %29, i32 %30, i32 0, i32 0)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @netif_stop_queue(%struct.net_device* %41)
  %43 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %44 = call i32 @ucan_release_context_array(%struct.ucan_priv* %43)
  %45 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close_candev(i32 %47)
  ret i32 0
}

declare dso_local %struct.ucan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @ucan_ctrl_command_out(%struct.ucan_priv*, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ucan_release_context_array(%struct.ucan_priv*) #1

declare dso_local i32 @close_candev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
