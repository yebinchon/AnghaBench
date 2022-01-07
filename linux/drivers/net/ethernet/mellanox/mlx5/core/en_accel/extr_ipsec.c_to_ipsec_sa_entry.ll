; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_to_ipsec_sa_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_to_ipsec_sa_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ipsec_sa_entry = type { %struct.xfrm_state* }
%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_ipsec_sa_entry* (%struct.xfrm_state*)* @to_ipsec_sa_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_ipsec_sa_entry* @to_ipsec_sa_entry(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  %5 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %6 = icmp ne %struct.xfrm_state* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.mlx5e_ipsec_sa_entry* null, %struct.mlx5e_ipsec_sa_entry** %2, align 8
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mlx5e_ipsec_sa_entry*
  store %struct.mlx5e_ipsec_sa_entry* %13, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %14 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %15 = icmp ne %struct.mlx5e_ipsec_sa_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  store %struct.mlx5e_ipsec_sa_entry* null, %struct.mlx5e_ipsec_sa_entry** %2, align 8
  br label %26

17:                                               ; preds = %8
  %18 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %18, i32 0, i32 0
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %19, align 8
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %22 = icmp ne %struct.xfrm_state* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  store %struct.mlx5e_ipsec_sa_entry* %25, %struct.mlx5e_ipsec_sa_entry** %2, align 8
  br label %26

26:                                               ; preds = %17, %16, %7
  %27 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %2, align 8
  ret %struct.mlx5e_ipsec_sa_entry* %27
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
