; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_hwstamp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_hwstamp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32 }

@device_frequency_khz = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MLX5E_PFLAG_RX_CQE_COMPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Disabling RX cqe compression\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed disabling cqe compression err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_hwstamp_set(%struct.mlx5e_priv* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.hwtstamp_config, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @device_frequency_khz, align 4
  %12 = call i32 @MLX5_CAP_GEN(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mlx5_clock_get_ptp_index(i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %110

23:                                               ; preds = %14
  %24 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @copy_from_user(%struct.hwtstamp_config* %6, i32 %26, i32 8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %110

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %36 [
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %32, %32
  br label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ERANGE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %110

39:                                               ; preds = %35
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %82 [
    i32 144, label %45
    i32 145, label %53
    i32 130, label %53
    i32 141, label %53
    i32 140, label %53
    i32 142, label %53
    i32 133, label %53
    i32 132, label %53
    i32 134, label %53
    i32 136, label %53
    i32 135, label %53
    i32 137, label %53
    i32 138, label %53
    i32 131, label %53
    i32 139, label %53
    i32 143, label %53
  ]

45:                                               ; preds = %39
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mlx5e_modify_rx_cqe_compression_locked(%struct.mlx5e_priv* %46, i32 %51)
  br label %88

53:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39
  %54 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* @MLX5E_PFLAG_RX_CQE_COMPRESS, align 4
  %58 = call i32 @MLX5E_GET_PFLAG(%struct.TYPE_4__* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netdev_warn(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %53
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %67 = call i32 @mlx5e_modify_rx_cqe_compression_locked(%struct.mlx5e_priv* %66, i32 0)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %72 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @netdev_err(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %77 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %110

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  store i32 145, i32* %81, align 4
  br label %88

82:                                               ; preds = %39
  %83 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* @ERANGE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %110

88:                                               ; preds = %80, %45
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 2
  %91 = call i32 @memcpy(i32* %90, %struct.hwtstamp_config* %6, i32 8)
  %92 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %93 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %96 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @netdev_update_features(i32 %97)
  %99 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %100 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @copy_to_user(i32 %101, %struct.hwtstamp_config* %6, i32 8)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load i32, i32* @EFAULT, align 4
  %106 = sub nsw i32 0, %105
  br label %108

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 0, %107 ]
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %82, %70, %36, %29, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_clock_get_ptp_index(i32) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5e_modify_rx_cqe_compression_locked(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @MLX5E_GET_PFLAG(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.hwtstamp_config*, i32) #1

declare dso_local i32 @netdev_update_features(i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
