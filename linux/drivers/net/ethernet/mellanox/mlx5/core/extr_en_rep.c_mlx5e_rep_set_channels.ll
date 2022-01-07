; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32, i32 }

@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Failed to update vport rx rule, when going from (%d) channels to (%d) channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @mlx5e_rep_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_flow_destination, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx5e_priv* %12, %struct.mlx5e_priv** %6, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %22 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %23 = call i32 @mlx5e_ethtool_set_channels(%struct.mlx5e_priv* %21, %struct.ethtool_channels* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 4
  %36 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %9, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  br label %62

44:                                               ; preds = %31, %28
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %52 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %9, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  br label %61

60:                                               ; preds = %47, %44
  store i32 0, i32* %3, align 4
  br label %76

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %34
  %63 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %64 = call i32 @mlx5e_replace_rep_vport_rx_rule(%struct.mlx5e_priv* %63, %struct.mlx5_flow_destination* %9)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %69 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @netdev_warn(i32 %70, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %67, %60, %26
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_ethtool_set_channels(%struct.mlx5e_priv*, %struct.ethtool_channels*) #1

declare dso_local i32 @mlx5e_replace_rep_vport_rx_rule(%struct.mlx5e_priv*, %struct.mlx5_flow_destination*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
