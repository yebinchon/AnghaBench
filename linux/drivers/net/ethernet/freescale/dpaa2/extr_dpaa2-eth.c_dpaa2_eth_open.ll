; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa2_eth_priv = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Buffer seeding failed for DPBP %d (bpid=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dpni_enable() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't update link state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dpaa2_eth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dpaa2_eth_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.dpaa2_eth_priv* %7, %struct.dpaa2_eth_priv** %4, align 8
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %9 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %10 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @seed_pool(%struct.dpaa2_eth_priv* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %18 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %24 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %15, %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %28)
  %30 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %31 = call i32 @enable_ch_napi(%struct.dpaa2_eth_priv* %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @netif_carrier_off(%struct.net_device* %32)
  %34 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %35 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %38 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dpni_enable(i32 %36, i32 0, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %56

46:                                               ; preds = %27
  %47 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %48 = call i32 @link_state_update(%struct.dpaa2_eth_priv* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %55

54:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %62

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %58 = call i32 @disable_ch_napi(%struct.dpaa2_eth_priv* %57)
  %59 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %60 = call i32 @drain_pool(%struct.dpaa2_eth_priv* %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %54
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @seed_pool(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @enable_ch_napi(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @dpni_enable(i32, i32, i32) #1

declare dso_local i32 @link_state_update(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @disable_ch_napi(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @drain_pool(%struct.dpaa2_eth_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
