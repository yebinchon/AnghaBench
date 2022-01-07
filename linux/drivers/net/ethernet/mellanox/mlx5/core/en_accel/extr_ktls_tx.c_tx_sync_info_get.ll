; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_tx_sync_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_tx_sync_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ktls_offload_context_tx = type { %struct.tls_offload_context_tx* }
%struct.tls_offload_context_tx = type { i32 }
%struct.tx_sync_info = type { i32, i32, i32*, i32 }
%struct.tls_record_info = type { i32* }

@MLX5E_KTLS_SYNC_DONE = common dso_local global i32 0, align 4
@MLX5E_KTLS_SYNC_FAIL = common dso_local global i32 0, align 4
@MLX5E_KTLS_SYNC_SKIP_NO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_ktls_offload_context_tx*, i64, %struct.tx_sync_info*)* @tx_sync_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_sync_info_get(%struct.mlx5e_ktls_offload_context_tx* %0, i64 %1, %struct.tx_sync_info* %2) #0 {
  %4 = alloca %struct.mlx5e_ktls_offload_context_tx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tx_sync_info*, align 8
  %7 = alloca %struct.tls_offload_context_tx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tls_record_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.mlx5e_ktls_offload_context_tx* %0, %struct.mlx5e_ktls_offload_context_tx** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.tx_sync_info* %2, %struct.tx_sync_info** %6, align 8
  %14 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %14, i32 0, i32 0
  %16 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %15, align 8
  store %struct.tls_offload_context_tx* %16, %struct.tls_offload_context_tx** %7, align 8
  %17 = load i32, i32* @MLX5E_KTLS_SYNC_DONE, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %7, align 8
  %19 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %18, i32 0, i32 0
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.tx_sync_info*, %struct.tx_sync_info** %6, align 8
  %25 = getelementptr inbounds %struct.tx_sync_info, %struct.tx_sync_info* %24, i32 0, i32 3
  %26 = call %struct.tls_record_info* @tls_get_record(%struct.tls_offload_context_tx* %22, i64 %23, i32* %25)
  store %struct.tls_record_info* %26, %struct.tls_record_info** %9, align 8
  %27 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %28 = icmp ne %struct.tls_record_info* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @MLX5E_KTLS_SYNC_FAIL, align 4
  store i32 %34, i32* %8, align 4
  br label %109

35:                                               ; preds = %3
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %38 = call i64 @tls_record_start_seq(%struct.tls_record_info* %37)
  %39 = icmp slt i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %45 = call i64 @tls_record_is_start_marker(%struct.tls_record_info* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @MLX5E_KTLS_SYNC_SKIP_NO_DATA, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @MLX5E_KTLS_SYNC_FAIL, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %8, align 4
  br label %109

53:                                               ; preds = %35
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %56 = call i64 @tls_record_start_seq(%struct.tls_record_info* %55)
  %57 = sub nsw i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.tx_sync_info*, %struct.tx_sync_info** %6, align 8
  %60 = getelementptr inbounds %struct.tx_sync_info, %struct.tx_sync_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tx_sync_info*, %struct.tx_sync_info** %6, align 8
  %62 = getelementptr inbounds %struct.tx_sync_info, %struct.tx_sync_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %67, %53
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load %struct.tls_record_info*, %struct.tls_record_info** %9, align 8
  %69 = getelementptr inbounds %struct.tls_record_info, %struct.tls_record_info* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %13, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @skb_frag_page(i32* %74)
  %76 = call i32 @get_page(i32 %75)
  %77 = load i32*, i32** %13, align 8
  %78 = call i64 @skb_frag_size(i32* %77)
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tx_sync_info*, %struct.tx_sync_info** %6, align 8
  %86 = getelementptr inbounds %struct.tx_sync_info, %struct.tx_sync_info* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %84, i32* %91, align 4
  br label %64

92:                                               ; preds = %64
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.tx_sync_info*, %struct.tx_sync_info** %6, align 8
  %97 = getelementptr inbounds %struct.tx_sync_info, %struct.tx_sync_info* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @skb_frag_size_add(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %95, %92
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.tx_sync_info*, %struct.tx_sync_info** %6, align 8
  %108 = getelementptr inbounds %struct.tx_sync_info, %struct.tx_sync_info* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %51, %33
  %110 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %7, align 8
  %111 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %110, i32 0, i32 0
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tls_record_info* @tls_get_record(%struct.tls_offload_context_tx*, i64, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tls_record_start_seq(%struct.tls_record_info*) #1

declare dso_local i64 @tls_record_is_start_marker(%struct.tls_record_info*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_size_add(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
