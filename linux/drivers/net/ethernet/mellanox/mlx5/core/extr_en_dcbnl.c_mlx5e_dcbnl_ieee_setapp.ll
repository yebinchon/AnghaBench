; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i64, i64 }
%struct.mlx5e_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64* }

@vport_group_manager = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE_8021QAZ_APP_SEL_DSCP = common dso_local global i64 0, align 8
@MLX5E_MAX_DSCP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MLX5_QPTS_TRUST_DSCP = common dso_local global i32 0, align 4
@MLX5_QPTS_TRUST_PCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @mlx5e_dcbnl_ieee_setapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_ieee_setapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.dcb_app, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %6, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @vport_group_manager, align 4
  %16 = call i32 @MLX5_CAP_GEN(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @MLX5_DSCP_SUPPORTED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %130

27:                                               ; preds = %18
  %28 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %29 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE_8021QAZ_APP_SEL_DSCP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %35 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MLX5E_MAX_DSCP, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %130

42:                                               ; preds = %33
  %43 = load i64, i64* @IEEE_8021QAZ_APP_SEL_DSCP, align 8
  %44 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %7, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %46 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %7, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %54 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %7, i32 0, i32 2
  store i64 %57, i64* %58, align 8
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %42
  %65 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %66 = load i32, i32* @MLX5_QPTS_TRUST_DSCP, align 4
  %67 = call i32 @mlx5e_set_trust_state(%struct.mlx5e_priv* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %130

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %42
  %74 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %75 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %78 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %82 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %76, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %73
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %89 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %90 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %93 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @mlx5e_set_dscp2prio(%struct.mlx5e_priv* %88, i64 %91, i64 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %125

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %73
  store i32 0, i32* %8, align 4
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = call i32 @dcb_ieee_delapp(%struct.net_device* %101, %struct.dcb_app* %7)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %100
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %109 = call i32 @dcb_ieee_setapp(%struct.net_device* %107, %struct.dcb_app* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %130

114:                                              ; preds = %106
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %119 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %114
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %130

125:                                              ; preds = %98
  %126 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %127 = load i32, i32* @MLX5_QPTS_TRUST_PCP, align 4
  %128 = call i32 @mlx5e_set_trust_state(%struct.mlx5e_priv* %126, i32 %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %125, %123, %112, %70, %39, %24
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @MLX5_DSCP_SUPPORTED(i32) #1

declare dso_local i32 @mlx5e_set_trust_state(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_set_dscp2prio(%struct.mlx5e_priv*, i64, i64) #1

declare dso_local i32 @dcb_ieee_delapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @dcb_ieee_setapp(%struct.net_device*, %struct.dcb_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
