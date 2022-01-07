; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp1_from_ptys_supported_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp1_from_ptys_supported_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }

@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_CR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_SR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_CR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_SR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_100GBASE_SR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_SGMII = common dso_local global i32 0, align 4
@supported = common dso_local global i32 0, align 4
@FIBRE = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KX4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_KR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_100GBASE_KR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_1000BASE_KX = common dso_local global i32 0, align 4
@Backplane = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i32, %struct.ethtool_link_ksettings*)* @mlxsw_sp1_from_ptys_supported_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_from_ptys_supported_port(%struct.mlxsw_sp* %0, i32 %1, %struct.ethtool_link_ksettings* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethtool_link_ksettings*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ethtool_link_ksettings* %2, %struct.ethtool_link_ksettings** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_CR, align 4
  %9 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_SR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_CR4, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_SR4, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_100GBASE_SR4, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_SGMII, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %7, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %6, align 8
  %23 = load i32, i32* @supported, align 4
  %24 = load i32, i32* @FIBRE, align 4
  %25 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KR, align 4
  %29 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KX4, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_KR4, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_100GBASE_KR4, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_1000BASE_KX, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %27, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %6, align 8
  %41 = load i32, i32* @supported, align 4
  %42 = load i32, i32* @Backplane, align 4
  %43 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %26
  ret void
}

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
