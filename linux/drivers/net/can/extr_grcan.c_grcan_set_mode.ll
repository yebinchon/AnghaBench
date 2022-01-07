; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_grcan.c_grcan_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_grcan.c_grcan_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.grcan_priv = type { i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@CAN_MODE_START = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Restarting device\0A\00", align 1
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @grcan_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grcan_set_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.grcan_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.grcan_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.grcan_priv* %10, %struct.grcan_priv** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CAN_MODE_START, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %2
  %15 = load %struct.grcan_priv*, %struct.grcan_priv** %6, align 8
  %16 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.grcan_priv*, %struct.grcan_priv** %6, align 8
  %20 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load %struct.grcan_priv*, %struct.grcan_priv** %6, align 8
  %25 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %14
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %47

31:                                               ; preds = %23
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @netdev_info(%struct.net_device* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @grcan_start(%struct.net_device* %34)
  %36 = load %struct.grcan_priv*, %struct.grcan_priv** %6, align 8
  %37 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netif_wake_queue(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %43, %31
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.grcan_priv*, %struct.grcan_priv** %6, align 8
  %49 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.grcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @grcan_start(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
