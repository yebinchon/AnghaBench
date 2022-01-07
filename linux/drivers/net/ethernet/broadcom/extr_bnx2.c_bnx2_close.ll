; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2 = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnx2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnx2*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bnx2* @netdev_priv(%struct.net_device* %4)
  store %struct.bnx2* %5, %struct.bnx2** %3, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = call i32 @bnx2_disable_int_sync(%struct.bnx2* %6)
  %8 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %9 = call i32 @bnx2_napi_disable(%struct.bnx2* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_tx_disable(%struct.net_device* %10)
  %12 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 2
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = call i32 @bnx2_shutdown_chip(%struct.bnx2* %15)
  %17 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %18 = call i32 @bnx2_free_irq(%struct.bnx2* %17)
  %19 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %20 = call i32 @bnx2_free_skbs(%struct.bnx2* %19)
  %21 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %22 = call i32 @bnx2_free_mem(%struct.bnx2* %21)
  %23 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %24 = call i32 @bnx2_del_napi(%struct.bnx2* %23)
  %25 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netif_carrier_off(i32 %29)
  ret i32 0
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2_disable_int_sync(%struct.bnx2*) #1

declare dso_local i32 @bnx2_napi_disable(%struct.bnx2*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @bnx2_shutdown_chip(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_irq(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_skbs(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_del_napi(%struct.bnx2*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
