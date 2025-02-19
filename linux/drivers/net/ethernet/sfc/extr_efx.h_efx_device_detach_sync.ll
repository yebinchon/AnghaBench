; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.h_efx_device_detach_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.h_efx_device_detach_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_device_detach_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_device_detach_sync(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 0
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @netif_tx_lock_bh(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @netif_device_detach(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netif_tx_unlock_bh(%struct.net_device* %11)
  ret void
}

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
