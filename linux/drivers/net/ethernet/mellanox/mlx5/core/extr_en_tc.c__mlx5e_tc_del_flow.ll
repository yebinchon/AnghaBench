; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c__mlx5e_tc_del_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c__mlx5e_tc_del_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tc_flow = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @_mlx5e_tc_del_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mlx5e_tc_del_flow(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5e_tc_flow*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mlx5e_tc_flow*
  store %struct.mlx5e_tc_flow* %8, %struct.mlx5e_tc_flow** %5, align 8
  %9 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %9, i32 0, i32 0
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %6, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %13 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %14 = call i32 @mlx5e_tc_del_flow(%struct.mlx5e_priv* %12, %struct.mlx5e_tc_flow* %13)
  %15 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %16 = call i32 @kfree(%struct.mlx5e_tc_flow* %15)
  ret void
}

declare dso_local i32 @mlx5e_tc_del_flow(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

declare dso_local i32 @kfree(%struct.mlx5e_tc_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
