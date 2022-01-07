; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_cleanup_rep_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_cleanup_rep_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, i32, %struct.TYPE_2__, %struct.mlx5e_rep_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_rep_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_cleanup_rep_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_cleanup_rep_rx(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_rep_priv*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 4
  %6 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  store %struct.mlx5e_rep_priv* %6, %struct.mlx5e_rep_priv** %3, align 8
  %7 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mlx5_del_flow_rules(i32 %9)
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mlx5e_destroy_ttc_table(%struct.mlx5e_priv* %11, i32* %14)
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv* %16, i32 %19)
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %22 = call i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv* %21, i32 0)
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv* %23, i32 %26)
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 1
  %31 = call i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv* %28, i32* %30)
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 0
  %34 = call i32 @mlx5e_close_drop_rq(i32* %33)
  ret void
}

declare dso_local i32 @mlx5_del_flow_rules(i32) #1

declare dso_local i32 @mlx5e_destroy_ttc_table(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_close_drop_rq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
