; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_free_entries_unique.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_free_entries_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_zone_allocator = type { i32, i32 }
%struct.mlx4_zone_entry = type { i32 }

@MLX4_ZONE_ALLOC_FLAGS_NO_OVERLAP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_zone_free_entries_unique(%struct.mlx4_zone_allocator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_zone_allocator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_zone_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_zone_allocator* %0, %struct.mlx4_zone_allocator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MLX4_ZONE_ALLOC_FLAGS_NO_OVERLAP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %5, align 8
  %21 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.mlx4_zone_entry* @__mlx4_find_zone_by_uid_unique(%struct.mlx4_zone_allocator* %23, i32 %24)
  store %struct.mlx4_zone_entry* %25, %struct.mlx4_zone_entry** %8, align 8
  %26 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %8, align 8
  %27 = icmp eq %struct.mlx4_zone_entry* null, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 -1, i32* %9, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @__mlx4_free_from_zone(%struct.mlx4_zone_entry* %30, i32 %31, i32 %32)
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlx4_zone_entry* @__mlx4_find_zone_by_uid_unique(%struct.mlx4_zone_allocator*, i32) #1

declare dso_local i32 @__mlx4_free_from_zone(%struct.mlx4_zone_entry*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
