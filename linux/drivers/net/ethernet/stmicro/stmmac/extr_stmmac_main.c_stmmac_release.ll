; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.stmmac_priv = type { i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @stmmac_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_release(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.stmmac_priv* %6, %struct.stmmac_priv** %3, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 6
  %14 = call i32 @del_timer_sync(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @phylink_stop(i32 %18)
  %20 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %21 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @phylink_disconnect_phy(i32 %22)
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %25 = call i32 @stmmac_stop_all_queues(%struct.stmmac_priv* %24)
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %27 = call i32 @stmmac_disable_all_queues(%struct.stmmac_priv* %26)
  store i64 0, i64* %4, align 8
  br label %28

28:                                               ; preds = %44, %15
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %31 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %38 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @del_timer_sync(i32* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %4, align 8
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @free_irq(i64 %50, %struct.net_device* %51)
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %54 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %47
  %61 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %62 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @free_irq(i64 %63, %struct.net_device* %64)
  br label %66

66:                                               ; preds = %60, %47
  %67 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %68 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %73 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 @free_irq(i64 %74, %struct.net_device* %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %79 = call i32 @stmmac_stop_all_dma(%struct.stmmac_priv* %78)
  %80 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %81 = call i32 @free_dma_desc_resources(%struct.stmmac_priv* %80)
  %82 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %83 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %84 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @stmmac_mac_set(%struct.stmmac_priv* %82, i32 %85, i32 0)
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call i32 @netif_carrier_off(%struct.net_device* %87)
  %89 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %90 = call i32 @stmmac_release_ptp(%struct.stmmac_priv* %89)
  ret i32 0
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @phylink_stop(i32) #1

declare dso_local i32 @phylink_disconnect_phy(i32) #1

declare dso_local i32 @stmmac_stop_all_queues(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_disable_all_queues(%struct.stmmac_priv*) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @stmmac_stop_all_dma(%struct.stmmac_priv*) #1

declare dso_local i32 @free_dma_desc_resources(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_mac_set(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @stmmac_release_ptp(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
