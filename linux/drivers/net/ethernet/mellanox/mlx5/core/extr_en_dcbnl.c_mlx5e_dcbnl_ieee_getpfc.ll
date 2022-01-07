; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_getpfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_getpfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_pfc = type { i32, i32, i8**, i8**, i64 }
%struct.mlx5e_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.mlx5e_pport_stats }
%struct.mlx5e_pport_stats = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@tx_pause = common dso_local global i32 0, align 4
@rx_pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_pfc*)* @mlx5e_dcbnl_ieee_getpfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_ieee_getpfc(%struct.net_device* %0, %struct.ieee_pfc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee_pfc*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5e_pport_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee_pfc* %1, %struct.ieee_pfc** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %5, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 2
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %6, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.mlx5e_pport_stats* %16, %struct.mlx5e_pport_stats** %7, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %18 = call i64 @mlx5_max_tc(%struct.mlx5_core_dev* %17)
  %19 = add nsw i64 %18, 1
  %20 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %21 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %47, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @tx_pause, align 4
  %30 = call i8* @PPORT_PER_PRIO_GET(%struct.mlx5e_pport_stats* %27, i32 %28, i32 %29)
  %31 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %32 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %31, i32 0, i32 3
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  store i8* %30, i8** %36, align 8
  %37 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @rx_pause, align 4
  %40 = call i8* @PPORT_PER_PRIO_GET(%struct.mlx5e_pport_stats* %37, i32 %38, i32 %39)
  %41 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %42 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  br label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %52 = call i64 @MLX5_BUFFER_SUPPORTED(%struct.mlx5_core_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %60 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %50
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %63 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %64 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %63, i32 0, i32 0
  %65 = call i32 @mlx5_query_port_pfc(%struct.mlx5_core_dev* %62, i32* %64, i32* null)
  ret i32 %65
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlx5_max_tc(%struct.mlx5_core_dev*) #1

declare dso_local i8* @PPORT_PER_PRIO_GET(%struct.mlx5e_pport_stats*, i32, i32) #1

declare dso_local i64 @MLX5_BUFFER_SUPPORTED(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_query_port_pfc(%struct.mlx5_core_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
