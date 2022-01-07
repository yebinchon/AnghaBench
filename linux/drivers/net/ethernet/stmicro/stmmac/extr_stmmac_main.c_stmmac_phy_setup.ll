; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_phy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.phylink*, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.phylink = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fwnode_handle = type { i32 }

@PHYLINK_NETDEV = common dso_local global i32 0, align 4
@stmmac_phylink_mac_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @stmmac_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_phy_setup(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fwnode_handle* @of_fwnode_handle(i32 %11)
  store %struct.fwnode_handle* %12, %struct.fwnode_handle** %4, align 8
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32* %21, i32** %24, align 8
  %25 = load i32, i32* @PHYLINK_NETDEV, align 4
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %30 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %29, i32 0, i32 1
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.phylink* @phylink_create(%struct.TYPE_6__* %30, %struct.fwnode_handle* %31, i32 %32, i32* @stmmac_phylink_mac_ops)
  store %struct.phylink* %33, %struct.phylink** %6, align 8
  %34 = load %struct.phylink*, %struct.phylink** %6, align 8
  %35 = call i64 @IS_ERR(%struct.phylink* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.phylink*, %struct.phylink** %6, align 8
  %39 = call i32 @PTR_ERR(%struct.phylink* %38)
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %1
  %41 = load %struct.phylink*, %struct.phylink** %6, align 8
  %42 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %43 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %42, i32 0, i32 0
  store %struct.phylink* %41, %struct.phylink** %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.fwnode_handle* @of_fwnode_handle(i32) #1

declare dso_local %struct.phylink* @phylink_create(%struct.TYPE_6__*, %struct.fwnode_handle*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.phylink*) #1

declare dso_local i32 @PTR_ERR(%struct.phylink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
