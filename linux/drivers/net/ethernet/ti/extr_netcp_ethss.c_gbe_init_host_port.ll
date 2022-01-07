; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_init_host_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_init_host_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i64, i32, i32, i64 }

@HOST_TX_PRI_MAP_DEFAULT = common dso_local global i32 0, align 4
@host_port_regs = common dso_local global i32 0, align 4
@tx_pri_map = common dso_local global i32 0, align 4
@NETCP_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@rx_maxlen = common dso_local global i32 0, align 4
@ALE_BYPASS = common dso_local global i32 0, align 4
@ALE_NO_PORT_VLAN = common dso_local global i32 0, align 4
@ALE_PORT_STATE = common dso_local global i32 0, align 4
@ALE_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@ALE_PORT_UNKNOWN_VLAN_MEMBER = common dso_local global i32 0, align 4
@ALE_PORT_UNKNOWN_MCAST_FLOOD = common dso_local global i32 0, align 4
@ALE_PORT_UNKNOWN_REG_MCAST_FLOOD = common dso_local global i32 0, align 4
@ALE_PORT_UNTAGGED_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_priv*)* @gbe_init_host_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbe_init_host_port(%struct.gbe_priv* %0) #0 {
  %2 = alloca %struct.gbe_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.gbe_priv* %0, %struct.gbe_priv** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %5 = call i64 @IS_SS_ID_NU(%struct.gbe_priv* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %9 = call i64 @IS_SS_ID_XGBE(%struct.gbe_priv* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @HOST_TX_PRI_MAP_DEFAULT, align 4
  %13 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %14 = load i32, i32* @host_port_regs, align 4
  %15 = load i32, i32* @tx_pri_map, align 4
  %16 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %13, i32 %14, i32 %15)
  %17 = call i32 @writel(i32 %12, i32 %16)
  br label %18

18:                                               ; preds = %11, %7
  %19 = load i32, i32* @NETCP_MAX_FRAME_SIZE, align 4
  %20 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %21 = load i32, i32* @host_port_regs, align 4
  %22 = load i32, i32* @rx_maxlen, align 4
  %23 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %20, i32 %21, i32 %22)
  %24 = call i32 @writel(i32 %19, i32 %23)
  %25 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %26 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @cpsw_ale_start(i32 %27)
  %29 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %30 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %36 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ALE_BYPASS, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @cpsw_ale_control_set(i32 %37, i32 0, i32 %38, i32 %39)
  %41 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %42 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ALE_NO_PORT_VLAN, align 4
  %45 = call i32 @cpsw_ale_control_set(i32 %43, i32 0, i32 %44, i32 1)
  %46 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %47 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %50 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ALE_PORT_STATE, align 4
  %53 = load i32, i32* @ALE_PORT_STATE_FORWARD, align 4
  %54 = call i32 @cpsw_ale_control_set(i32 %48, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %56 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ALE_PORT_UNKNOWN_VLAN_MEMBER, align 4
  %59 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %60 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @GBE_PORT_MASK(i64 %61)
  %63 = call i32 @cpsw_ale_control_set(i32 %57, i32 0, i32 %58, i32 %62)
  %64 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %65 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ALE_PORT_UNKNOWN_MCAST_FLOOD, align 4
  %68 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %69 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, 1
  %72 = call i32 @GBE_PORT_MASK(i64 %71)
  %73 = call i32 @cpsw_ale_control_set(i32 %66, i32 0, i32 %67, i32 %72)
  %74 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %75 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ALE_PORT_UNKNOWN_REG_MCAST_FLOOD, align 4
  %78 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %79 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @GBE_PORT_MASK(i64 %80)
  %82 = call i32 @cpsw_ale_control_set(i32 %76, i32 0, i32 %77, i32 %81)
  %83 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %84 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ALE_PORT_UNTAGGED_EGRESS, align 4
  %87 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %88 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @GBE_PORT_MASK(i64 %89)
  %91 = call i32 @cpsw_ale_control_set(i32 %85, i32 0, i32 %86, i32 %90)
  ret void
}

declare dso_local i64 @IS_SS_ID_NU(%struct.gbe_priv*) #1

declare dso_local i64 @IS_SS_ID_XGBE(%struct.gbe_priv*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @GBE_REG_ADDR(%struct.gbe_priv*, i32, i32) #1

declare dso_local i32 @cpsw_ale_start(i32) #1

declare dso_local i32 @cpsw_ale_control_set(i32, i32, i32, i32) #1

declare dso_local i32 @GBE_PORT_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
