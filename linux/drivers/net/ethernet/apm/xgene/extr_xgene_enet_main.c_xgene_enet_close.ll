; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.xgene_enet_pdata = type { i32, i32*, i32, %struct.xgene_mac_ops* }
%struct.xgene_mac_ops = type { i32 (%struct.xgene_enet_pdata.0*)*, i32 (%struct.xgene_enet_pdata.1*)* }
%struct.xgene_enet_pdata.0 = type opaque
%struct.xgene_enet_pdata.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xgene_enet_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.xgene_mac_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.xgene_enet_pdata* %7, %struct.xgene_enet_pdata** %3, align 8
  %8 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %8, i32 0, i32 3
  %10 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %9, align 8
  store %struct.xgene_mac_ops* %10, %struct.xgene_mac_ops** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %11)
  %13 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %4, align 8
  %14 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %13, i32 0, i32 1
  %15 = load i32 (%struct.xgene_enet_pdata.1*)*, i32 (%struct.xgene_enet_pdata.1*)** %14, align 8
  %16 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %17 = bitcast %struct.xgene_enet_pdata* %16 to %struct.xgene_enet_pdata.1*
  %18 = call i32 %15(%struct.xgene_enet_pdata.1* %17)
  %19 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %4, align 8
  %20 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.xgene_enet_pdata.0*)*, i32 (%struct.xgene_enet_pdata.0*)** %20, align 8
  %22 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %23 = bitcast %struct.xgene_enet_pdata* %22 to %struct.xgene_enet_pdata.0*
  %24 = call i32 %21(%struct.xgene_enet_pdata.0* %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @phy_stop(i64 %32)
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %36 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %35, i32 0, i32 2
  %37 = call i32 @cancel_delayed_work_sync(i32* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @xgene_enet_free_irq(%struct.net_device* %39)
  %41 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %42 = call i32 @xgene_enet_napi_disable(%struct.xgene_enet_pdata* %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %58, %38
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %46 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %51 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xgene_enet_process_ring(i32 %56, i32 -1)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %43

61:                                               ; preds = %43
  ret i32 0
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @xgene_enet_free_irq(%struct.net_device*) #1

declare dso_local i32 @xgene_enet_napi_disable(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_process_ring(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
