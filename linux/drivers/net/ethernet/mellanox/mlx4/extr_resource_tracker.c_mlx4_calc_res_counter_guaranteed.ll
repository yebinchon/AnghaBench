; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_calc_res_counter_guaranteed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_calc_res_counter_guaranteed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource_allocator = type { i32 }
%struct.mlx4_active_ports = type { i32 }

@MLX4_PF_COUNTERS_PER_PORT = common dso_local global i32 0, align 4
@MLX4_VF_COUNTERS_PER_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.resource_allocator*, i32)* @mlx4_calc_res_counter_guaranteed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_calc_res_counter_guaranteed(%struct.mlx4_dev* %0, %struct.resource_allocator* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.resource_allocator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_active_ports, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_active_ports, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.resource_allocator* %1, %struct.resource_allocator** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %13)
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @MLX4_PF_COUNTERS_PER_PORT, align 4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %17, %21
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %24, i32 %25)
  %27 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = bitcast %struct.mlx4_active_ports* %8 to i8*
  %29 = bitcast %struct.mlx4_active_ports* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bitmap_weight(i32 %31, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MLX4_VF_COUNTERS_PER_PORT, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.resource_allocator*, %struct.resource_allocator** %6, align 8
  %41 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %46 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp sgt i32 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %54

52:                                               ; preds = %23
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %51, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bitmap_weight(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
