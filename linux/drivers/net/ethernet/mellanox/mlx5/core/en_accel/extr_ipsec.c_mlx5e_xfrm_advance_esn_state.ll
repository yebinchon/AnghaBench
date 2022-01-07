; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_xfrm_advance_esn_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_xfrm_advance_esn_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.mlx5e_ipsec_sa_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_ipsec_modify_state_work = type { i32, %struct.mlx5e_ipsec_sa_entry*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_update_xfrm_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*)* @mlx5e_xfrm_advance_esn_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_xfrm_advance_esn_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  %4 = alloca %struct.mlx5e_ipsec_modify_state_work*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %7 = call %struct.mlx5e_ipsec_sa_entry* @to_ipsec_sa_entry(%struct.xfrm_state* %6)
  store %struct.mlx5e_ipsec_sa_entry* %7, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %8 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %9 = icmp ne %struct.mlx5e_ipsec_sa_entry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %13 = call i32 @mlx5e_ipsec_update_esn_state(%struct.mlx5e_ipsec_sa_entry* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %47

17:                                               ; preds = %11
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.mlx5e_ipsec_modify_state_work* @kzalloc(i32 24, i32 %18)
  store %struct.mlx5e_ipsec_modify_state_work* %19, %struct.mlx5e_ipsec_modify_state_work** %4, align 8
  %20 = load %struct.mlx5e_ipsec_modify_state_work*, %struct.mlx5e_ipsec_modify_state_work** %4, align 8
  %21 = icmp ne %struct.mlx5e_ipsec_modify_state_work* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %47

23:                                               ; preds = %17
  %24 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %25 = load %struct.mlx5e_ipsec_modify_state_work*, %struct.mlx5e_ipsec_modify_state_work** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_ipsec_modify_state_work, %struct.mlx5e_ipsec_modify_state_work* %25, i32 0, i32 2
  %27 = call i32 @mlx5e_ipsec_build_accel_xfrm_attrs(%struct.mlx5e_ipsec_sa_entry* %24, i32* %26)
  %28 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %29 = load %struct.mlx5e_ipsec_modify_state_work*, %struct.mlx5e_ipsec_modify_state_work** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_ipsec_modify_state_work, %struct.mlx5e_ipsec_modify_state_work* %29, i32 0, i32 1
  store %struct.mlx5e_ipsec_sa_entry* %28, %struct.mlx5e_ipsec_sa_entry** %30, align 8
  %31 = load %struct.mlx5e_ipsec_modify_state_work*, %struct.mlx5e_ipsec_modify_state_work** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5e_ipsec_modify_state_work, %struct.mlx5e_ipsec_modify_state_work* %31, i32 0, i32 0
  %33 = load i32, i32* @_update_xfrm_state, align 4
  %34 = call i32 @INIT_WORK(i32* %32, i32 %33)
  %35 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx5e_ipsec_modify_state_work*, %struct.mlx5e_ipsec_modify_state_work** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_ipsec_modify_state_work, %struct.mlx5e_ipsec_modify_state_work* %40, i32 0, i32 0
  %42 = call i32 @queue_work(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  br label %47

47:                                               ; preds = %23, %22, %16, %10
  ret void
}

declare dso_local %struct.mlx5e_ipsec_sa_entry* @to_ipsec_sa_entry(%struct.xfrm_state*) #1

declare dso_local i32 @mlx5e_ipsec_update_esn_state(%struct.mlx5e_ipsec_sa_entry*) #1

declare dso_local %struct.mlx5e_ipsec_modify_state_work* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5e_ipsec_build_accel_xfrm_attrs(%struct.mlx5e_ipsec_sa_entry*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
