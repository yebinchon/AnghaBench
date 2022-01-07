; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_cleanup_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_cleanup_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32*, %struct.mlx5_clock }
%struct.mlx5_clock = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@device_frequency_khz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_cleanup_clock(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_clock*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 1
  store %struct.mlx5_clock* %5, %struct.mlx5_clock** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %7 = load i32, i32* @device_frequency_khz, align 4
  %8 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %13 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %13, i32 0, i32 4
  %15 = call i32 @mlx5_eq_notifier_unregister(%struct.mlx5_core_dev* %12, i32* %14)
  %16 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @ptp_clock_unregister(i32* %23)
  %25 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %11
  %28 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @cancel_work_sync(i32* %30)
  %32 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %32, i32 0, i32 1
  %34 = call i32 @cancel_delayed_work_sync(i32* %33)
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = call i32 @free_page(i64 %43)
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %39, %27
  %48 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @kfree(i32 %51)
  br label %53

53:                                               ; preds = %47, %10
  ret void
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_eq_notifier_unregister(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @ptp_clock_unregister(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
