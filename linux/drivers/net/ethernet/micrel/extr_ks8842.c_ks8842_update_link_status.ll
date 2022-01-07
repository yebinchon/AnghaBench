; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8842.c_ks8842_update_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8842.c_ks8842_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ks8842_adapter = type { i32 }

@REG_P1MBSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ks8842_adapter*)* @ks8842_update_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8842_update_link_status(%struct.net_device* %0, %struct.ks8842_adapter* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ks8842_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ks8842_adapter* %1, %struct.ks8842_adapter** %4, align 8
  %5 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %4, align 8
  %6 = load i32, i32* @REG_P1MBSR, align 4
  %7 = call i32 @ks8842_read16(%struct.ks8842_adapter* %5, i32 45, i32 %6)
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netif_carrier_on(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @netif_wake_queue(%struct.net_device* %13)
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @netif_carrier_off(%struct.net_device* %18)
  br label %20

20:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @ks8842_read16(%struct.ks8842_adapter*, i32, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
