; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_zone_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_zone_allocator = type { i32 }
%struct.mlx4_zone_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_zone_remove_one(%struct.mlx4_zone_allocator* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_zone_allocator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_zone_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_zone_allocator* %0, %struct.mlx4_zone_allocator** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.mlx4_zone_entry* @__mlx4_find_zone_by_uid(%struct.mlx4_zone_allocator* %10, i32 %11)
  store %struct.mlx4_zone_entry* %12, %struct.mlx4_zone_entry** %5, align 8
  %13 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %5, align 8
  %14 = icmp eq %struct.mlx4_zone_entry* null, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %5, align 8
  %18 = call i32 @__mlx4_zone_remove_one_entry(%struct.mlx4_zone_entry* %17)
  br label %19

19:                                               ; preds = %16, %15
  %20 = load %struct.mlx4_zone_allocator*, %struct.mlx4_zone_allocator** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_zone_allocator, %struct.mlx4_zone_allocator* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.mlx4_zone_entry*, %struct.mlx4_zone_entry** %5, align 8
  %24 = call i32 @kfree(%struct.mlx4_zone_entry* %23)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlx4_zone_entry* @__mlx4_find_zone_by_uid(%struct.mlx4_zone_allocator*, i32) #1

declare dso_local i32 @__mlx4_zone_remove_one_entry(%struct.mlx4_zone_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_zone_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
