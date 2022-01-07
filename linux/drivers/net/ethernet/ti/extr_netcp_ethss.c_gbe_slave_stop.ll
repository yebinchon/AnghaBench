; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_slave_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_slave_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_intf = type { %struct.TYPE_2__*, %struct.gbe_slave*, %struct.gbe_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.gbe_slave = type { i32, i32* }
%struct.gbe_priv = type { i32 }

@ALE_PORT_STATE = common dso_local global i32 0, align 4
@ALE_PORT_STATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_intf*)* @gbe_slave_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbe_slave_stop(%struct.gbe_intf* %0) #0 {
  %2 = alloca %struct.gbe_intf*, align 8
  %3 = alloca %struct.gbe_priv*, align 8
  %4 = alloca %struct.gbe_slave*, align 8
  store %struct.gbe_intf* %0, %struct.gbe_intf** %2, align 8
  %5 = load %struct.gbe_intf*, %struct.gbe_intf** %2, align 8
  %6 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %5, i32 0, i32 2
  %7 = load %struct.gbe_priv*, %struct.gbe_priv** %6, align 8
  store %struct.gbe_priv* %7, %struct.gbe_priv** %3, align 8
  %8 = load %struct.gbe_intf*, %struct.gbe_intf** %2, align 8
  %9 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %8, i32 0, i32 1
  %10 = load %struct.gbe_slave*, %struct.gbe_slave** %9, align 8
  store %struct.gbe_slave* %10, %struct.gbe_slave** %4, align 8
  %11 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %12 = call i32 @IS_SS_ID_2U(%struct.gbe_priv* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %16 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %17 = call i32 @gbe_sgmii_rtreset(%struct.gbe_priv* %15, %struct.gbe_slave* %16, i32 1)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %20 = call i32 @gbe_port_reset(%struct.gbe_slave* %19)
  %21 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %22 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %25 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ALE_PORT_STATE, align 4
  %28 = load i32, i32* @ALE_PORT_STATE_DISABLE, align 4
  %29 = call i32 @cpsw_ale_control_set(i32 %23, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %31 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gbe_intf*, %struct.gbe_intf** %2, align 8
  %34 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %39 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = call i32 @cpsw_ale_del_mcast(i32 %32, i32 %37, i32 %41, i32 0, i32 0)
  %43 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %44 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %18
  br label %59

48:                                               ; preds = %18
  %49 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %50 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @phy_stop(i32* %51)
  %53 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %54 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @phy_disconnect(i32* %55)
  %57 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %58 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @IS_SS_ID_2U(%struct.gbe_priv*) #1

declare dso_local i32 @gbe_sgmii_rtreset(%struct.gbe_priv*, %struct.gbe_slave*, i32) #1

declare dso_local i32 @gbe_port_reset(%struct.gbe_slave*) #1

declare dso_local i32 @cpsw_ale_control_set(i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_del_mcast(i32, i32, i32, i32, i32) #1

declare dso_local i32 @phy_stop(i32*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
