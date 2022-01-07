; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_rss_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_rss_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_hairpin = type { i32, i32, %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_hairpin*)* @mlx5e_hairpin_rss_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hairpin_rss_cleanup(%struct.mlx5e_hairpin* %0) #0 {
  %2 = alloca %struct.mlx5e_hairpin*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5e_hairpin* %0, %struct.mlx5e_hairpin** %2, align 8
  %4 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %4, i32 0, i32 2
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5e_priv* %6, %struct.mlx5e_priv** %3, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %8 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %8, i32 0, i32 1
  %10 = call i32 @mlx5e_destroy_ttc_table(%struct.mlx5e_priv* %7, i32* %9)
  %11 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %12 = call i32 @mlx5e_hairpin_destroy_indirect_tirs(%struct.mlx5e_hairpin* %11)
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %14 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %14, i32 0, i32 0
  %16 = call i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv* %13, i32* %15)
  ret void
}

declare dso_local i32 @mlx5e_destroy_ttc_table(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_hairpin_destroy_indirect_tirs(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
