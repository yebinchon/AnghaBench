; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32, i64, i64, %struct.TYPE_4__, %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5e_xdpsq_stats*, %struct.mlx5_wq_cyc }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i8*, i64 }
%struct.mlx5e_xdpsq_stats = type { i32, i32 }
%struct.mlx5_wq_cyc = type { i32 }
%struct.mlx5e_xdp_xmit_data = type { i64, i32, i32 }
%struct.mlx5e_xdp_info = type { i32 }
%struct.mlx5e_tx_wqe = type { %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_ctrl_seg }
%struct.mlx5_wqe_data_seg = type { i8*, i32 }
%struct.mlx5_wqe_eth_seg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MLX5E_XDP_MIN_INLINE = common dso_local global i64 0, align 8
@MLX5_INLINE_MODE_NONE = common dso_local global i64 0, align 8
@MLX5_OPCODE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)* @mlx5e_xmit_xdp_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xmit_xdp_frame(%struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdp_xmit_data* %1, %struct.mlx5e_xdp_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_xdpsq*, align 8
  %7 = alloca %struct.mlx5e_xdp_xmit_data*, align 8
  %8 = alloca %struct.mlx5e_xdp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_wq_cyc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_tx_wqe*, align 8
  %13 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %14 = alloca %struct.mlx5_wqe_eth_seg*, align 8
  %15 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.mlx5e_xdpsq_stats*, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %6, align 8
  store %struct.mlx5e_xdp_xmit_data* %1, %struct.mlx5e_xdp_xmit_data** %7, align 8
  store %struct.mlx5e_xdp_info* %2, %struct.mlx5e_xdp_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %19, i32 0, i32 6
  store %struct.mlx5_wq_cyc* %20, %struct.mlx5_wq_cyc** %10, align 8
  %21 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %22 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc* %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.mlx5e_tx_wqe* @mlx5_wq_cyc_get_wqe(%struct.mlx5_wq_cyc* %26, i32 %27)
  store %struct.mlx5e_tx_wqe* %28, %struct.mlx5e_tx_wqe** %12, align 8
  %29 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %12, align 8
  %30 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %29, i32 0, i32 2
  store %struct.mlx5_wqe_ctrl_seg* %30, %struct.mlx5_wqe_ctrl_seg** %13, align 8
  %31 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %12, align 8
  %32 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %31, i32 0, i32 1
  store %struct.mlx5_wqe_eth_seg* %32, %struct.mlx5_wqe_eth_seg** %14, align 8
  %33 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %12, align 8
  %34 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %33, i32 0, i32 0
  %35 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %34, align 8
  store %struct.mlx5_wqe_data_seg* %35, %struct.mlx5_wqe_data_seg** %15, align 8
  %36 = load %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_xmit_data** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data, %struct.mlx5e_xdp_xmit_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_xmit_data** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data, %struct.mlx5e_xdp_xmit_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %17, align 8
  %42 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %42, i32 0, i32 5
  %44 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %43, align 8
  store %struct.mlx5e_xdpsq_stats* %44, %struct.mlx5e_xdpsq_stats** %18, align 8
  %45 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %12, align 8
  %46 = call i32 @prefetchw(%struct.mlx5e_tx_wqe* %45)
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* @MLX5E_XDP_MIN_INLINE, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %4
  %51 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %17, align 8
  %55 = icmp slt i64 %53, %54
  br label %56

56:                                               ; preds = %50, %4
  %57 = phi i1 [ true, %4 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %18, align 8
  %63 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %147

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %71 = call i32 @mlx5e_xmit_xdp_frame_check(%struct.mlx5e_xdpsq* %70)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %147

79:                                               ; preds = %72
  %80 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %13, align 8
  %81 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %83 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MLX5_INLINE_MODE_NONE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %79
  %88 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %14, align 8
  %89 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_xmit_data** %7, align 8
  %93 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data, %struct.mlx5e_xdp_xmit_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* @MLX5E_XDP_MIN_INLINE, align 8
  %96 = call i32 @memcpy(i32 %91, i32 %94, i64 %95)
  %97 = load i64, i64* @MLX5E_XDP_MIN_INLINE, align 8
  %98 = call i32 @cpu_to_be16(i64 %97)
  %99 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %14, align 8
  %100 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load i64, i64* @MLX5E_XDP_MIN_INLINE, align 8
  %103 = load i64, i64* %17, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %17, align 8
  %105 = load i64, i64* @MLX5E_XDP_MIN_INLINE, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %16, align 4
  %110 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %15, align 8
  %111 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %110, i32 1
  store %struct.mlx5_wqe_data_seg* %111, %struct.mlx5_wqe_data_seg** %15, align 8
  br label %112

112:                                              ; preds = %87, %79
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @cpu_to_be64(i32 %113)
  %115 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %15, align 8
  %116 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %17, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i8* @cpu_to_be32(i32 %118)
  %120 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %15, align 8
  %121 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %123 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 %124, 8
  %126 = load i32, i32* @MLX5_OPCODE_SEND, align 4
  %127 = or i32 %125, %126
  %128 = call i8* @cpu_to_be32(i32 %127)
  %129 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %13, align 8
  %130 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %132 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %13, align 8
  %136 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %137 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %136, i32 0, i32 4
  store %struct.mlx5_wqe_ctrl_seg* %135, %struct.mlx5_wqe_ctrl_seg** %137, align 8
  %138 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %139 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.mlx5e_xdp_info*, %struct.mlx5e_xdp_info** %8, align 8
  %142 = call i32 @mlx5e_xdpi_fifo_push(i32* %140, %struct.mlx5e_xdp_info* %141)
  %143 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %18, align 8
  %144 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  store i32 1, i32* %5, align 4
  br label %147

147:                                              ; preds = %112, %78, %61
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc*, i32) #1

declare dso_local %struct.mlx5e_tx_wqe* @mlx5_wq_cyc_get_wqe(%struct.mlx5_wq_cyc*, i32) #1

declare dso_local i32 @prefetchw(%struct.mlx5e_tx_wqe*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_xmit_xdp_frame_check(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5e_xdpi_fifo_push(i32*, %struct.mlx5e_xdp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
