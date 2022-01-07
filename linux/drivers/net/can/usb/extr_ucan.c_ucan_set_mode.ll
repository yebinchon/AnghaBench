; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucan_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"restarting device\0A\00", align 1
@UCAN_COMMAND_RESTART = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ucan_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_set_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ucan_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ucan_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.ucan_priv* %10, %struct.ucan_priv** %8, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %43 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  %13 = load %struct.ucan_priv*, %struct.ucan_priv** %8, align 8
  %14 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netdev_dbg(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ucan_priv*, %struct.ucan_priv** %8, align 8
  %18 = load i32, i32* @UCAN_COMMAND_RESTART, align 4
  %19 = call i32 @ucan_ctrl_command_out(%struct.ucan_priv* %17, i32 %18, i32 0, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %21 = load %struct.ucan_priv*, %struct.ucan_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.ucan_priv*, %struct.ucan_priv** %8, align 8
  %25 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.ucan_priv*, %struct.ucan_priv** %8, align 8
  %29 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %12
  %33 = load %struct.ucan_priv*, %struct.ucan_priv** %8, align 8
  %34 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netif_wake_queue(i32 %35)
  br label %37

37:                                               ; preds = %32, %12
  %38 = load %struct.ucan_priv*, %struct.ucan_priv** %8, align 8
  %39 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ucan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @ucan_ctrl_command_out(%struct.ucan_priv*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
