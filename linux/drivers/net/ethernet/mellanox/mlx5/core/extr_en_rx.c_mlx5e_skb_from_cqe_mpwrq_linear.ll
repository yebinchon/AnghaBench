; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_skb_from_cqe_mpwrq_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_skb_from_cqe_mpwrq_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlx5e_rq = type { i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5e_mpw_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5e_dma_info* }
%struct.mlx5e_dma_info = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MLX5E_RQ_FLAG_XDP_XMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @mlx5e_skb_from_cqe_mpwrq_linear(%struct.mlx5e_rq* %0, %struct.mlx5e_mpw_info* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mlx5e_rq*, align 8
  %8 = alloca %struct.mlx5e_mpw_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx5e_dma_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %7, align 8
  store %struct.mlx5e_mpw_info* %1, %struct.mlx5e_mpw_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %23, i64 %24
  store %struct.mlx5e_dma_info* %25, %struct.mlx5e_dma_info** %12, align 8
  %26 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %5
  %40 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %117

46:                                               ; preds = %5
  %47 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %12, align 8
  %48 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @page_address(i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %50, %51
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %16, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr i8, i8* %54, i64 %55
  store i8* %56, i8** %17, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = add i64 %57, %58
  %60 = call i64 @MLX5_SKB_FRAG_SZ(i64 %59)
  store i64 %60, i64* %18, align 8
  %61 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %62 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %12, align 8
  %65 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i32 @dma_sync_single_range_for_cpu(i32 %63, i32 %66, i64 %67, i64 %68, i32 %69)
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @prefetchw(i8* %71)
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 @prefetch(i8* %73)
  %75 = call i32 (...) @rcu_read_lock()
  %76 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %77 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %12, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 @mlx5e_xdp_handle(%struct.mlx5e_rq* %76, %struct.mlx5e_dma_info* %77, i8* %78, i64* %13, i64* %14, i32 0)
  store i32 %79, i32* %19, align 4
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %46
  %84 = load i32, i32* @MLX5E_RQ_FLAG_XDP_XMIT, align 4
  %85 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %86 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @__test_and_clear_bit(i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %8, align 8
  %93 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @__set_bit(i64 %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %83
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %117

97:                                               ; preds = %46
  %98 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call %struct.sk_buff* @mlx5e_build_linear_skb(%struct.mlx5e_rq* %98, i8* %99, i64 %100, i64 %101, i64 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %15, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %117

111:                                              ; preds = %97
  %112 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %12, align 8
  %113 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @page_ref_inc(i32 %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %116, %struct.sk_buff** %6, align 8
  br label %117

117:                                              ; preds = %111, %110, %96, %39
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %118
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @MLX5_SKB_FRAG_SZ(i64) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i64, i64, i32) #1

declare dso_local i32 @prefetchw(i8*) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @mlx5e_xdp_handle(%struct.mlx5e_rq*, %struct.mlx5e_dma_info*, i8*, i64*, i64*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @__test_and_clear_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local %struct.sk_buff* @mlx5e_build_linear_skb(%struct.mlx5e_rq*, i8*, i64, i64, i64) #1

declare dso_local i32 @page_ref_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
