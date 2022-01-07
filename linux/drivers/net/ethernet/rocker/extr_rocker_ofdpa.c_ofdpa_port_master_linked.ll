; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_master_linked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_master_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.ofdpa_port* }
%struct.ofdpa_port = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.net_device*)* @ofdpa_port_master_linked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_master_linked(%struct.rocker_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ofdpa_port*, align 8
  %6 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %8 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %7, i32 0, i32 0
  %9 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  store %struct.ofdpa_port* %9, %struct.ofdpa_port** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i64 @netif_is_bridge_master(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @ofdpa_port_bridge_join(%struct.ofdpa_port* %14, %struct.net_device* %15)
  store i32 %16, i32* %6, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i64 @netif_is_ovs_master(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @ofdpa_port_ovs_changed(%struct.ofdpa_port* %22, %struct.net_device* %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i64 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local i32 @ofdpa_port_bridge_join(%struct.ofdpa_port*, %struct.net_device*) #1

declare dso_local i64 @netif_is_ovs_master(%struct.net_device*) #1

declare dso_local i32 @ofdpa_port_ovs_changed(%struct.ofdpa_port*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
