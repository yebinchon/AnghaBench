; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_get_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc = type { i32 }
%struct.mlx5e_tc_flow = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.mlx5_fc* }
%struct.TYPE_3__ = type { %struct.mlx5_fc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_fc* (%struct.mlx5e_tc_flow*)* @mlx5e_tc_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_fc* @mlx5e_tc_get_counter(%struct.mlx5e_tc_flow* %0) #0 {
  %2 = alloca %struct.mlx5_fc*, align 8
  %3 = alloca %struct.mlx5e_tc_flow*, align 8
  store %struct.mlx5e_tc_flow* %0, %struct.mlx5e_tc_flow** %3, align 8
  %4 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %3, align 8
  %5 = call i64 @mlx5e_is_eswitch_flow(%struct.mlx5e_tc_flow* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mlx5_fc*, %struct.mlx5_fc** %11, align 8
  store %struct.mlx5_fc* %12, %struct.mlx5_fc** %2, align 8
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mlx5_fc*, %struct.mlx5_fc** %17, align 8
  store %struct.mlx5_fc* %18, %struct.mlx5_fc** %2, align 8
  br label %19

19:                                               ; preds = %13, %7
  %20 = load %struct.mlx5_fc*, %struct.mlx5_fc** %2, align 8
  ret %struct.mlx5_fc* %20
}

declare dso_local i64 @mlx5e_is_eswitch_flow(%struct.mlx5e_tc_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
