; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.nb8800_priv = type { i32, i32, i32 }
%struct.phy_device = type { i32 }

@NB8800_RXC_SR = common dso_local global i32 0, align 4
@NB8800_TXC_SR = common dso_local global i32 0, align 4
@nb8800_irq = common dso_local global i32 0, align 4
@nb8800_link_reconfigure = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nb8800_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nb8800_priv*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.nb8800_priv* %8, %struct.nb8800_priv** %4, align 8
  %9 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %10 = load i32, i32* @NB8800_RXC_SR, align 4
  %11 = call i32 @nb8800_writel(%struct.nb8800_priv* %9, i32 %10, i32 15)
  %12 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %13 = load i32, i32* @NB8800_TXC_SR, align 4
  %14 = call i32 @nb8800_writel(%struct.nb8800_priv* %12, i32 %13, i32 15)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @nb8800_dma_init(%struct.net_device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %77

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @nb8800_irq, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = call i32 @dev_name(i32* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @request_irq(i32 %24, i32 %25, i32 0, i32 %28, %struct.net_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %73

34:                                               ; preds = %21
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @nb8800_mac_rx(%struct.net_device* %35, i32 1)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @nb8800_mac_tx(%struct.net_device* %37, i32 1)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %41 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @nb8800_link_reconfigure, align 4
  %44 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %45 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %39, i32 %42, i32 %43, i32 0, i32 %46)
  store %struct.phy_device* %47, %struct.phy_device** %5, align 8
  %48 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %49 = icmp ne %struct.phy_device* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %67

53:                                               ; preds = %34
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @nb8800_pause_adv(%struct.net_device* %54)
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netdev_reset_queue(%struct.net_device* %56)
  %58 = load %struct.nb8800_priv*, %struct.nb8800_priv** %4, align 8
  %59 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %58, i32 0, i32 0
  %60 = call i32 @napi_enable(i32* %59)
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @netif_start_queue(%struct.net_device* %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @nb8800_start_rx(%struct.net_device* %63)
  %65 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %66 = call i32 @phy_start(%struct.phy_device* %65)
  store i32 0, i32* %2, align 4
  br label %77

67:                                               ; preds = %50
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @free_irq(i32 %70, %struct.net_device* %71)
  br label %73

73:                                               ; preds = %67, %33
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @nb8800_dma_free(%struct.net_device* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %53, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nb8800_writel(%struct.nb8800_priv*, i32, i32) #1

declare dso_local i32 @nb8800_dma_init(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @nb8800_mac_rx(%struct.net_device*, i32) #1

declare dso_local i32 @nb8800_mac_tx(%struct.net_device*, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @nb8800_pause_adv(%struct.net_device*) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @nb8800_start_rx(%struct.net_device*) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @nb8800_dma_free(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
