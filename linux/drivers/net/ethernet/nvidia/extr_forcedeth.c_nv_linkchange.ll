; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_linkchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_linkchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nv_linkchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_linkchange(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = call i64 @nv_update_linkspeed(%struct.net_device* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i64 @netif_carrier_ok(%struct.net_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_carrier_on(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netdev_info(%struct.net_device* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @nv_txrx_gate(%struct.net_device* %15, i32 0)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @nv_start_rx(%struct.net_device* %17)
  br label %19

19:                                               ; preds = %10, %6
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i64 @netif_carrier_ok(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @netif_carrier_off(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @netdev_info(%struct.net_device* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @nv_txrx_gate(%struct.net_device* %29, i32 1)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @nv_stop_rx(%struct.net_device* %31)
  br label %33

33:                                               ; preds = %24, %20
  br label %34

34:                                               ; preds = %33, %19
  ret void
}

declare dso_local i64 @nv_update_linkspeed(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @nv_txrx_gate(%struct.net_device*, i32) #1

declare dso_local i32 @nv_start_rx(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @nv_stop_rx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
