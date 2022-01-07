; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_link_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_link_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hwrm_port_phy_cfg_input = type { i32, i8*, i32, i8*, i32 }

@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_MODE_SPEED_MASK = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_ENABLES_AUTO_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_ENABLES_AUTO_MODE = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FLAGS_RESTART_AUTONEG = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FLAGS_FORCE = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FLAGS_RESET_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*)* @bnxt_hwrm_set_link_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_set_link_common(%struct.bnxt* %0, %struct.hwrm_port_phy_cfg_input* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_port_phy_cfg_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.hwrm_port_phy_cfg_input* %1, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %2
  %25 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_MODE_SPEED_MASK, align 4
  %26 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %27 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @PORT_PHY_CFG_REQ_ENABLES_AUTO_LINK_SPEED_MASK, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %33 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %39 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @PORT_PHY_CFG_REQ_ENABLES_AUTO_MODE, align 4
  %41 = call i32 @cpu_to_le32(i32 %40)
  %42 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %43 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_RESTART_AUTONEG, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %49 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %63

52:                                               ; preds = %2
  %53 = load i32, i32* %6, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %56 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_FORCE, align 4
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %60 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %52, %24
  %64 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_RESET_PHY, align 4
  %65 = call i32 @cpu_to_le32(i32 %64)
  %66 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %67 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
