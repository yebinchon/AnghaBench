; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@T3_REGMAP_SIZE = common dso_local global i32 0, align 4
@A_SG_RSPQ_CREDIT_RETURN = common dso_local global i32 0, align 4
@A_SG_HI_DRB_HI_THRSH = common dso_local global i32 0, align 4
@A_ULPRX_PBL_ULIMIT = common dso_local global i32 0, align 4
@A_ULPTX_CONFIG = common dso_local global i32 0, align 4
@A_MPS_INT_CAUSE = common dso_local global i32 0, align 4
@A_CPL_SWITCH_CNTRL = common dso_local global i32 0, align 4
@A_CPL_MAP_TBL_DATA = common dso_local global i32 0, align 4
@A_SMB_GLOBAL_TIME_CFG = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT3 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STATUS0 = common dso_local global i32 0, align 4
@A_XGM_RX_SPI4_SOP_EOP_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.port_info* @netdev_priv(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %7, align 8
  %11 = load %struct.port_info*, %struct.port_info** %7, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 0
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %8, align 8
  %14 = load %struct.adapter*, %struct.adapter** %8, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 10
  %19 = or i32 3, %18
  %20 = load %struct.adapter*, %struct.adapter** %8, align 8
  %21 = call i32 @is_pcie(%struct.adapter* %20)
  %22 = shl i32 %21, 31
  %23 = or i32 %19, %22
  %24 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @T3_REGMAP_SIZE, align 4
  %28 = call i32 @memset(i8* %26, i32 0, i32 %27)
  %29 = load %struct.adapter*, %struct.adapter** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @A_SG_RSPQ_CREDIT_RETURN, align 4
  %32 = call i32 @reg_block_dump(%struct.adapter* %29, i8* %30, i32 0, i32 %31)
  %33 = load %struct.adapter*, %struct.adapter** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @A_SG_HI_DRB_HI_THRSH, align 4
  %36 = load i32, i32* @A_ULPRX_PBL_ULIMIT, align 4
  %37 = call i32 @reg_block_dump(%struct.adapter* %33, i8* %34, i32 %35, i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @A_ULPTX_CONFIG, align 4
  %41 = load i32, i32* @A_MPS_INT_CAUSE, align 4
  %42 = call i32 @reg_block_dump(%struct.adapter* %38, i8* %39, i32 %40, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @A_CPL_SWITCH_CNTRL, align 4
  %46 = load i32, i32* @A_CPL_MAP_TBL_DATA, align 4
  %47 = call i32 @reg_block_dump(%struct.adapter* %43, i8* %44, i32 %45, i32 %46)
  %48 = load %struct.adapter*, %struct.adapter** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @A_SMB_GLOBAL_TIME_CFG, align 4
  %51 = load i32, i32* @A_XGM_SERDES_STAT3, align 4
  %52 = call i32 @reg_block_dump(%struct.adapter* %48, i8* %49, i32 %50, i32 %51)
  %53 = load %struct.adapter*, %struct.adapter** %8, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @A_XGM_SERDES_STATUS0, align 4
  %56 = load i32, i32* @A_XGM_SERDES_STAT3, align 4
  %57 = call i32 @XGM_REG(i32 %56, i32 1)
  %58 = call i32 @reg_block_dump(%struct.adapter* %53, i8* %54, i32 %55, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %8, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @A_XGM_SERDES_STATUS0, align 4
  %62 = call i32 @XGM_REG(i32 %61, i32 1)
  %63 = load i32, i32* @A_XGM_RX_SPI4_SOP_EOP_CNT, align 4
  %64 = call i32 @XGM_REG(i32 %63, i32 1)
  %65 = call i32 @reg_block_dump(%struct.adapter* %59, i8* %60, i32 %62, i32 %64)
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_pcie(%struct.adapter*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @reg_block_dump(%struct.adapter*, i8*, i32, i32) #1

declare dso_local i32 @XGM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
