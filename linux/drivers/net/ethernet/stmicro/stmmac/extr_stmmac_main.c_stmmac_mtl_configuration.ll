; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mtl_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mtl_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_mtl_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_mtl_configuration(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %5 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %6 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %11 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %19 = call i32 @stmmac_set_tx_queue_weight(%struct.stmmac_priv* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %26 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @stmmac_prog_mtl_rx_algorithms(%struct.stmmac_priv* %24, i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %43 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @stmmac_prog_mtl_tx_algorithms(%struct.stmmac_priv* %38, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %37, %34
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %53 = call i32 @stmmac_configure_cbs(%struct.stmmac_priv* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %56 = call i32 @stmmac_rx_queue_dma_chan_map(%struct.stmmac_priv* %55)
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %58 = call i32 @stmmac_mac_enable_rx_queues(%struct.stmmac_priv* %57)
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %63 = call i32 @stmmac_mac_config_rx_queues_prio(%struct.stmmac_priv* %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %69 = call i32 @stmmac_mac_config_tx_queues_prio(%struct.stmmac_priv* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %3, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %75 = call i32 @stmmac_mac_config_rx_queues_routing(%struct.stmmac_priv* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %3, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %81 = call i32 @stmmac_mac_config_rss(%struct.stmmac_priv* %80)
  br label %82

82:                                               ; preds = %79, %76
  ret void
}

declare dso_local i32 @stmmac_set_tx_queue_weight(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_prog_mtl_rx_algorithms(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @stmmac_prog_mtl_tx_algorithms(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @stmmac_configure_cbs(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_rx_queue_dma_chan_map(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_mac_enable_rx_queues(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_mac_config_rx_queues_prio(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_mac_config_tx_queues_prio(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_mac_config_rx_queues_routing(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_mac_config_rss(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
