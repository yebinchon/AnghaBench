; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*)* }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.mlxsw_sx_port = type { i32, %struct.mlxsw_sx* }
%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_PPCNT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_IEEE_8023_CNT = common dso_local global i32 0, align 4
@ppcnt = common dso_local global i32 0, align 4
@MLXSW_SX_PORT_HW_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sx_port_hw_stats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @mlxsw_sx_port_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sx_port_get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlxsw_sx_port*, align 8
  %8 = alloca %struct.mlxsw_sx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.mlxsw_sx_port* @netdev_priv(%struct.net_device* %13)
  store %struct.mlxsw_sx_port* %14, %struct.mlxsw_sx_port** %7, align 8
  %15 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %16, align 8
  store %struct.mlxsw_sx* %17, %struct.mlxsw_sx** %8, align 8
  %18 = load i32, i32* @MLXSW_REG_PPCNT_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %7, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MLXSW_REG_PPCNT_IEEE_8023_CNT, align 4
  %26 = call i32 @mlxsw_reg_ppcnt_pack(i8* %21, i32 %24, i32 %25, i32 0)
  %27 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %8, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ppcnt, align 4
  %31 = call i32 @MLXSW_REG(i32 %30)
  %32 = call i32 @mlxsw_reg_query(i32 %29, i32 %31, i8* %21)
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %55, %3
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @MLXSW_SX_PORT_HW_STATS_LEN, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlxsw_sx_port_hw_stats, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (i8*)*, i32 (i8*)** %45, align 8
  %47 = call i32 %46(i8* %21)
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %40
  %50 = phi i32 [ %47, %40 ], [ 0, %48 ]
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

declare dso_local %struct.mlxsw_sx_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_reg_ppcnt_pack(i8*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
