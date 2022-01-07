; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_netcp_ethss_update_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_netcp_ethss_update_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i32 }
%struct.gbe_slave = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_priv*, %struct.gbe_slave*, %struct.net_device*)* @netcp_ethss_update_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_ethss_update_link_state(%struct.gbe_priv* %0, %struct.gbe_slave* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.gbe_priv*, align 8
  %5 = alloca %struct.gbe_slave*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gbe_priv* %0, %struct.gbe_priv** %4, align 8
  store %struct.gbe_slave* %1, %struct.gbe_slave** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %12 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %15 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %21 = call i64 @SLAVE_LINK_IS_RGMII(%struct.gbe_slave* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %25 = call i32 @netcp_2u_rgmii_get_port_link(%struct.gbe_priv* %24, i32* %7)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %28 = call i64 @SLAVE_LINK_IS_SGMII(%struct.gbe_slave* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @SGMII_BASE(%struct.gbe_priv* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @netcp_sgmii_get_port_link(i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %38 = call i32 @gbe_phy_link_status(%struct.gbe_slave* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %43 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %42, i32 0, i32 1
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @atomic_xchg(i32* %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @netcp_ethss_link_state_action(%struct.gbe_priv* %49, %struct.net_device* %50, %struct.gbe_slave* %51, i32 %52)
  br label %54

54:                                               ; preds = %18, %48, %36
  ret void
}

declare dso_local i64 @SLAVE_LINK_IS_RGMII(%struct.gbe_slave*) #1

declare dso_local i32 @netcp_2u_rgmii_get_port_link(%struct.gbe_priv*, i32*) #1

declare dso_local i64 @SLAVE_LINK_IS_SGMII(%struct.gbe_slave*) #1

declare dso_local i32 @netcp_sgmii_get_port_link(i32, i32) #1

declare dso_local i32 @SGMII_BASE(%struct.gbe_priv*, i32) #1

declare dso_local i32 @gbe_phy_link_status(%struct.gbe_slave*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @netcp_ethss_link_state_action(%struct.gbe_priv*, %struct.net_device*, %struct.gbe_slave*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
