; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_free_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_free_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_zone_allocator = type { i32 }
%struct.mlx4_zone_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_zone_free_entries(%struct.mlx4_zone_allocator* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_zone_allocator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_zone_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_zone_allocator* %0, %struct.mlx4_zone_allocator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.mlx4_zone_entry* @__mlx4_find_zone_by_uid(%struct.mlx4_zone_allocator* %14, i32 %15)
  store %struct.mlx4_zone_entry* %16, %struct.mlx4_zone_entry** %9, align 8
  %17 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %9, align 8
  %18 = icmp eq %struct.mlx4_zone_entry* null, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %10, align 4
  br label %25

20:                                               ; preds = %4
  %21 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @__mlx4_free_from_zone(%struct.mlx4_zone_entry* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %19
  %26 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlx4_zone_entry* @__mlx4_find_zone_by_uid(%struct.mlx4_zone_allocator*, i32) #1

declare dso_local i32 @__mlx4_free_from_zone(%struct.mlx4_zone_entry*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
