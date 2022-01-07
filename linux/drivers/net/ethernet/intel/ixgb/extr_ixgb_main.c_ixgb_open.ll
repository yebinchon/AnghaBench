; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgb_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ixgb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgb_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ixgb_adapter* %7, %struct.ixgb_adapter** %4, align 8
  %8 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %9 = call i32 @ixgb_setup_tx_resources(%struct.ixgb_adapter* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netif_carrier_off(%struct.net_device* %14)
  %16 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %17 = call i32 @ixgb_setup_rx_resources(%struct.ixgb_adapter* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %33

21:                                               ; preds = %13
  %22 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %23 = call i32 @ixgb_up(%struct.ixgb_adapter* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %30

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netif_start_queue(%struct.net_device* %28)
  store i32 0, i32* %2, align 4
  br label %40

30:                                               ; preds = %26
  %31 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %32 = call i32 @ixgb_free_rx_resources(%struct.ixgb_adapter* %31)
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %35 = call i32 @ixgb_free_tx_resources(%struct.ixgb_adapter* %34)
  br label %36

36:                                               ; preds = %33, %12
  %37 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %38 = call i32 @ixgb_reset(%struct.ixgb_adapter* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgb_setup_tx_resources(%struct.ixgb_adapter*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ixgb_setup_rx_resources(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_up(%struct.ixgb_adapter*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @ixgb_free_rx_resources(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_free_tx_resources(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
