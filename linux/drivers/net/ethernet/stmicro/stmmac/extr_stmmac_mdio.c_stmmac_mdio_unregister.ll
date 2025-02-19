; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_mdio_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_mdio_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.stmmac_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmmac_mdio_unregister(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.stmmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.stmmac_priv* %6, %struct.stmmac_priv** %4, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @mdiobus_unregister(%struct.TYPE_3__* %15)
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @mdiobus_free(%struct.TYPE_3__* %23)
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %26 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %25, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
