; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_phy_update_flowcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_phy_update_flowcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_phy }
%struct.lan743x_phy = type { i32, i64 }

@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*, i32, i32, i32)* @lan743x_phy_update_flowcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_phy_update_flowcontrol(%struct.lan743x_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lan743x_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lan743x_phy*, align 8
  %10 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %11, i32 0, i32 0
  store %struct.lan743x_phy* %12, %struct.lan743x_phy** %9, align 8
  %13 = load %struct.lan743x_phy*, %struct.lan743x_phy** %9, align 8
  %14 = getelementptr inbounds %struct.lan743x_phy, %struct.lan743x_phy* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @mii_resolve_flowctrl_fdx(i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.lan743x_phy*, %struct.lan743x_phy** %9, align 8
  %23 = getelementptr inbounds %struct.lan743x_phy, %struct.lan743x_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @FLOW_CTRL_TX, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @FLOW_CTRL_RX, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @lan743x_mac_flow_ctrl_set_enables(%struct.lan743x_adapter* %26, i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @lan743x_mac_flow_ctrl_set_enables(%struct.lan743x_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
