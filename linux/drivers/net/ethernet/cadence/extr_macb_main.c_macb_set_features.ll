; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macb = type { i32 }

@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @macb_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.macb*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.macb* @netdev_priv(%struct.net_device* %7)
  store %struct.macb* %8, %struct.macb** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.macb*, %struct.macb** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @macb_set_txcsum_feature(%struct.macb* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.macb*, %struct.macb** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @macb_set_rxcsum_feature(%struct.macb* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.macb*, %struct.macb** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @macb_set_rxflow_feature(%struct.macb* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  ret i32 0
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @macb_set_txcsum_feature(%struct.macb*, i32) #1

declare dso_local i32 @macb_set_rxcsum_feature(%struct.macb*, i32) #1

declare dso_local i32 @macb_set_rxflow_feature(%struct.macb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
