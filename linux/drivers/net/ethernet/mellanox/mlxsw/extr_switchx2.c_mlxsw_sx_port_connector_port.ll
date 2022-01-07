; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_connector_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_connector_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_SR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_SR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_100GBASE_SR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_SGMII = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_CR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_CR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_100GBASE_CR4 = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KR = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KX4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_40GBASE_KR4 = common dso_local global i32 0, align 4
@MLXSW_REG_PTYS_ETH_SPEED_100GBASE_KR4 = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mlxsw_sx_port_connector_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_port_connector_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_SR, align 4
  %6 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_SR4, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_100GBASE_SR4, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_SGMII, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %4, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_CR, align 4
  %19 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_CR4, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_100GBASE_CR4, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @PORT_DA, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KR, align 4
  %30 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_10GBASE_KX4, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_40GBASE_KR4, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MLXSW_REG_PTYS_ETH_SPEED_100GBASE_KR4, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %28, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @PORT_NONE, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @PORT_OTHER, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %25, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
