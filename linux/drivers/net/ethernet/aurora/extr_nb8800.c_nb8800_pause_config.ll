; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_pause_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_pause_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32, i32 }
%struct.nb8800_priv = type { i32, i32, i32, i64 }

@NB8800_RX_CTL = common dso_local global i32 0, align 4
@RX_PAUSE_EN = common dso_local global i32 0, align 4
@NB8800_RXC_CR = common dso_local global i32 0, align 4
@RCR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nb8800_pause_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nb8800_pause_config(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nb8800_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.nb8800_priv* %7, %struct.nb8800_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %4, align 8
  %11 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = icmp ne %struct.phy_device* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %15
  br label %96

24:                                               ; preds = %18
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %29 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %32, %35
  %37 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %38 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %24, %1
  %40 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %41 = load i32, i32* @NB8800_RX_CTL, align 4
  %42 = load i32, i32* @RX_PAUSE_EN, align 4
  %43 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %44 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nb8800_modb(%struct.nb8800_priv* %40, i32 %41, i32 %42, i32 %45)
  %47 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %48 = load i32, i32* @NB8800_RXC_CR, align 4
  %49 = call i32 @nb8800_readl(%struct.nb8800_priv* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @RCR_FL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %58 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %39
  br label %96

62:                                               ; preds = %39
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = call i64 @netif_running(%struct.net_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %68 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %67, i32 0, i32 2
  %69 = call i32 @napi_disable(i32* %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @netif_tx_lock_bh(%struct.net_device* %70)
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = call i32 @nb8800_dma_stop(%struct.net_device* %72)
  %74 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %75 = load i32, i32* @NB8800_RXC_CR, align 4
  %76 = load i32, i32* @RCR_FL, align 4
  %77 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %78 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nb8800_modl(%struct.nb8800_priv* %74, i32 %75, i32 %76, i32 %79)
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = call i32 @nb8800_start_rx(%struct.net_device* %81)
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = call i32 @netif_tx_unlock_bh(%struct.net_device* %83)
  %85 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %86 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %85, i32 0, i32 2
  %87 = call i32 @napi_enable(i32* %86)
  br label %96

88:                                               ; preds = %62
  %89 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %90 = load i32, i32* @NB8800_RXC_CR, align 4
  %91 = load i32, i32* @RCR_FL, align 4
  %92 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %93 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @nb8800_modl(%struct.nb8800_priv* %89, i32 %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %23, %61, %88, %66
  ret void
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nb8800_modb(%struct.nb8800_priv*, i32, i32, i32) #1

declare dso_local i32 @nb8800_readl(%struct.nb8800_priv*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @nb8800_dma_stop(%struct.net_device*) #1

declare dso_local i32 @nb8800_modl(%struct.nb8800_priv*, i32, i32, i32) #1

declare dso_local i32 @nb8800_start_rx(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
