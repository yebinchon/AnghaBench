; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_detach_mod_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_detach_mod_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_tc_flow = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*)* @mlx5e_detach_mod_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_detach_mod_hdr(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_tc_flow*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %4, align 8
  %5 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %25 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %29 = call i32 @get_flow_name_space(%struct.mlx5e_tc_flow* %28)
  %30 = call i32 @mlx5e_mod_hdr_put(%struct.mlx5e_priv* %24, %struct.TYPE_2__* %27, i32 %29)
  %31 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %31, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %32, align 8
  br label %33

33:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx5e_mod_hdr_put(%struct.mlx5e_priv*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @get_flow_name_space(%struct.mlx5e_tc_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
