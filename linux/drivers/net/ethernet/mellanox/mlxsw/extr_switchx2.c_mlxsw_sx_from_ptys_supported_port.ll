; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_from_ptys_supported_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_from_ptys_supported_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_CR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_SR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_CR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_SR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_100GBASE_SR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_SGMII = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KX4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_KR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_100GBASE_KR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_1000BASE_KX = common dso_local global i32 0, align 4
@SUPPORTED_Backplane = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mlxsw_sx_from_ptys_supported_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_from_ptys_supported_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_CR, align 4
  %6 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_SR, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_CR4, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_SR4, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_100GBASE_SR4, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_SGMII, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %4, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @SUPPORTED_FIBRE, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KR, align 4
  %23 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KX4, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_KR4, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_100GBASE_KR4, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_1000BASE_KX, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %21, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* @SUPPORTED_Backplane, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
