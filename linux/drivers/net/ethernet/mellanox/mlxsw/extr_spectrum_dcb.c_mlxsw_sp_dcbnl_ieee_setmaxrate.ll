; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_setmaxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_setmaxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_maxrate = type { i32* }
%struct.mlxsw_sp_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee_maxrate* }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLXSW_REG_QEEC_HIERARCY_SUBGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to set maxrate for TC %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_maxrate*)* @mlxsw_sp_dcbnl_ieee_setmaxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dcbnl_ieee_setmaxrate(%struct.net_device* %0, %struct.ieee_maxrate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_maxrate*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.ieee_maxrate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_maxrate* %1, %struct.ieee_maxrate** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %10)
  store %struct.mlxsw_sp_port* %11, %struct.mlxsw_sp_port** %6, align 8
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %14, align 8
  store %struct.ieee_maxrate* %15, %struct.ieee_maxrate** %7, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %22 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_SUBGROUP, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %5, align 8
  %25 = getelementptr inbounds %struct.ieee_maxrate, %struct.ieee_maxrate* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlxsw_sp_port_ets_maxrate_set(%struct.mlxsw_sp_port* %21, i32 %22, i32 %23, i32 0, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %49

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %45, align 8
  %47 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %5, align 8
  %48 = call i32 @memcpy(%struct.ieee_maxrate* %46, %struct.ieee_maxrate* %47, i32 8)
  store i32 0, i32* %3, align 4
  br label %72

49:                                               ; preds = %34
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %67, %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %57 = load i32, i32* @MLXSW_REG_QEEC_HIERARCY_SUBGROUP, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %7, align 8
  %60 = getelementptr inbounds %struct.ieee_maxrate, %struct.ieee_maxrate* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mlxsw_sp_port_ets_maxrate_set(%struct.mlxsw_sp_port* %56, i32 %57, i32 %58, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %42
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_ets_maxrate_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.ieee_maxrate*, %struct.ieee_maxrate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
