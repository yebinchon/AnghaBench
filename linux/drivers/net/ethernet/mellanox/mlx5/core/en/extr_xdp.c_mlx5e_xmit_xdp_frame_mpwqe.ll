; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_frame_mpwqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_frame_mpwqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i64, %struct.TYPE_2__, %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdp_mpwqe }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_xdpsq_stats = type { i32, i32 }
%struct.mlx5e_xdp_mpwqe = type { i64 }
%struct.mlx5e_xdp_xmit_data = type { i64 }
%struct.mlx5e_xdp_info = type { i32 }

@MLX5E_XDP_CHECK_START_MPWQE = common dso_local global i32 0, align 4
@MLX5E_XDP_MPW_MAX_NUM_DS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)* @mlx5e_xmit_xdp_frame_mpwqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xmit_xdp_frame_mpwqe(%struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdp_xmit_data* %1, %struct.mlx5e_xdp_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_xdpsq*, align 8
  %7 = alloca %struct.mlx5e_xdp_xmit_data*, align 8
  %8 = alloca %struct.mlx5e_xdp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5e_xdp_mpwqe*, align 8
  %11 = alloca %struct.mlx5e_xdpsq_stats*, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %6, align 8
  store %struct.mlx5e_xdp_xmit_data* %1, %struct.mlx5e_xdp_xmit_data** %7, align 8
  store %struct.mlx5e_xdp_info* %2, %struct.mlx5e_xdp_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %12, i32 0, i32 3
  store %struct.mlx5e_xdp_mpwqe* %13, %struct.mlx5e_xdp_mpwqe** %10, align 8
  %14 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %14, i32 0, i32 2
  %16 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %15, align 8
  store %struct.mlx5e_xdpsq_stats* %16, %struct.mlx5e_xdpsq_stats** %11, align 8
  %17 = load %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_xmit_data** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data, %struct.mlx5e_xdp_xmit_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %11, align 8
  %29 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %5, align 4
  br label %84

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %37 = call i32 @mlx5e_xmit_xdp_frame_check_mpwqe(%struct.mlx5e_xdpsq* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %84

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @MLX5E_XDP_CHECK_START_MPWQE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %51 = call i32 @mlx5e_xdp_mpwqe_session_start(%struct.mlx5e_xdpsq* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %54 = load %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_xmit_data** %7, align 8
  %55 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %11, align 8
  %56 = call i32 @mlx5e_xdp_mpwqe_add_dseg(%struct.mlx5e_xdpsq* %53, %struct.mlx5e_xdp_xmit_data* %54, %struct.mlx5e_xdpsq_stats* %55)
  %57 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %10, align 8
  %58 = call i64 @mlx5e_xdp_no_room_for_inline_pkt(%struct.mlx5e_xdp_mpwqe* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %10, align 8
  %62 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MLX5E_XDP_MPW_MAX_NUM_DS, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %60, %52
  %67 = phi i1 [ true, %52 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %73 = call i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %76 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.mlx5e_xdp_info*, %struct.mlx5e_xdp_info** %8, align 8
  %79 = call i32 @mlx5e_xdpi_fifo_push(i32* %77, %struct.mlx5e_xdp_info* %78)
  %80 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %11, align 8
  %81 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %74, %44, %27
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_xmit_xdp_frame_check_mpwqe(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @mlx5e_xdp_mpwqe_session_start(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @mlx5e_xdp_mpwqe_add_dseg(%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdpsq_stats*) #1

declare dso_local i64 @mlx5e_xdp_no_room_for_inline_pkt(%struct.mlx5e_xdp_mpwqe*) #1

declare dso_local i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @mlx5e_xdpi_fifo_push(i32*, %struct.mlx5e_xdp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
