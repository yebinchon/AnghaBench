; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_handle_rx_cqe_mpwrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_handle_rx_cqe_mpwrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.mlx5e_rq_stats* }
%struct.TYPE_5__ = type { i64, i64, %struct.mlx5_wq_ll, i32, %struct.mlx5e_mpw_info* }
%struct.mlx5_wq_ll = type { i32 }
%struct.mlx5e_mpw_info = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_rq_stats = type { i32, i32, i32 }
%struct.mlx5_cqe64 = type { i32 }
%struct.mlx5e_rx_wqe_ll = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@mlx5e_skb_from_cqe_mpwrq_linear = common dso_local global i32 0, align 4
@mlx5e_skb_from_cqe_mpwrq_nonlinear = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_handle_rx_cqe_mpwrq(%struct.mlx5e_rq* %0, %struct.mlx5_cqe64* %1) #0 {
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca %struct.mlx5_cqe64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlx5e_mpw_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_rx_wqe_ll*, align 8
  %13 = alloca %struct.mlx5_wq_ll*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mlx5e_rq_stats*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %4, align 8
  %17 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %18 = call i64 @mpwrq_get_cqe_consumed_strides(%struct.mlx5_cqe64* %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @be16_to_cpu(i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %26, i64 %27
  store %struct.mlx5e_mpw_info* %28, %struct.mlx5e_mpw_info** %7, align 8
  %29 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %30 = call i64 @mpwrq_get_cqe_stride_index(%struct.mlx5_cqe64* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = shl i64 %31, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %51 = call i32 @MLX5E_RX_ERR_CQE(%struct.mlx5_cqe64* %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %2
  %55 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %56 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %57 = call i32 @trigger_report(%struct.mlx5e_rq* %55, %struct.mlx5_cqe64* %56)
  %58 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %59 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %58, i32 0, i32 2
  %60 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %59, align 8
  %61 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %114

64:                                               ; preds = %2
  %65 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %66 = call i32 @mpwrq_is_filler_cqe(%struct.mlx5_cqe64* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %71 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %70, i32 0, i32 2
  %72 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %71, align 8
  store %struct.mlx5e_rq_stats* %72, %struct.mlx5e_rq_stats** %16, align 8
  %73 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %16, align 8
  %74 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %16, align 8
  %79 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  br label %114

84:                                               ; preds = %64
  %85 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %86 = call i64 @mpwrq_get_cqe_byte_cnt(%struct.mlx5_cqe64* %85)
  store i64 %86, i64* %15, align 8
  %87 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %88 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @mlx5e_skb_from_cqe_mpwrq_linear, align 4
  %92 = load i32, i32* @mlx5e_skb_from_cqe_mpwrq_nonlinear, align 4
  %93 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %94 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %7, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.sk_buff* @INDIRECT_CALL_2(i32 %90, i32 %91, i32 %92, %struct.mlx5e_rq* %93, %struct.mlx5e_mpw_info* %94, i64 %95, i32 %96, i32 %97)
  store %struct.sk_buff* %98, %struct.sk_buff** %14, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %84
  br label %114

102:                                              ; preds = %84
  %103 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %104 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %107 = call i32 @mlx5e_complete_rx_cqe(%struct.mlx5e_rq* %103, %struct.mlx5_cqe64* %104, i64 %105, %struct.sk_buff* %106)
  %108 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %109 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %113 = call i32 @napi_gro_receive(i32 %111, %struct.sk_buff* %112)
  br label %114

114:                                              ; preds = %102, %101, %69, %54
  %115 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %7, align 8
  %116 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %119 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %117, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @likely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %145

127:                                              ; preds = %114
  %128 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %129 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  store %struct.mlx5_wq_ll* %130, %struct.mlx5_wq_ll** %13, align 8
  %131 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %13, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call %struct.mlx5e_rx_wqe_ll* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll* %131, i64 %132)
  store %struct.mlx5e_rx_wqe_ll* %133, %struct.mlx5e_rx_wqe_ll** %12, align 8
  %134 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %135 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %7, align 8
  %136 = call i32 @mlx5e_free_rx_mpwqe(%struct.mlx5e_rq* %134, %struct.mlx5e_mpw_info* %135, i32 1)
  %137 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %13, align 8
  %138 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %139 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.mlx5e_rx_wqe_ll*, %struct.mlx5e_rx_wqe_ll** %12, align 8
  %142 = getelementptr inbounds %struct.mlx5e_rx_wqe_ll, %struct.mlx5e_rx_wqe_ll* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = call i32 @mlx5_wq_ll_pop(%struct.mlx5_wq_ll* %137, i32 %140, i32* %143)
  br label %145

145:                                              ; preds = %127, %126
  ret void
}

declare dso_local i64 @mpwrq_get_cqe_consumed_strides(%struct.mlx5_cqe64*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @mpwrq_get_cqe_stride_index(%struct.mlx5_cqe64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MLX5E_RX_ERR_CQE(%struct.mlx5_cqe64*) #1

declare dso_local i32 @trigger_report(%struct.mlx5e_rq*, %struct.mlx5_cqe64*) #1

declare dso_local i32 @mpwrq_is_filler_cqe(%struct.mlx5_cqe64*) #1

declare dso_local i64 @mpwrq_get_cqe_byte_cnt(%struct.mlx5_cqe64*) #1

declare dso_local %struct.sk_buff* @INDIRECT_CALL_2(i32, i32, i32, %struct.mlx5e_rq*, %struct.mlx5e_mpw_info*, i64, i32, i32) #1

declare dso_local i32 @mlx5e_complete_rx_cqe(%struct.mlx5e_rq*, %struct.mlx5_cqe64*, i64, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.mlx5e_rx_wqe_ll* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll*, i64) #1

declare dso_local i32 @mlx5e_free_rx_mpwqe(%struct.mlx5e_rq*, %struct.mlx5e_mpw_info*, i32) #1

declare dso_local i32 @mlx5_wq_ll_pop(%struct.mlx5_wq_ll*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
