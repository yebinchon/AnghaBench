; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i8*, i8* }
%struct.mlx4_en_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx4_caps }
%struct.mlx4_caps = type { i32, i64* }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get WoL information\0A\00", align 1
@MLX4_DEV_CAP_FLAG_WOL_PORT1 = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_WOL_PORT2 = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i8* null, align 8
@MLX4_EN_WOL_ENABLED = common dso_local global i32 0, align 4
@MLX4_EN_WOL_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @mlx4_en_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_caps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %5, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.mlx4_caps* %17, %struct.mlx4_caps** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %2
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %29 = call i32 @en_err(%struct.mlx4_en_priv* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %103

30:                                               ; preds = %22
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT1, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT2, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %9, align 4
  %41 = load %struct.mlx4_caps*, %struct.mlx4_caps** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %48, i32 0, i32 1
  store i8* null, i8** %49, align 8
  %50 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %50, i32 0, i32 0
  store i8* null, i8** %51, align 8
  br label %103

52:                                               ; preds = %39
  %53 = load %struct.mlx4_caps*, %struct.mlx4_caps** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_caps, %struct.mlx4_caps* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i8*, i8** @WAKE_MAGIC, align 8
  %65 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %70

67:                                               ; preds = %52
  %68 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %68, i32 0, i32 1
  store i8* null, i8** %69, align 8
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = call i32 @mlx4_wol_read(%struct.TYPE_4__* %75, i32* %8, i64 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %85 = call i32 @en_err(%struct.mlx4_en_priv* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %103

86:                                               ; preds = %70
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @MLX4_EN_WOL_ENABLED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MLX4_EN_WOL_MAGIC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i8*, i8** @WAKE_MAGIC, align 8
  %98 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %103

100:                                              ; preds = %91, %86
  %101 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %102 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %101, i32 0, i32 0
  store i8* null, i8** %102, align 8
  br label %103

103:                                              ; preds = %27, %47, %83, %100, %96
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_wol_read(%struct.TYPE_4__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
