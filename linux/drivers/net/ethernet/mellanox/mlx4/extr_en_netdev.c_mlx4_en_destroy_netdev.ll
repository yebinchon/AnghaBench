; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_destroy_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_destroy_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i64, i32, i32, i32, i64, i64, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32**, i32**, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Destroying netdev on port:%d\0A\00", align 1
@MLX4_EN_PAGE_SIZE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_netdev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.mlx4_en_priv* %6, %struct.mlx4_en_priv** %3, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 6
  %9 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  store %struct.mlx4_en_dev* %9, %struct.mlx4_en_dev** %4, align 8
  %10 = load i32, i32* @DRV, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @en_dbg(i32 %10, %struct.mlx4_en_priv* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mlx4_get_devlink_port(%struct.TYPE_5__* %23, i64 %26)
  %28 = call i32 @devlink_port_type_clear(i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @unregister_netdev(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %20, %1
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 3
  %42 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %43 = call i32 @mlx4_free_hwq_res(%struct.TYPE_5__* %39, i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 2
  %47 = call i32 @cancel_delayed_work(i32* %46)
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %48, i32 0, i32 1
  %50 = call i32 @cancel_delayed_work(i32* %49)
  %51 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @flush_workqueue(i32 %53)
  %55 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %44
  %65 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %66 = call i32 @mlx4_en_remove_timestamp(%struct.mlx4_en_dev* %65)
  br label %67

67:                                               ; preds = %64, %44
  %68 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32*, i32** %73, i64 %76
  store i32* null, i32** %77, align 8
  %78 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32*, i32** %80, i64 %83
  store i32* null, i32** %84, align 8
  %85 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %86 = call i32 @mlx4_en_free_resources(%struct.mlx4_en_priv* %85)
  %87 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @free_netdev(%struct.net_device* %90)
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i64) #1

declare dso_local i32 @devlink_port_type_clear(i32) #1

declare dso_local i32 @mlx4_get_devlink_port(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @mlx4_free_hwq_res(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mlx4_en_remove_timestamp(%struct.mlx4_en_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_free_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
