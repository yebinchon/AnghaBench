; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.mv643xx_eth_private = type { i32, i32, i64, i64, i32, i32, i32 }

@INT_MASK_EXT = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mv643xx_eth_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %5)
  store %struct.mv643xx_eth_private* %6, %struct.mv643xx_eth_private** %3, align 8
  %7 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %8 = load i32, i32* @INT_MASK_EXT, align 4
  %9 = call i32 @wrlp(%struct.mv643xx_eth_private* %7, i32 %8, i32 0)
  %10 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %11 = load i32, i32* @INT_MASK, align 4
  %12 = call i32 @wrlp(%struct.mv643xx_eth_private* %10, i32 %11, i32 0)
  %13 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %14 = load i32, i32* @INT_MASK, align 4
  %15 = call i32 @rdlp(%struct.mv643xx_eth_private* %13, i32 %14)
  %16 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %17 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %16, i32 0, i32 6
  %18 = call i32 @napi_disable(i32* %17)
  %19 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %20 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %19, i32 0, i32 5
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @netif_carrier_off(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @phy_stop(i64 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.net_device* %37)
  %39 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %40 = call i32 @port_reset(%struct.mv643xx_eth_private* %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @mv643xx_eth_get_stats(%struct.net_device* %41)
  %43 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %44 = call i32 @mib_counters_update(%struct.mv643xx_eth_private* %43)
  %45 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %46 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %45, i32 0, i32 4
  %47 = call i32 @del_timer_sync(i32* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %62, %33
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %51 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %56 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @rxq_deinit(i64 %60)
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %48

65:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %69 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %74 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 @txq_deinit(i64 %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %66

83:                                               ; preds = %66
  ret i32 0
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @port_reset(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @mv643xx_eth_get_stats(%struct.net_device*) #1

declare dso_local i32 @mib_counters_update(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @rxq_deinit(i64) #1

declare dso_local i32 @txq_deinit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
