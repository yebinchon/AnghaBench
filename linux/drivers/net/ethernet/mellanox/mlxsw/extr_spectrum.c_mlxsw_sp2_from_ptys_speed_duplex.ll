; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp2_from_ptys_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp2_from_ptys_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i32, i32, %struct.ethtool_link_ksettings*)* @mlxsw_sp2_from_ptys_speed_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp2_from_ptys_speed_duplex(%struct.mlxsw_sp* %0, i32 %1, i32 %2, %struct.ethtool_link_ksettings* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethtool_link_ksettings*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ethtool_link_ksettings* %3, %struct.ethtool_link_ksettings** %8, align 8
  %9 = load i64, i64* @SPEED_UNKNOWN, align 8
  %10 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %11 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %14 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %15 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %38

20:                                               ; preds = %4
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @mlxsw_sp2_from_ptys_speed(%struct.mlxsw_sp* %21, i32 %22)
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %25 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SPEED_UNKNOWN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load i32, i32* @DUPLEX_FULL, align 4
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  br label %38

38:                                               ; preds = %19, %33, %20
  ret void
}

declare dso_local i64 @mlxsw_sp2_from_ptys_speed(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
