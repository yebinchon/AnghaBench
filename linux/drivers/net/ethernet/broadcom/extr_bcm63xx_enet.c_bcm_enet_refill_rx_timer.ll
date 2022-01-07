; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_refill_rx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_refill_rx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_priv = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@rx_timeout = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.bcm_enet_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bcm_enet_refill_rx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_refill_rx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %6 = ptrtoint %struct.bcm_enet_priv* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @rx_timeout, align 4
  %9 = call %struct.bcm_enet_priv* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.bcm_enet_priv* %9, %struct.bcm_enet_priv** %3, align 8
  %10 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %11 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @bcm_enet_refill_rx(%struct.net_device* %16)
  %18 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %19 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  ret void
}

declare dso_local %struct.bcm_enet_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bcm_enet_refill_rx(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
