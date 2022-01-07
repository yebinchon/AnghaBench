; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nps_enet_priv = type { i32, i32, i32, i64, i32* }

@NPS_ENET_GE_MAC_CFG_3_RX_IFG_TH = common dso_local global i32 0, align 4
@CFG_3_RX_IFG_TH_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_GE_MAC_CFG_3_MAX_LEN = common dso_local global i32 0, align 4
@CFG_3_MAX_LEN_SHIFT = common dso_local global i32 0, align 4
@nps_enet_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"enet-rx-tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @nps_enet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nps_enet_open(%struct.net_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nps_enet_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.nps_enet_priv* %7, %struct.nps_enet_priv** %4, align 8
  %8 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %4, align 8
  %9 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %8, i32 0, i32 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %4, align 8
  %11 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %4, align 8
  %13 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* @NPS_ENET_GE_MAC_CFG_3_RX_IFG_TH, align 4
  %15 = load i32, i32* @CFG_3_RX_IFG_TH_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %4, align 8
  %18 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @NPS_ENET_GE_MAC_CFG_3_MAX_LEN, align 4
  %22 = load i32, i32* @CFG_3_MAX_LEN_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %4, align 8
  %25 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @nps_enet_hw_disable_control(%struct.net_device* %28)
  %30 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %4, align 8
  %31 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @nps_enet_irq_handler, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i64 @request_irq(i32 %32, i32 %33, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.net_device* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %50

40:                                               ; preds = %1
  %41 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %4, align 8
  %42 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %41, i32 0, i32 1
  %43 = call i32 @napi_enable(i32* %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @nps_enet_hw_reset(%struct.net_device* %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @nps_enet_hw_enable_control(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @netif_start_queue(%struct.net_device* %48)
  store i64 0, i64* %2, align 8
  br label %50

50:                                               ; preds = %40, %38
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nps_enet_hw_disable_control(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @nps_enet_hw_reset(%struct.net_device*) #1

declare dso_local i32 @nps_enet_hw_enable_control(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
