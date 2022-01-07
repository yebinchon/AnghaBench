; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Turn %s RX-FCS\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Turn %s RX-ALL\0A\00", align 1
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Turn %s RX vlan strip offload\0A\00", align 1
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Turn %s TX vlan strip offload\0A\00", align 1
@NETIF_F_HW_VLAN_STAG_TX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Turn %s TX S-VLAN strip offload\0A\00", align 1
@NETIF_F_LOOPBACK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Turn %s loopback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx4_en_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NETIF_F_RXFCS, align 4
  %15 = call i64 @DEV_FEATURE_CHANGED(%struct.net_device* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NETIF_F_RXFCS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @en_info(%struct.mlx4_en_priv* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NETIF_F_RXALL, align 4
  %30 = call i64 @DEV_FEATURE_CHANGED(%struct.net_device* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NETIF_F_RXALL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %9, align 4
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @en_info(%struct.mlx4_en_priv* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @mlx4_SET_PORT_fcs_check(i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %32
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %139

59:                                               ; preds = %32
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %64 = call i64 @DEV_FEATURE_CHANGED(%struct.net_device* %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 @en_info(%struct.mlx4_en_priv* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  store i32 1, i32* %7, align 4
  br label %75

75:                                               ; preds = %66, %60
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %79 = call i64 @DEV_FEATURE_CHANGED(%struct.net_device* %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %89 = call i32 @en_info(%struct.mlx4_en_priv* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %81, %75
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @NETIF_F_HW_VLAN_STAG_TX, align 4
  %94 = call i64 @DEV_FEATURE_CHANGED(%struct.net_device* %91, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @NETIF_F_HW_VLAN_STAG_TX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %104 = call i32 @en_info(%struct.mlx4_en_priv* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %96, %90
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %109 = call i64 @DEV_FEATURE_CHANGED(%struct.net_device* %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %119 = call i32 @en_info(%struct.mlx4_en_priv* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %118)
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @mlx4_en_update_loopback_state(%struct.net_device* %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %105
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %129 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @mlx4_en_reset_config(%struct.net_device* %127, i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %139

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %123
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %135, %57
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @DEV_FEATURE_CHANGED(%struct.net_device*, i32, i32) #1

declare dso_local i32 @en_info(%struct.mlx4_en_priv*, i8*, i8*) #1

declare dso_local i32 @mlx4_SET_PORT_fcs_check(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_update_loopback_state(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_reset_config(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
