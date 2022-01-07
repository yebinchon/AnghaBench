; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_update_clock_info_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_update_clock_info_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_clock, %struct.mlx5_ib_clock_info* }
%struct.mlx5_clock = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_ib_clock_info = type { i32, i32, i32, i32, i32 }

@MLX5_IB_CLOCK_INFO_KERNEL_UPDATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @mlx5_update_clock_info_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_update_clock_info_page(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_ib_clock_info*, align 8
  %4 = alloca %struct.mlx5_clock*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 1
  %8 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %7, align 8
  store %struct.mlx5_ib_clock_info* %8, %struct.mlx5_ib_clock_info** %3, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  store %struct.mlx5_clock* %10, %struct.mlx5_clock** %4, align 8
  %11 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %3, align 8
  %12 = icmp ne %struct.mlx5_ib_clock_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %15, i32 0, i32 0
  %17 = call i32 @smp_load_acquire(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MLX5_IB_CLOCK_INFO_KERNEL_UPDATING, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @smp_store_mb(i32 %20, i32 %23)
  %25 = load %struct.mlx5_clock*, %struct.mlx5_clock** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mlx5_clock*, %struct.mlx5_clock** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mlx5_clock*, %struct.mlx5_clock** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %3, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mlx5_clock*, %struct.mlx5_clock** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MLX5_IB_CLOCK_INFO_KERNEL_UPDATING, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %51, %53
  %55 = call i32 @smp_store_release(i32* %50, i32 %54)
  br label %56

56:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
