; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_xfrm_free_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_xfrm_free_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_ipsec_sa_entry = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@XFRM_OFFLOAD_INBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*)* @mlx5e_xfrm_free_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_xfrm_free_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %4 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %5 = call %struct.mlx5e_ipsec_sa_entry* @to_ipsec_sa_entry(%struct.xfrm_state* %4)
  store %struct.mlx5e_ipsec_sa_entry* %5, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %6 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %7 = icmp ne %struct.mlx5e_ipsec_sa_entry* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @flush_workqueue(i32 %19)
  %21 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mlx5_accel_esp_free_hw_context(i64 %23)
  %25 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mlx5_accel_esp_destroy_xfrm(i32 %27)
  br label %29

29:                                               ; preds = %14, %9
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @XFRM_OFFLOAD_INBOUND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %39 = call i32 @mlx5e_ipsec_sadb_rx_free(%struct.mlx5e_ipsec_sa_entry* %38)
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %42 = call i32 @kfree(%struct.mlx5e_ipsec_sa_entry* %41)
  br label %43

43:                                               ; preds = %40, %8
  ret void
}

declare dso_local %struct.mlx5e_ipsec_sa_entry* @to_ipsec_sa_entry(%struct.xfrm_state*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mlx5_accel_esp_free_hw_context(i64) #1

declare dso_local i32 @mlx5_accel_esp_destroy_xfrm(i32) #1

declare dso_local i32 @mlx5e_ipsec_sadb_rx_free(%struct.mlx5e_ipsec_sa_entry*) #1

declare dso_local i32 @kfree(%struct.mlx5e_ipsec_sa_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
