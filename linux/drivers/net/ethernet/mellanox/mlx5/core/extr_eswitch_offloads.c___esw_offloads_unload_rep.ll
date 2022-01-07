; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c___esw_offloads_unload_rep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c___esw_offloads_unload_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 (%struct.mlx5_eswitch_rep*)* }
%struct.mlx5_eswitch_rep = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@REP_LOADED = common dso_local global i64 0, align 8
@REP_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_eswitch_rep*, i64)* @__esw_offloads_unload_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__esw_offloads_unload_rep(%struct.mlx5_eswitch* %0, %struct.mlx5_eswitch_rep* %1, i64 %2) #0 {
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_eswitch_rep*, align 8
  %6 = alloca i64, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_eswitch_rep* %1, %struct.mlx5_eswitch_rep** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %8 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* @REP_LOADED, align 8
  %14 = load i32, i32* @REP_REGISTERED, align 4
  %15 = call i64 @atomic_cmpxchg(i32* %12, i64 %13, i32 %14)
  %16 = load i64, i64* @REP_LOADED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mlx5_eswitch_rep*)*, i32 (%struct.mlx5_eswitch_rep*)** %26, align 8
  %28 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %29 = call i32 %27(%struct.mlx5_eswitch_rep* %28)
  br label %30

30:                                               ; preds = %18, %3
  ret void
}

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
