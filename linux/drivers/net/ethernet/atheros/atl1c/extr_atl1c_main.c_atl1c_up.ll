; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@__AT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*)* @atl1c_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_up(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  %6 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i32 @netif_carrier_off(%struct.net_device* %9)
  %11 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %12 = call i32 @atl1c_configure(%struct.atl1c_adapter* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %19 = call i32 @atl1c_request_irq(%struct.atl1c_adapter* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %39

24:                                               ; preds = %17
  %25 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %26 = call i32 @atl1c_check_link_status(%struct.atl1c_adapter* %25)
  %27 = load i32, i32* @__AT_DOWN, align 4
  %28 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %28, i32 0, i32 1
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %31, i32 0, i32 0
  %33 = call i32 @napi_enable(i32* %32)
  %34 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %35 = call i32 @atl1c_irq_enable(%struct.atl1c_adapter* %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netif_start_queue(%struct.net_device* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %23, %16
  %40 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %41 = call i32 @atl1c_clean_rx_ring(%struct.atl1c_adapter* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @atl1c_configure(%struct.atl1c_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atl1c_request_irq(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_check_link_status(%struct.atl1c_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @atl1c_irq_enable(%struct.atl1c_adapter*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @atl1c_clean_rx_ring(%struct.atl1c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
