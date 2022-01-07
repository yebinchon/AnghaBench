; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_ex_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_ex_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.mlx4_en_priv = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MLX4_EN_NUM_SELF_TEST = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_UC_LOOPBACK = common dso_local global i32 0, align 4
@MLX4_SELFTEST_LB_MIN_MTU = common dso_local global i64 0, align 8
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_ex_selftest(%struct.net_device* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %7, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i64* %12, i32 0, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %3
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @netif_carrier_ok(%struct.net_device* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_carrier_off(%struct.net_device* %26)
  %28 = call i32 @msleep(i32 200)
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MLX4_DEV_CAP_FLAG_UC_LOOPBACK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %23
  %41 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %42 = call i64 @mlx4_en_test_registers(%struct.mlx4_en_priv* %41)
  %43 = load i64*, i64** %6, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MLX4_SELFTEST_LB_MIN_MTU, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %57 = call i64 @mlx4_en_test_loopback(%struct.mlx4_en_priv* %56)
  %58 = load i64*, i64** %6, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 4
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %49, %40
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @netif_carrier_on(%struct.net_device* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %3
  %69 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %70 = call i64 @mlx4_en_test_interrupts(%struct.mlx4_en_priv* %69)
  %71 = load i64*, i64** %6, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %74 = call i64 @mlx4_en_test_link(%struct.mlx4_en_priv* %73)
  %75 = load i64*, i64** %6, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %78 = call i64 @mlx4_en_test_speed(%struct.mlx4_en_priv* %77)
  %79 = load i64*, i64** %6, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  store i64 %78, i64* %80, align 8
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %98, %68
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i64*, i64** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %85
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %81

101:                                              ; preds = %81
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @mlx4_en_test_registers(%struct.mlx4_en_priv*) #1

declare dso_local i64 @mlx4_en_test_loopback(%struct.mlx4_en_priv*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i64 @mlx4_en_test_interrupts(%struct.mlx4_en_priv*) #1

declare dso_local i64 @mlx4_en_test_link(%struct.mlx4_en_priv*) #1

declare dso_local i64 @mlx4_en_test_speed(%struct.mlx4_en_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
