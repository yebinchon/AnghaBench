; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_do_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_do_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hi3110_priv = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@HI3110_AFTER_SUSPEND_RESTART = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hi3110_do_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_do_set_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hi3110_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.hi3110_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hi3110_priv* %8, %struct.hi3110_priv** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %35 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @hi3110_clean(%struct.net_device* %11)
  %13 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %14 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %15 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %18 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %20 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = load i32, i32* @HI3110_AFTER_SUSPEND_RESTART, align 4
  %26 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %27 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %10
  %29 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %30 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hi3110_priv*, %struct.hi3110_priv** %6, align 8
  %33 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %32, i32 0, i32 1
  %34 = call i32 @queue_work(i32 %31, i32* %33)
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.hi3110_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hi3110_clean(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
