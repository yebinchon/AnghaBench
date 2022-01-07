; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_port_loopback_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_port_loopback_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64, i64 }
%struct.phylink_link_state = type { i32 }

@MVPP2_GMAC_CTRL_1_REG = common dso_local global i64 0, align 8
@MVPP2_GMAC_GMII_LB_EN_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MVPP2_GMAC_PCS_LB_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.phylink_link_state*)* @mvpp2_port_loopback_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_port_loopback_set(%struct.mvpp2_port* %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.phylink_link_state*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %7 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MVPP2_GMAC_CTRL_1_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %13 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1000
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MVPP2_GMAC_GMII_LB_EN_MASK, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @MVPP2_GMAC_GMII_LB_EN_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @phy_interface_mode_is_8023z(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @MVPP2_GMAC_PCS_LB_EN_MASK, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @MVPP2_GMAC_PCS_LB_EN_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %49 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MVPP2_GMAC_CTRL_1_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
