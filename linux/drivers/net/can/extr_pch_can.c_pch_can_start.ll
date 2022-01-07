; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_can_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CAN_STATE_STOPPED = common dso_local global i64 0, align 8
@PCH_CAN_RUN = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pch_can_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_can_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pch_can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.pch_can_priv* %5, %struct.pch_can_priv** %3, align 8
  %6 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %7 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CAN_STATE_STOPPED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %14 = call i32 @pch_can_reset(%struct.pch_can_priv* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @pch_set_bittiming(%struct.net_device* %16)
  %18 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %19 = call i32 @pch_can_set_optmode(%struct.pch_can_priv* %18)
  %20 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %21 = call i32 @pch_can_set_tx_all(%struct.pch_can_priv* %20, i32 1)
  %22 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %23 = call i32 @pch_can_set_rx_all(%struct.pch_can_priv* %22, i32 1)
  %24 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %25 = load i32, i32* @PCH_CAN_RUN, align 4
  %26 = call i32 @pch_can_set_run_mode(%struct.pch_can_priv* %24, i32 %25)
  %27 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %28 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %29 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  ret void
}

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pch_can_reset(%struct.pch_can_priv*) #1

declare dso_local i32 @pch_set_bittiming(%struct.net_device*) #1

declare dso_local i32 @pch_can_set_optmode(%struct.pch_can_priv*) #1

declare dso_local i32 @pch_can_set_tx_all(%struct.pch_can_priv*, i32) #1

declare dso_local i32 @pch_can_set_rx_all(%struct.pch_can_priv*, i32) #1

declare dso_local i32 @pch_can_set_run_mode(%struct.pch_can_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
