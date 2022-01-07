; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_pause_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_pause_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hwrm_port_phy_cfg_input = type { i32, i32, i32 }

@BNXT_AUTONEG_FLOW_CTRL = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE = common dso_local global i32 0, align 4
@BNXT_LINK_PAUSE_RX = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_PAUSE_RX = common dso_local global i32 0, align 4
@BNXT_LINK_PAUSE_TX = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_PAUSE_TX = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_ENABLES_AUTO_PAUSE = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FORCE_PAUSE_RX = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FORCE_PAUSE_TX = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_ENABLES_FORCE_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*)* @bnxt_hwrm_set_pause_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_set_pause_common(%struct.bnxt* %0, %struct.hwrm_port_phy_cfg_input* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_port_phy_cfg_input*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.hwrm_port_phy_cfg_input* %1, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 66049
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE, align 4
  %19 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %20 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BNXT_LINK_PAUSE_RX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_PAUSE_RX, align 4
  %31 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %32 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BNXT_LINK_PAUSE_TX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_PAUSE_TX, align 4
  %45 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %46 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %35
  %50 = load i32, i32* @PORT_PHY_CFG_REQ_ENABLES_AUTO_PAUSE, align 4
  %51 = call i32 @cpu_to_le32(i32 %50)
  %52 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %53 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %108

56:                                               ; preds = %2
  %57 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BNXT_LINK_PAUSE_RX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32, i32* @PORT_PHY_CFG_REQ_FORCE_PAUSE_RX, align 4
  %66 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %67 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %56
  %71 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BNXT_LINK_PAUSE_TX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @PORT_PHY_CFG_REQ_FORCE_PAUSE_TX, align 4
  %80 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %81 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %70
  %85 = load i32, i32* @PORT_PHY_CFG_REQ_ENABLES_FORCE_PAUSE, align 4
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %88 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %92 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 66049
  br i1 %94, label %95, label %107

95:                                               ; preds = %84
  %96 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %97 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %100 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @PORT_PHY_CFG_REQ_ENABLES_AUTO_PAUSE, align 4
  %102 = call i32 @cpu_to_le32(i32 %101)
  %103 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %104 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %95, %84
  br label %108

108:                                              ; preds = %107, %49
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
