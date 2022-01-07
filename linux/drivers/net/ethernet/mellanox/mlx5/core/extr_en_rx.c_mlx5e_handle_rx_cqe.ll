; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_handle_rx_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_handle_rx_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.mlx5_wq_cyc }
%struct.mlx5_wq_cyc = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_cqe64 = type { i32, i32 }
%struct.mlx5e_wqe_frag_info = type { i32 }
%struct.sk_buff = type { i32 }

@mlx5e_skb_from_cqe_linear = common dso_local global i32 0, align 4
@mlx5e_skb_from_cqe_nonlinear = common dso_local global i32 0, align 4
@MLX5E_RQ_FLAG_XDP_XMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_handle_rx_cqe(%struct.mlx5e_rq* %0, %struct.mlx5_cqe64* %1) #0 {
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca %struct.mlx5_cqe64*, align 8
  %5 = alloca %struct.mlx5_wq_cyc*, align 8
  %6 = alloca %struct.mlx5e_wqe_frag_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %4, align 8
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store %struct.mlx5_wq_cyc* %12, %struct.mlx5_wq_cyc** %5, align 8
  %13 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %5, align 8
  %14 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be16_to_cpu(i32 %16)
  %18 = call i32 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc* %13, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.mlx5e_wqe_frag_info* @get_frag(%struct.mlx5e_rq* %19, i32 %20)
  store %struct.mlx5e_wqe_frag_info* %21, %struct.mlx5e_wqe_frag_info** %6, align 8
  %22 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %27 = call i32 @MLX5E_RX_ERR_CQE(%struct.mlx5_cqe64* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %32 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %33 = call i32 @trigger_report(%struct.mlx5e_rq* %31, %struct.mlx5_cqe64* %32)
  %34 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %75

40:                                               ; preds = %2
  %41 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %42 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @mlx5e_skb_from_cqe_linear, align 4
  %46 = load i32, i32* @mlx5e_skb_from_cqe_nonlinear, align 4
  %47 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %48 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %49 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call %struct.sk_buff* @INDIRECT_CALL_2(i32 %44, i32 %45, i32 %46, %struct.mlx5e_rq* %47, %struct.mlx5_cqe64* %48, %struct.mlx5e_wqe_frag_info* %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @MLX5E_RQ_FLAG_XDP_XMIT, align 4
  %56 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @__test_and_clear_bit(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %79

62:                                               ; preds = %54
  br label %75

63:                                               ; preds = %40
  %64 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %65 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @mlx5e_complete_rx_cqe(%struct.mlx5e_rq* %64, %struct.mlx5_cqe64* %65, i32 %66, %struct.sk_buff* %67)
  %69 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = call i32 @napi_gro_receive(i32 %72, %struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %63, %62, %30
  %76 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %77 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %6, align 8
  %78 = call i32 @mlx5e_free_rx_wqe(%struct.mlx5e_rq* %76, %struct.mlx5e_wqe_frag_info* %77, i32 1)
  br label %79

79:                                               ; preds = %75, %61
  %80 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %5, align 8
  %81 = call i32 @mlx5_wq_cyc_pop(%struct.mlx5_wq_cyc* %80)
  ret void
}

declare dso_local i32 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.mlx5e_wqe_frag_info* @get_frag(%struct.mlx5e_rq*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MLX5E_RX_ERR_CQE(%struct.mlx5_cqe64*) #1

declare dso_local i32 @trigger_report(%struct.mlx5e_rq*, %struct.mlx5_cqe64*) #1

declare dso_local %struct.sk_buff* @INDIRECT_CALL_2(i32, i32, i32, %struct.mlx5e_rq*, %struct.mlx5_cqe64*, %struct.mlx5e_wqe_frag_info*, i32) #1

declare dso_local i64 @__test_and_clear_bit(i32, i32) #1

declare dso_local i32 @mlx5e_complete_rx_cqe(%struct.mlx5e_rq*, %struct.mlx5_cqe64*, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32, %struct.sk_buff*) #1

declare dso_local i32 @mlx5e_free_rx_wqe(%struct.mlx5e_rq*, %struct.mlx5e_wqe_frag_info*, i32) #1

declare dso_local i32 @mlx5_wq_cyc_pop(%struct.mlx5_wq_cyc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
