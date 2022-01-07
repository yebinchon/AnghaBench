; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { i32, i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"TX stuck with port_enabled=%d: resetting channels\0A\00", align 1
@RESET_TYPE_TX_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @efx_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_watchdog(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %4)
  store %struct.efx_nic* %5, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = load i32, i32* @tx_err, align 4
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netif_err(%struct.efx_nic* %6, i32 %7, i32 %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = load i32, i32* @RESET_TYPE_TX_WATCHDOG, align 4
  %17 = call i32 @efx_schedule_reset(%struct.efx_nic* %15, i32 %16)
  ret void
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
