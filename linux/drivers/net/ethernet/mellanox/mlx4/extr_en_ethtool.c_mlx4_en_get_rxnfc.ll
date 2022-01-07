; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @mlx4_en_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx4_en_priv* %14, %struct.mlx4_en_priv** %8, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 2
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 130
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 129
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %49

32:                                               ; preds = %27, %22, %3
  %33 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %112

49:                                               ; preds = %41, %27
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %51 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %107 [
    i32 128, label %53
    i32 130, label %59
    i32 129, label %64
    i32 131, label %72
  ]

53:                                               ; preds = %49
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %58 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  br label %110

59:                                               ; preds = %49
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %61 = call i32 @mlx4_en_get_num_flows(%struct.mlx4_en_priv* %60)
  %62 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %63 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %110

64:                                               ; preds = %49
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %67 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mlx4_en_get_flow(%struct.net_device* %65, %struct.ethtool_rxnfc* %66, i32 %70)
  store i32 %71, i32* %10, align 4
  br label %110

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %103, %72
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %84 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi i1 [ false, %76 ], [ %86, %81 ]
  br i1 %88, label %89, label %106

89:                                               ; preds = %87
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @mlx4_en_get_flow(%struct.net_device* %90, %struct.ethtool_rxnfc* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %73

106:                                              ; preds = %87
  store i32 0, i32* %10, align 4
  br label %110

107:                                              ; preds = %49
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %107, %106, %64, %59, %53
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %46
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_get_num_flows(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_get_flow(%struct.net_device*, %struct.ethtool_rxnfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
