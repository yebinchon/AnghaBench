; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_delapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_delapp.c"
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
@ENOENT = common dso_local global i32 0, align 4
@MLX5_QPTS_TRUST_PCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @mlx5e_dcbnl_ieee_delapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_ieee_delapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %6, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @vport_group_manager, align 4
  %14 = call i32 @MLX5_CAP_GEN(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @MLX5_DSCP_SUPPORTED(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %105

25:                                               ; preds = %16
  %26 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %27 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE_8021QAZ_APP_SEL_DSCP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %33 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MLX5E_MAX_DSCP, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %105

40:                                               ; preds = %31
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %105

49:                                               ; preds = %40
  %50 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %51 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %58 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %52, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %105

66:                                               ; preds = %49
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %69 = call i32 @dcb_ieee_delapp(%struct.net_device* %67, %struct.dcb_app* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %105

74:                                               ; preds = %66
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %76 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %77 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @mlx5e_set_dscp2prio(%struct.mlx5e_priv* %75, i64 %78, i32 0)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %100

83:                                               ; preds = %74
  %84 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %85 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %83
  %95 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %96 = load i32, i32* @MLX5_QPTS_TRUST_PCP, align 4
  %97 = call i32 @mlx5e_set_trust_state(%struct.mlx5e_priv* %95, i32 %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %94, %83
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %105

100:                                              ; preds = %82
  %101 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %102 = load i32, i32* @MLX5_QPTS_TRUST_PCP, align 4
  %103 = call i32 @mlx5e_set_trust_state(%struct.mlx5e_priv* %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %98, %72, %63, %46, %37, %22
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @MLX5_DSCP_SUPPORTED(i32) #1

declare dso_local i32 @dcb_ieee_delapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @mlx5e_set_dscp2prio(%struct.mlx5e_priv*, i64, i32) #1

declare dso_local i32 @mlx5e_set_trust_state(%struct.mlx5e_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
