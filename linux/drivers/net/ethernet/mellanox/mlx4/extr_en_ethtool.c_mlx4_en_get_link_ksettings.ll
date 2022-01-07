; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_8__, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"query port state.flags ANC(%x) ANE(%x)\0A\00", align 1
@MLX4_EN_PORT_ANC = common dso_local global i32 0, align 4
@MLX4_EN_PORT_ANE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @mlx4_en_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv* %9, %struct.mlx4_en_priv** %6, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @mlx4_en_QUERY_PORT(%struct.TYPE_10__* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %2
  %24 = load i32, i32* @DRV, align 4
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MLX4_EN_PORT_ANC, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MLX4_EN_PORT_ANE, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @en_dbg(i32 %24, %struct.mlx4_en_priv* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %37)
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %23
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %53 = call i32 @ethtool_get_ptys_link_ksettings(%struct.net_device* %51, %struct.ethtool_link_ksettings* %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %23
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %60 = call i32 @ethtool_get_default_link_ksettings(%struct.net_device* %58, %struct.ethtool_link_ksettings* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i64 @netif_carrier_ok(%struct.net_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @DUPLEX_FULL, align 4
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %86

77:                                               ; preds = %61
  %78 = load i32, i32* @SPEED_UNKNOWN, align 4
  %79 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %83 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %65
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %20
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlx4_en_QUERY_PORT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i32) #1

declare dso_local i32 @ethtool_get_ptys_link_ksettings(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @ethtool_get_default_link_ksettings(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
