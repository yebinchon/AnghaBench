; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w5100_priv = type { i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"enabling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @w5100_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5100_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.w5100_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.w5100_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.w5100_priv* %5, %struct.w5100_priv** %3, align 8
  %6 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %7 = load i32, i32* @ifup, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_info(%struct.w5100_priv* %6, i32 %7, %struct.net_device* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %11 = call i32 @w5100_hw_start(%struct.w5100_priv* %10)
  %12 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %13 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %12, i32 0, i32 1
  %14 = call i32 @napi_enable(i32* %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_start_queue(%struct.net_device* %15)
  %17 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %18 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpio_is_valid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %24 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @gpio_get_value(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @netif_carrier_on(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %22
  ret i32 0
}

declare dso_local %struct.w5100_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.w5100_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @w5100_hw_start(%struct.w5100_priv*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
