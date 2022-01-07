; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MLX4_EN_FLAG_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Entering promiscuous mode\0A\00", align 1
@MLX4_FS_ALL_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed enabling promiscuous mode\0A\00", align 1
@MLX4_EN_FLAG_MC_PROMISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed enabling unicast promiscuous mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed enabling multicast promiscuous mode\0A\00", align 1
@MLX4_MCAST_DISABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed disabling multicast filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_dev*)* @mlx4_en_set_promisc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_set_promisc_mode(%struct.mlx4_en_priv* %0, %struct.mlx4_en_dev* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_dev* %1, %struct.mlx4_en_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %132, label %12

12:                                               ; preds = %2
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %14 = call i64 @netif_msg_rx_status(%struct.mlx4_en_priv* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %18 = call i32 @en_warn(%struct.mlx4_en_priv* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %117 [
    i32 128, label %31
    i32 129, label %54
    i32 130, label %100
  ]

31:                                               ; preds = %19
  %32 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MLX4_FS_ALL_DEFAULT, align 4
  %42 = call i32 @mlx4_flow_steer_promisc_add(%struct.TYPE_8__* %34, i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %47 = call i32 @en_err(%struct.mlx4_en_priv* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %31
  %49 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %117

54:                                               ; preds = %19
  %55 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mlx4_unicast_promisc_add(%struct.TYPE_8__* %57, i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %69 = call i32 @en_err(%struct.mlx4_en_priv* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %54
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %70
  %78 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mlx4_multicast_promisc_add(%struct.TYPE_8__* %80, i32 %83, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %92 = call i32 @en_err(%struct.mlx4_en_priv* %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %77
  %94 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %70
  br label %117

100:                                              ; preds = %19
  %101 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_8__* %103, i32 %106, i32 %109, i32 1)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %115 = call i32 @en_err(%struct.mlx4_en_priv* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %100
  br label %117

117:                                              ; preds = %19, %116, %99, %48
  %118 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MLX4_MCAST_DISABLE, align 4
  %125 = call i32 @mlx4_SET_MCAST_FLTR(%struct.TYPE_8__* %120, i32 %123, i32 0, i32 0, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %130 = call i32 @en_err(%struct.mlx4_en_priv* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %117
  br label %132

132:                                              ; preds = %131, %2
  ret void
}

declare dso_local i64 @netif_msg_rx_status(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_flow_steer_promisc_add(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_unicast_promisc_add(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mlx4_multicast_promisc_add(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @mlx4_SET_MCAST_FLTR(%struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
