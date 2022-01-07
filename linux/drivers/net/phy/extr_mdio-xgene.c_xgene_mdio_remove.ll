; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_mdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_mdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.xgene_mdio_pdata = type { i32, %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_mdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_mdio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xgene_mdio_pdata*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.xgene_mdio_pdata* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.xgene_mdio_pdata* %7, %struct.xgene_mdio_pdata** %3, align 8
  %8 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %8, i32 0, i32 1
  %10 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  store %struct.mii_bus* %10, %struct.mii_bus** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %14 = call i32 @mdiobus_unregister(%struct.mii_bus* %13)
  %15 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %16 = call i32 @mdiobus_free(%struct.mii_bus* %15)
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local %struct.xgene_mdio_pdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
