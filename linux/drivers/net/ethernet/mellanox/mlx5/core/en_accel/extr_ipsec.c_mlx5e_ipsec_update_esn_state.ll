; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_update_esn_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_update_esn_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ipsec_sa_entry = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.xfrm_replay_state_esn*, %struct.TYPE_4__ }
%struct.xfrm_replay_state_esn = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@MLX5E_IPSEC_ESN_SCOPE_MID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_ipsec_sa_entry*)* @mlx5e_ipsec_update_esn_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_ipsec_update_esn_state(%struct.mlx5e_ipsec_sa_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  %4 = alloca %struct.xfrm_replay_state_esn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.mlx5e_ipsec_sa_entry* %0, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %8 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @XFRM_STATE_ESN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  store i32 0, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %25, align 8
  store %struct.xfrm_replay_state_esn* %26, %struct.xfrm_replay_state_esn** %4, align 8
  %27 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %4, align 8
  %28 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %4, align 8
  %31 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %5, align 8
  %35 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @htonl(i64 %42)
  %44 = call i64 @xfrm_replay_seqhi(%struct.TYPE_6__* %41, i32 %43)
  %45 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i64 %44, i64* %47, align 8
  %48 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i64* %50, i64** %7, align 8
  %51 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %52 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %21
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @MLX5E_IPSEC_ESN_SCOPE_MID, align 8
  %59 = icmp slt i64 %57, %58
  br label %60

60:                                               ; preds = %56, %21
  %61 = phi i1 [ false, %21 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  store i32 1, i32* %2, align 4
  br label %90

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @MLX5E_IPSEC_ESN_SCOPE_MID, align 8
  %78 = icmp sge i64 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %86 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  store i32 1, i32* %2, align 4
  br label %90

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %84, %65, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @xfrm_replay_seqhi(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
