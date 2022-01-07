; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_restart_now.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_restart_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_priv = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_restart_now(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.can_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.can_priv* %6, %struct.can_priv** %4, align 8
  %7 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %8 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %16 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %25 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %24, i32 0, i32 1
  %26 = call i32 @cancel_delayed_work_sync(i32* %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @can_restart(%struct.net_device* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %20, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @can_restart(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
