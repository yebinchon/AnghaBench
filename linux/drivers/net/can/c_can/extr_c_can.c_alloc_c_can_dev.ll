; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_alloc_c_can_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_alloc_c_can_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { %struct.TYPE_2__, %struct.net_device*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@C_CAN_MSG_OBJ_TX_NUM = common dso_local global i32 0, align 4
@c_can_poll = common dso_local global i32 0, align 4
@C_CAN_NAPI_WEIGHT = common dso_local global i32 0, align 4
@c_can_bittiming_const = common dso_local global i32 0, align 4
@c_can_set_mode = common dso_local global i32 0, align 4
@c_can_get_berr_counter = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_c_can_dev() #0 {
  %1 = alloca %struct.net_device*, align 8
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.c_can_priv*, align 8
  %4 = load i32, i32* @C_CAN_MSG_OBJ_TX_NUM, align 4
  %5 = call %struct.net_device* @alloc_candev(i32 40, i32 %4)
  store %struct.net_device* %5, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = icmp ne %struct.net_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.net_device* null, %struct.net_device** %1, align 8
  br label %41

9:                                                ; preds = %0
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.c_can_priv* %11, %struct.c_can_priv** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %14 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %13, i32 0, i32 2
  %15 = load i32, i32* @c_can_poll, align 4
  %16 = load i32, i32* @C_CAN_NAPI_WEIGHT, align 4
  %17 = call i32 @netif_napi_add(%struct.net_device* %12, i32* %14, i32 %15, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %20 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %19, i32 0, i32 1
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %22 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32* @c_can_bittiming_const, i32** %23, align 8
  %24 = load i32, i32* @c_can_set_mode, align 4
  %25 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %26 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @c_can_get_berr_counter, align 4
  %29 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %30 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %33 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %38 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  store %struct.net_device* %40, %struct.net_device** %1, align 8
  br label %41

41:                                               ; preds = %9, %8
  %42 = load %struct.net_device*, %struct.net_device** %1, align 8
  ret %struct.net_device* %42
}

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
