; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_rx.c_mlx5e_xsk_skb_from_cqe_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_rx.c_mlx5e_xsk_skb_from_cqe_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlx5e_rq = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlx5_cqe64 = type { i32 }
%struct.mlx5e_wqe_frag_info = type { i32, %struct.mlx5e_dma_info* }
%struct.mlx5e_dma_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@MLX5_CQE_RESP_SEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @mlx5e_xsk_skb_from_cqe_linear(%struct.mlx5e_rq* %0, %struct.mlx5_cqe64* %1, %struct.mlx5e_wqe_frag_info* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mlx5e_rq*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  %8 = alloca %struct.mlx5e_wqe_frag_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5e_dma_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %6, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %7, align 8
  store %struct.mlx5e_wqe_frag_info* %2, %struct.mlx5e_wqe_frag_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %16, i32 0, i32 1
  %18 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %17, align 8
  store %struct.mlx5e_dma_info* %18, %struct.mlx5e_dma_info** %10, align 8
  %19 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %22, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %8, align 8
  %29 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @WARN_ON_ONCE(i32 %30)
  %32 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %10, align 8
  %33 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  store i8* %39, i8** %13, align 8
  %40 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %15, align 4
  %46 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %47 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %10, align 8
  %50 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %54 = call i32 @dma_sync_single_for_cpu(i32 %48, i32 %51, i32 %52, i32 %53)
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @prefetch(i8* %55)
  %57 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %58 = call i64 @get_cqe_opcode(%struct.mlx5_cqe64* %57)
  %59 = load i64, i64* @MLX5_CQE_RESP_SEND, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %4
  %65 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %87

71:                                               ; preds = %4
  %72 = call i32 (...) @rcu_read_lock()
  %73 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %74 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %10, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @mlx5e_xdp_handle(%struct.mlx5e_rq* %73, %struct.mlx5e_dma_info* %74, i8* %75, i32* %11, i32* %9, i32 1)
  store i32 %76, i32* %14, align 4
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @likely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %87

82:                                               ; preds = %71
  %83 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call %struct.sk_buff* @mlx5e_xsk_construct_skb(%struct.mlx5e_rq* %83, i8* %84, i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %5, align 8
  br label %87

87:                                               ; preds = %82, %81, %64
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %88
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_cqe_opcode(%struct.mlx5_cqe64*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @mlx5e_xdp_handle(%struct.mlx5e_rq*, %struct.mlx5e_dma_info*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @mlx5e_xsk_construct_skb(%struct.mlx5e_rq*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
