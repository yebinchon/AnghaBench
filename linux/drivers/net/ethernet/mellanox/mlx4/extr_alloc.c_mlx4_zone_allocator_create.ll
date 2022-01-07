; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_allocator_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_allocator_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_zone_allocator = type { i32, i64, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx4_zone_allocator* @mlx4_zone_allocator_create(i32 %0) #0 {
  %2 = alloca %struct.mlx4_zone_allocator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_zone_allocator*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlx4_zone_allocator* @kmalloc(i32 40, i32 %5)
  store %struct.mlx4_zone_allocator* %6, %struct.mlx4_zone_allocator** %4, align 8
  %7 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %4, align 8
  %8 = icmp eq %struct.mlx4_zone_allocator* null, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.mlx4_zone_allocator* null, %struct.mlx4_zone_allocator** %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %11, i32 0, i32 5
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %14, i32 0, i32 4
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %17, i32 0, i32 3
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %4, align 8
  store %struct.mlx4_zone_allocator* %27, %struct.mlx4_zone_allocator** %2, align 8
  br label %28

28:                                               ; preds = %10, %9
  %29 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %2, align 8
  ret %struct.mlx4_zone_allocator* %29
}

declare dso_local %struct.mlx4_zone_allocator* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
