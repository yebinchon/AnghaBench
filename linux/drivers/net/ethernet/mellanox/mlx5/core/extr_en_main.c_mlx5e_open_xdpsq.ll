; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_xdpsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_xdpsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32** }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_sq_param = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_xdpsq = type { i64, i32, i32, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.mlx5e_xdp_wqe_info* }
%struct.mlx5e_xdp_wqe_info = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5e_create_sq_param = type { i32, i64, i32*, i32, i32 }
%struct.mlx5e_tx_wqe = type { %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_ctrl_seg }
%struct.mlx5_wqe_eth_seg = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32 }
%struct.mlx5_wqe_data_seg = type { i32 }

@MLX5E_SQ_STATE_ENABLED = common dso_local global i32 0, align 4
@MLX5E_XDP_TX_DS_COUNT = common dso_local global i32 0, align 4
@MLX5_INLINE_MODE_NONE = common dso_local global i64 0, align 8
@MLX5E_XDP_MIN_INLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_xdpsq(%struct.mlx5e_channel* %0, %struct.mlx5e_params* %1, %struct.mlx5e_sq_param* %2, %struct.xdp_umem* %3, %struct.mlx5e_xdpsq* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_channel*, align 8
  %9 = alloca %struct.mlx5e_params*, align 8
  %10 = alloca %struct.mlx5e_sq_param*, align 8
  %11 = alloca %struct.xdp_umem*, align 8
  %12 = alloca %struct.mlx5e_xdpsq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5e_create_sq_param, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mlx5e_xdp_wqe_info*, align 8
  %20 = alloca %struct.mlx5e_tx_wqe*, align 8
  %21 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %22 = alloca %struct.mlx5_wqe_eth_seg*, align 8
  %23 = alloca %struct.mlx5_wqe_data_seg*, align 8
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %8, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %9, align 8
  store %struct.mlx5e_sq_param* %2, %struct.mlx5e_sq_param** %10, align 8
  store %struct.xdp_umem* %3, %struct.xdp_umem** %11, align 8
  store %struct.mlx5e_xdpsq* %4, %struct.mlx5e_xdpsq** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = bitcast %struct.mlx5e_create_sq_param* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 32, i1 false)
  %25 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %26 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %27 = load %struct.xdp_umem*, %struct.xdp_umem** %11, align 8
  %28 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %10, align 8
  %29 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @mlx5e_alloc_xdpsq(%struct.mlx5e_channel* %25, %struct.mlx5e_params* %26, %struct.xdp_umem* %27, %struct.mlx5e_sq_param* %28, %struct.mlx5e_xdpsq* %29, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %7, align 4
  br label %164

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %14, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %14, i32 0, i32 4
  store i32 %49, i32* %50, align 4
  %51 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %52 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %14, i32 0, i32 3
  store i32 %55, i32* %56, align 8
  %57 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %58 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %14, i32 0, i32 2
  store i32* %58, i32** %59, align 8
  %60 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %61 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %14, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* @MLX5E_SQ_STATE_ENABLED, align 4
  %65 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %66 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %65, i32 0, i32 2
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %69 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %10, align 8
  %72 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %73 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %72, i32 0, i32 1
  %74 = call i32 @mlx5e_create_sq_rdy(i32 %70, %struct.mlx5e_sq_param* %71, %struct.mlx5e_create_sq_param* %14, i32* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %36
  br label %156

78:                                               ; preds = %36
  %79 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %80 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %10, align 8
  %81 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mlx5e_set_xmit_fp(%struct.mlx5e_xdpsq* %79, i32 %82)
  %84 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %10, align 8
  %85 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %155, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* @MLX5E_XDP_TX_DS_COUNT, align 4
  store i32 %89, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %90 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %91 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MLX5_INLINE_MODE_NONE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @MLX5E_XDP_MIN_INLINE, align 4
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %95, %88
  store i32 0, i32* %18, align 4
  br label %100

100:                                              ; preds = %151, %99
  %101 = load i32, i32* %18, align 4
  %102 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %103 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %102, i32 0, i32 4
  %104 = call i32 @mlx5_wq_cyc_get_size(i32* %103)
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %154

106:                                              ; preds = %100
  %107 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %108 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %109, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %110, i64 %112
  store %struct.mlx5e_xdp_wqe_info* %113, %struct.mlx5e_xdp_wqe_info** %19, align 8
  %114 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %115 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %114, i32 0, i32 4
  %116 = load i32, i32* %18, align 4
  %117 = call %struct.mlx5e_tx_wqe* @mlx5_wq_cyc_get_wqe(i32* %115, i32 %116)
  store %struct.mlx5e_tx_wqe* %117, %struct.mlx5e_tx_wqe** %20, align 8
  %118 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %20, align 8
  %119 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %118, i32 0, i32 1
  store %struct.mlx5_wqe_ctrl_seg* %119, %struct.mlx5_wqe_ctrl_seg** %21, align 8
  %120 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %20, align 8
  %121 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %120, i32 0, i32 0
  store %struct.mlx5_wqe_eth_seg* %121, %struct.mlx5_wqe_eth_seg** %22, align 8
  %122 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %123 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 %124, 8
  %126 = load i32, i32* %16, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @cpu_to_be32(i32 %127)
  %129 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %21, align 8
  %130 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %17, align 4
  %132 = call i32 @cpu_to_be16(i32 %131)
  %133 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %22, align 8
  %134 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %21, align 8
  %137 = bitcast %struct.mlx5_wqe_ctrl_seg* %136 to %struct.mlx5_wqe_data_seg*
  %138 = load i32, i32* %16, align 4
  %139 = sub i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %137, i64 %140
  store %struct.mlx5_wqe_data_seg* %141, %struct.mlx5_wqe_data_seg** %23, align 8
  %142 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %143 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %23, align 8
  %146 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %19, align 8
  %148 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  %149 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %19, align 8
  %150 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %106
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %100

154:                                              ; preds = %100
  br label %155

155:                                              ; preds = %154, %78
  store i32 0, i32* %7, align 4
  br label %164

156:                                              ; preds = %77
  %157 = load i32, i32* @MLX5E_SQ_STATE_ENABLED, align 4
  %158 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %159 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %158, i32 0, i32 2
  %160 = call i32 @clear_bit(i32 %157, i32* %159)
  %161 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %12, align 8
  %162 = call i32 @mlx5e_free_xdpsq(%struct.mlx5e_xdpsq* %161)
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %156, %155, %34
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5e_alloc_xdpsq(%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.xdp_umem*, %struct.mlx5e_sq_param*, %struct.mlx5e_xdpsq*, i32) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @mlx5e_create_sq_rdy(i32, %struct.mlx5e_sq_param*, %struct.mlx5e_create_sq_param*, i32*) #2

declare dso_local i32 @mlx5e_set_xmit_fp(%struct.mlx5e_xdpsq*, i32) #2

declare dso_local i32 @mlx5_wq_cyc_get_size(i32*) #2

declare dso_local %struct.mlx5e_tx_wqe* @mlx5_wq_cyc_get_wqe(i32*, i32) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @mlx5e_free_xdpsq(%struct.mlx5e_xdpsq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
