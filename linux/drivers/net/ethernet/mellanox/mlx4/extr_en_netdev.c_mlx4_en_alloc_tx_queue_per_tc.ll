; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_alloc_tx_queue_per_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_alloc_tx_queue_per_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i64, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_port_profile = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_EN_NUM_UP_LOW = common dso_local global i32 0, align 4
@MLX4_EN_NUM_UP_HIGH = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed starting port for setup TC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_alloc_tx_queue_per_tc(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca %struct.mlx4_en_port_profile, align 8
  %9 = alloca %struct.mlx4_en_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %6, align 8
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 2
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %15, align 8
  store %struct.mlx4_en_dev* %16, %struct.mlx4_en_dev** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlx4_en_priv* @kzalloc(i32 24, i32 %17)
  store %struct.mlx4_en_priv* %18, %struct.mlx4_en_priv** %9, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %20 = icmp ne %struct.mlx4_en_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %90

24:                                               ; preds = %2
  %25 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(%struct.mlx4_en_port_profile* %8, i32 %30, i32 24)
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @MLX4_EN_NUM_UP_LOW, align 4
  br label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @MLX4_EN_NUM_UP_HIGH, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %42, %44
  %46 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @TX, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %52 = call i32 @mlx4_en_try_alloc_resources(%struct.mlx4_en_priv* %50, %struct.mlx4_en_priv* %51, %struct.mlx4_en_port_profile* %8, i32 1)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %83

56:                                               ; preds = %38
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  store i32 1, i32* %10, align 4
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @mlx4_en_stop_port(%struct.net_device* %62, i32 1)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %67 = call i32 @mlx4_en_safe_replace_resources(%struct.mlx4_en_priv* %65, %struct.mlx4_en_priv* %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @mlx4_en_start_port(%struct.net_device* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %77 = call i32 @en_err(%struct.mlx4_en_priv* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %83

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %64
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @mlx4_en_setup_tc(%struct.net_device* %80, i64 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %75, %55
  %84 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %88 = call i32 @kfree(%struct.mlx4_en_priv* %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %21
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlx4_en_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.mlx4_en_port_profile*, i32, i32) #1

declare dso_local i32 @mlx4_en_try_alloc_resources(%struct.mlx4_en_priv*, %struct.mlx4_en_priv*, %struct.mlx4_en_port_profile*, i32) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_safe_replace_resources(%struct.mlx4_en_priv*, %struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_setup_tc(%struct.net_device*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_en_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
