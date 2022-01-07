; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_rx.c_mlx5e_xsk_skb_from_cqe_mpwrq_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_rx.c_mlx5e_xsk_skb_from_cqe_mpwrq_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlx5e_rq = type { i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_mpw_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5e_dma_info* }
%struct.mlx5e_dma_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@MLX5E_RQ_FLAG_XDP_XMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @mlx5e_xsk_skb_from_cqe_mpwrq_linear(%struct.mlx5e_rq* %0, %struct.mlx5e_mpw_info* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mlx5e_rq*, align 8
  %8 = alloca %struct.mlx5e_mpw_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx5e_dma_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %7, align 8
  store %struct.mlx5e_mpw_info* %1, %struct.mlx5e_mpw_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %8, align 8
  %20 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %22, i64 %23
  store %struct.mlx5e_dma_info* %24, %struct.mlx5e_dma_info** %12, align 8
  %25 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %5
  %44 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %106

50:                                               ; preds = %5
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @WARN_ON_ONCE(i64 %51)
  %53 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %12, align 8
  %54 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr i8, i8* %57, i64 %58
  store i8* %59, i8** %16, align 8
  %60 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %61 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %63, %64
  store i64 %65, i64* %17, align 8
  %66 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %12, align 8
  %70 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %74 = call i32 @dma_sync_single_for_cpu(i32 %68, i32 %71, i64 %72, i32 %73)
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @prefetch(i8* %75)
  %77 = call i32 (...) @rcu_read_lock()
  %78 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %79 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %12, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @mlx5e_xdp_handle(%struct.mlx5e_rq* %78, %struct.mlx5e_dma_info* %79, i8* %80, i64* %13, i64* %14, i32 1)
  store i32 %81, i32* %18, align 4
  %82 = call i32 (...) @rcu_read_unlock()
  %83 = load i32, i32* %18, align 4
  %84 = call i64 @likely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %50
  %87 = load i32, i32* @MLX5E_RQ_FLAG_XDP_XMIT, align 4
  %88 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %89 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @__test_and_clear_bit(i32 %87, i32 %90)
  %92 = call i64 @likely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.mlx5e_mpw_info*, %struct.mlx5e_mpw_info** %8, align 8
  %97 = getelementptr inbounds %struct.mlx5e_mpw_info, %struct.mlx5e_mpw_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @__set_bit(i64 %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %86
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %106

101:                                              ; preds = %50
  %102 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i64, i64* %14, align 8
  %105 = call %struct.sk_buff* @mlx5e_xsk_construct_skb(%struct.mlx5e_rq* %102, i8* %103, i64 %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %6, align 8
  br label %106

106:                                              ; preds = %101, %100, %43
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %107
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @mlx5e_xdp_handle(%struct.mlx5e_rq*, %struct.mlx5e_dma_info*, i8*, i64*, i64*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__test_and_clear_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local %struct.sk_buff* @mlx5e_xsk_construct_skb(%struct.mlx5e_rq*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
