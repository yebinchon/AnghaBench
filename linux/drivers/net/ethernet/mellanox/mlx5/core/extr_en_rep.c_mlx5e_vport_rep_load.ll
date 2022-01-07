; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_vport_rep_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_vport_rep_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_profile = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_eswitch_rep = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5e_rep_priv* }
%struct.mlx5e_rep_priv = type { i32, i32, %struct.net_device*, %struct.mlx5_eswitch_rep* }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@mlx5e_uplink_rep_profile = common dso_local global %struct.mlx5e_profile zeroinitializer, align 4
@mlx5e_rep_profile = common dso_local global %struct.mlx5e_profile zeroinitializer, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to create representor netdev for vport %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REP_ETH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to attach representor netdev for vport %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed to initialized neighbours handling for vport %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to register devlink port %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Failed to register representor netdev for vport %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_eswitch_rep*)* @mlx5e_vport_rep_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_vport_rep_load(%struct.mlx5_core_dev* %0, %struct.mlx5_eswitch_rep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eswitch_rep*, align 8
  %6 = alloca %struct.mlx5e_profile*, align 8
  %7 = alloca %struct.mlx5e_rep_priv*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eswitch_rep* %1, %struct.mlx5_eswitch_rep** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlx5e_rep_priv* @kzalloc(i32 24, i32 %11)
  store %struct.mlx5e_rep_priv* %12, %struct.mlx5e_rep_priv** %7, align 8
  %13 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %14 = icmp ne %struct.mlx5e_rep_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %155

18:                                               ; preds = %2
  %19 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %20 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %20, i32 0, i32 3
  store %struct.mlx5_eswitch_rep* %19, %struct.mlx5_eswitch_rep** %21, align 8
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %23 = call i32 @mlx5e_get_max_num_channels(%struct.mlx5_core_dev* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, %struct.mlx5e_profile* @mlx5e_uplink_rep_profile, %struct.mlx5e_profile* @mlx5e_rep_profile
  store %struct.mlx5e_profile* %30, %struct.mlx5e_profile** %6, align 8
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %32 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %35 = call %struct.net_device* @mlx5e_create_netdev(%struct.mlx5_core_dev* %31, %struct.mlx5e_profile* %32, i32 %33, %struct.mlx5e_rep_priv* %34)
  store %struct.net_device* %35, %struct.net_device** %8, align 8
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %18
  %39 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %44 = call i32 @kfree(%struct.mlx5e_rep_priv* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %155

47:                                               ; preds = %18
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %50 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %49, i32 0, i32 2
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %52 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @REP_ETH, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.mlx5e_rep_priv* %51, %struct.mlx5e_rep_priv** %57, align 8
  %58 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %58, i32 0, i32 1
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %62 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %47
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %68 = call i32 @mlx5e_create_mdev_resources(%struct.mlx5_core_dev* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %148

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %47
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = call i32 @netdev_priv(%struct.net_device* %74)
  %76 = call i32 @mlx5e_attach_netdev(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %81 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  br label %138

84:                                               ; preds = %73
  %85 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %86 = call i32 @mlx5e_rep_neigh_init(%struct.mlx5e_rep_priv* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  br label %134

94:                                               ; preds = %84
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %96 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %97 = call i32 @register_devlink_port(%struct.mlx5_core_dev* %95, %struct.mlx5e_rep_priv* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %102 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @esw_warn(%struct.mlx5_core_dev* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  br label %131

106:                                              ; preds = %94
  %107 = load %struct.net_device*, %struct.net_device** %8, align 8
  %108 = call i32 @register_netdev(%struct.net_device* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %114)
  br label %127

116:                                              ; preds = %106
  %117 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %118 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %119 = call i64 @is_devlink_port_supported(%struct.mlx5_core_dev* %117, %struct.mlx5e_rep_priv* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %123 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %122, i32 0, i32 0
  %124 = load %struct.net_device*, %struct.net_device** %8, align 8
  %125 = call i32 @devlink_port_type_eth_set(i32* %123, %struct.net_device* %124)
  br label %126

126:                                              ; preds = %121, %116
  store i32 0, i32* %3, align 4
  br label %155

127:                                              ; preds = %111
  %128 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %129 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %130 = call i32 @unregister_devlink_port(%struct.mlx5_core_dev* %128, %struct.mlx5e_rep_priv* %129)
  br label %131

131:                                              ; preds = %127, %100
  %132 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %133 = call i32 @mlx5e_rep_neigh_cleanup(%struct.mlx5e_rep_priv* %132)
  br label %134

134:                                              ; preds = %131, %89
  %135 = load %struct.net_device*, %struct.net_device** %8, align 8
  %136 = call i32 @netdev_priv(%struct.net_device* %135)
  %137 = call i32 @mlx5e_detach_netdev(i32 %136)
  br label %138

138:                                              ; preds = %134, %79
  %139 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %140 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %146 = call i32 @mlx5e_destroy_mdev_resources(%struct.mlx5_core_dev* %145)
  br label %147

147:                                              ; preds = %144, %138
  br label %148

148:                                              ; preds = %147, %71
  %149 = load %struct.net_device*, %struct.net_device** %8, align 8
  %150 = call i32 @netdev_priv(%struct.net_device* %149)
  %151 = call i32 @mlx5e_destroy_netdev(i32 %150)
  %152 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %153 = call i32 @kfree(%struct.mlx5e_rep_priv* %152)
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %148, %126, %38, %15
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.mlx5e_rep_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5e_get_max_num_channels(%struct.mlx5_core_dev*) #1

declare dso_local %struct.net_device* @mlx5e_create_netdev(%struct.mlx5_core_dev*, %struct.mlx5e_profile*, i32, %struct.mlx5e_rep_priv*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @kfree(%struct.mlx5e_rep_priv*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlx5e_create_mdev_resources(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5e_attach_netdev(i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_rep_neigh_init(%struct.mlx5e_rep_priv*) #1

declare dso_local i32 @register_devlink_port(%struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*) #1

declare dso_local i32 @esw_warn(%struct.mlx5_core_dev*, i8*, i64) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i64 @is_devlink_port_supported(%struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*) #1

declare dso_local i32 @devlink_port_type_eth_set(i32*, %struct.net_device*) #1

declare dso_local i32 @unregister_devlink_port(%struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*) #1

declare dso_local i32 @mlx5e_rep_neigh_cleanup(%struct.mlx5e_rep_priv*) #1

declare dso_local i32 @mlx5e_detach_netdev(i32) #1

declare dso_local i32 @mlx5e_destroy_mdev_resources(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5e_destroy_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
