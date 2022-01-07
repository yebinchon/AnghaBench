; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_enxdp.h_mlx5e_xdp_mpwqe_add_dseg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_enxdp.h_mlx5e_xdp_mpwqe_add_dseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32, %struct.mlx5e_xdp_mpwqe }
%struct.mlx5e_xdp_mpwqe = type { i32, i64, i32, i64 }
%struct.mlx5e_xdp_xmit_data = type { i32, i32, i32 }
%struct.mlx5e_xdpsq_stats = type { i32 }
%struct.mlx5_wqe_data_seg = type { i32, i8*, i32 }
%struct.mlx5_wqe_inline_seg = type { i32, i8* }

@MLX5E_XDP_INLINE_WQE_SZ_THRSD = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_DS = common dso_local global i32 0, align 4
@MLX5_INLINE_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdpsq_stats*)* @mlx5e_xdp_mpwqe_add_dseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_xdp_mpwqe_add_dseg(%struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdp_xmit_data* %1, %struct.mlx5e_xdpsq_stats* %2) #0 {
  %4 = alloca %struct.mlx5e_xdpsq*, align 8
  %5 = alloca %struct.mlx5e_xdp_xmit_data*, align 8
  %6 = alloca %struct.mlx5e_xdpsq_stats*, align 8
  %7 = alloca %struct.mlx5e_xdp_mpwqe*, align 8
  %8 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_wqe_inline_seg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %4, align 8
  store %struct.mlx5e_xdp_xmit_data* %1, %struct.mlx5e_xdp_xmit_data** %5, align 8
  store %struct.mlx5e_xdpsq_stats* %2, %struct.mlx5e_xdpsq_stats** %6, align 8
  %13 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %13, i32 0, i32 1
  store %struct.mlx5e_xdp_mpwqe* %14, %struct.mlx5e_xdp_mpwqe** %7, align 8
  %15 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mlx5_wqe_data_seg*
  %19 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %18, i64 %22
  store %struct.mlx5_wqe_data_seg* %23, %struct.mlx5_wqe_data_seg** %8, align 8
  %24 = load %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_xmit_data** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data, %struct.mlx5e_xdp_xmit_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MLX5E_XDP_INLINE_WQE_SZ_THRSD, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %41 = bitcast %struct.mlx5_wqe_data_seg* %40 to %struct.mlx5_wqe_inline_seg*
  store %struct.mlx5_wqe_inline_seg* %41, %struct.mlx5_wqe_inline_seg** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 16, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MLX5_SEND_WQE_DS, align 4
  %48 = call i32 @DIV_ROUND_UP(i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MLX5_INLINE_SEG, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.mlx5_wqe_inline_seg*, %struct.mlx5_wqe_inline_seg** %10, align 8
  %54 = getelementptr inbounds %struct.mlx5_wqe_inline_seg, %struct.mlx5_wqe_inline_seg* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mlx5_wqe_inline_seg*, %struct.mlx5_wqe_inline_seg** %10, align 8
  %56 = getelementptr inbounds %struct.mlx5_wqe_inline_seg, %struct.mlx5_wqe_inline_seg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_xmit_data** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data, %struct.mlx5e_xdp_xmit_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %7, align 8
  %65 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %6, align 8
  %69 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %92

72:                                               ; preds = %35, %3
  %73 = load %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_xmit_data** %5, align 8
  %74 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data, %struct.mlx5e_xdp_xmit_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cpu_to_be64(i32 %75)
  %77 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %78 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %82 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %8, align 8
  %87 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %7, align 8
  %89 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %72, %39
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
