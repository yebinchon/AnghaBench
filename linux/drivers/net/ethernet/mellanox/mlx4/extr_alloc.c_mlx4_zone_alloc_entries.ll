; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_alloc_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_alloc_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_zone_allocator = type { i32 }
%struct.mlx4_zone_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_zone_alloc_entries(%struct.mlx4_zone_allocator* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.mlx4_zone_allocator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mlx4_zone_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_zone_allocator* %0, %struct.mlx4_zone_allocator** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 -1, i32* %14, align 4
  %15 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.mlx4_zone_entry* @__mlx4_find_zone_by_uid(%struct.mlx4_zone_allocator* %18, i32 %19)
  store %struct.mlx4_zone_entry* %20, %struct.mlx4_zone_entry** %13, align 8
  %21 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %13, align 8
  %22 = icmp eq %struct.mlx4_zone_entry* null, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %31

24:                                               ; preds = %6
  %25 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @__mlx4_alloc_from_zone(%struct.mlx4_zone_entry* %25, i32 %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %24, %23
  %32 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32, i32* %14, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlx4_zone_entry* @__mlx4_find_zone_by_uid(%struct.mlx4_zone_allocator*, i32) #1

declare dso_local i32 @__mlx4_alloc_from_zone(%struct.mlx4_zone_entry*, i32, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
