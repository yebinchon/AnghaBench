; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_hairpin = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_hairpin*)* @mlx5e_hairpin_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hairpin_destroy(%struct.mlx5e_hairpin* %0) #0 {
  %2 = alloca %struct.mlx5e_hairpin*, align 8
  store %struct.mlx5e_hairpin* %0, %struct.mlx5e_hairpin** %2, align 8
  %3 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %9 = call i32 @mlx5e_hairpin_rss_cleanup(%struct.mlx5e_hairpin* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %12 = call i32 @mlx5e_hairpin_destroy_transport(%struct.mlx5e_hairpin* %11)
  %13 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mlx5_core_hairpin_destroy(i32 %15)
  %17 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %18 = call i32 @kvfree(%struct.mlx5e_hairpin* %17)
  ret void
}

declare dso_local i32 @mlx5e_hairpin_rss_cleanup(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5e_hairpin_destroy_transport(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5_core_hairpin_destroy(i32) #1

declare dso_local i32 @kvfree(%struct.mlx5e_hairpin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
