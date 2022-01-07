; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.bcm_sysport_priv = type { i32, i32, i32 }

@CMD_RX_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"timeout disabling RDMA\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"timeout disabling TDMA\0A\00", align 1
@CMD_TX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_sysport_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_stop(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcm_sysport_priv* %8, %struct.bcm_sysport_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @bcm_sysport_netif_stop(%struct.net_device* %9)
  %11 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %12 = load i32, i32* @CMD_RX_EN, align 4
  %13 = call i32 @umac_enable_set(%struct.bcm_sysport_priv* %11, i32 %12, i32 0)
  %14 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %15 = call i32 @tdma_enable_set(%struct.bcm_sysport_priv* %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netdev_err(%struct.net_device* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = call i32 @usleep_range(i32 2000, i32 3000)
  %24 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %25 = call i32 @rdma_enable_set(%struct.bcm_sysport_priv* %24, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netdev_err(%struct.net_device* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %72

32:                                               ; preds = %22
  %33 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %34 = load i32, i32* @CMD_TX_EN, align 4
  %35 = call i32 @umac_enable_set(%struct.bcm_sysport_priv* %33, i32 %34, i32 0)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %46, %32
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @bcm_sysport_fini_tx_ring(%struct.bcm_sysport_priv* %43, i32 %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %51 = call i32 @bcm_sysport_fini_rx_ring(%struct.bcm_sysport_priv* %50)
  %52 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %53 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @free_irq(i32 %54, %struct.net_device* %55)
  %57 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %58 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %49
  %62 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %63 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @free_irq(i32 %64, %struct.net_device* %65)
  br label %67

67:                                               ; preds = %61, %49
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @phy_disconnect(i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %28, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcm_sysport_netif_stop(%struct.net_device*) #1

declare dso_local i32 @umac_enable_set(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @tdma_enable_set(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rdma_enable_set(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @bcm_sysport_fini_tx_ring(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @bcm_sysport_fini_rx_ring(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
