; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_mpwqe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_mpwqe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32, i32, %struct.mlx5_wqe_ctrl_seg*, %struct.TYPE_3__, %struct.mlx5e_xdp_mpwqe, %struct.mlx5_wq_cyc }
%struct.mlx5_wqe_ctrl_seg = type { i8*, i8* }
%struct.TYPE_3__ = type { %struct.mlx5e_xdp_wqe_info* }
%struct.mlx5e_xdp_wqe_info = type { i64, i32 }
%struct.mlx5e_xdp_mpwqe = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.mlx5_wqe_ctrl_seg }
%struct.mlx5_wq_cyc = type { i32 }

@MLX5_OPCODE_ENHANCED_MPSW = common dso_local global i32 0, align 4
@MLX5_SEND_WQEBB_NUM_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq* %0) #0 {
  %2 = alloca %struct.mlx5e_xdpsq*, align 8
  %3 = alloca %struct.mlx5_wq_cyc*, align 8
  %4 = alloca %struct.mlx5e_xdp_mpwqe*, align 8
  %5 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5e_xdp_wqe_info*, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %2, align 8
  %9 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %9, i32 0, i32 5
  store %struct.mlx5_wq_cyc* %10, %struct.mlx5_wq_cyc** %3, align 8
  %11 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %11, i32 0, i32 4
  store %struct.mlx5e_xdp_mpwqe* %12, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %13 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.mlx5_wqe_ctrl_seg* %16, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %17 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %3, align 8
  %21 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc* %20, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %28, i64 %29
  store %struct.mlx5e_xdp_wqe_info* %30, %struct.mlx5e_xdp_wqe_info** %8, align 8
  %31 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 8
  %35 = load i32, i32* @MLX5_OPCODE_ENHANCED_MPSW, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %41 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %6, align 8
  %46 = or i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* @MLX5_SEND_WQEBB_NUM_DS, align 4
  %53 = call i64 @DIV_ROUND_UP(i64 %51, i32 %52)
  %54 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %8, align 8
  %60 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %8, align 8
  %62 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %65 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %71 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %72 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %71, i32 0, i32 2
  store %struct.mlx5_wqe_ctrl_seg* %70, %struct.mlx5_wqe_ctrl_seg** %72, align 8
  %73 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %73, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %74, align 8
  ret void
}

declare dso_local i64 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
