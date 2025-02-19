; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_mdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_mdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32*, %struct.net_device* }
%struct.net_device = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgene_enet_mdio_remove(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %4 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %5 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @phy_disconnect(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %18 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @mdiobus_unregister(i32* %19)
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @mdiobus_free(i32* %23)
  %25 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %26 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  ret void
}

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @mdiobus_unregister(i32*) #1

declare dso_local i32 @mdiobus_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
