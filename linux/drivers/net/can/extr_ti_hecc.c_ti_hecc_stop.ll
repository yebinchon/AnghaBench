; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ti_hecc_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HECC_CANMC = common dso_local global i32 0, align 4
@HECC_CANMC_CCR = common dso_local global i32 0, align 4
@HECC_CANGIM = common dso_local global i32 0, align 4
@HECC_CANMIM = common dso_local global i32 0, align 4
@HECC_CANME = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ti_hecc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_hecc_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ti_hecc_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ti_hecc_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.ti_hecc_priv* %5, %struct.ti_hecc_priv** %3, align 8
  %6 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %3, align 8
  %7 = load i32, i32* @HECC_CANMC, align 4
  %8 = load i32, i32* @HECC_CANMC_CCR, align 4
  %9 = call i32 @hecc_set_bit(%struct.ti_hecc_priv* %6, i32 %7, i32 %8)
  %10 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %3, align 8
  %11 = load i32, i32* @HECC_CANGIM, align 4
  %12 = call i32 @hecc_write(%struct.ti_hecc_priv* %10, i32 %11, i32 0)
  %13 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %3, align 8
  %14 = load i32, i32* @HECC_CANMIM, align 4
  %15 = call i32 @hecc_write(%struct.ti_hecc_priv* %13, i32 %14, i32 0)
  %16 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %3, align 8
  %17 = load i32, i32* @HECC_CANME, align 4
  %18 = call i32 @hecc_write(%struct.ti_hecc_priv* %16, i32 %17, i32 0)
  %19 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %20 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  ret void
}

declare dso_local %struct.ti_hecc_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hecc_set_bit(%struct.ti_hecc_priv*, i32, i32) #1

declare dso_local i32 @hecc_write(%struct.ti_hecc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
