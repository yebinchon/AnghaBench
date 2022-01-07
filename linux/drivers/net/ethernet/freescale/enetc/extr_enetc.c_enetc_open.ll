; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.enetc_ndev_priv = type { i32, %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.enetc_ndev_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.enetc_ndev_priv* %8, %struct.enetc_ndev_priv** %4, align 8
  %9 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %10 = call i32 @enetc_setup_irqs(%struct.enetc_ndev_priv* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @enetc_phy_connect(%struct.net_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %108

21:                                               ; preds = %15
  %22 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %23 = call i32 @enetc_alloc_tx_resources(%struct.enetc_ndev_priv* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %97

27:                                               ; preds = %21
  %28 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %29 = call i32 @enetc_alloc_rx_resources(%struct.enetc_ndev_priv* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %94

33:                                               ; preds = %27
  %34 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %35 = call i32 @enetc_setup_bdrs(%struct.enetc_ndev_priv* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %38 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %91

44:                                               ; preds = %33
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %47 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %91

53:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %57 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %62 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @napi_enable(i32* %68)
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %75 = call i32 @enetc_enable_interrupts(%struct.enetc_ndev_priv* %74)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @phy_start(i64 %83)
  br label %88

85:                                               ; preds = %73
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = call i32 @netif_carrier_on(%struct.net_device* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = call i32 @netif_tx_start_all_queues(%struct.net_device* %89)
  store i32 0, i32* %2, align 4
  br label %112

91:                                               ; preds = %52, %43
  %92 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %93 = call i32 @enetc_free_rx_resources(%struct.enetc_ndev_priv* %92)
  br label %94

94:                                               ; preds = %91, %32
  %95 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %96 = call i32 @enetc_free_tx_resources(%struct.enetc_ndev_priv* %95)
  br label %97

97:                                               ; preds = %94, %26
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @phy_disconnect(i64 %105)
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %107, %20
  %109 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %110 = call i32 @enetc_free_irqs(%struct.enetc_ndev_priv* %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %88, %13
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_setup_irqs(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_phy_connect(%struct.net_device*) #1

declare dso_local i32 @enetc_alloc_tx_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_alloc_rx_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_setup_bdrs(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @enetc_enable_interrupts(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @enetc_free_rx_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_free_tx_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @enetc_free_irqs(%struct.enetc_ndev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
