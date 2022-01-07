; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_netbuf_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_netbuf_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.ath10k_htt = type { %struct.ath10k*, %struct.TYPE_5__ }
%struct.ath10k = type { i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__, %struct.sk_buff**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"tried to pop sk_buff from an empty rx ring\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT_DUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"htt rx netbuf pop: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k_htt*)* @ath10k_htt_rx_netbuf_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_htt_rx_netbuf_pop(%struct.ath10k_htt* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %7 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %7, i32 0, i32 0
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %4, align 8
  %10 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = call i32 @ath10k_warn(%struct.ath10k* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %94

22:                                               ; preds = %1
  %23 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %24 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %29 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %31, i64 %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %39, i64 %41
  store %struct.sk_buff* null, %struct.sk_buff** %42, align 8
  %43 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ath10k_htt_reset_paddrs_ring(%struct.ath10k_htt* %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %49 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %56 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %60 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %65 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %64, i32 0, i32 0
  %66 = load %struct.ath10k*, %struct.ath10k** %65, align 8
  %67 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call %struct.TYPE_6__* @ATH10K_SKB_RXCB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i64 @skb_tailroom(%struct.sk_buff* %76)
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %80 = call i32 @dma_unmap_single(i32 %68, i32 %72, i64 %78, i32 %79)
  %81 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %82 = load i32, i32* @ATH10K_DBG_HTT_DUMP, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call i64 @skb_tailroom(%struct.sk_buff* %89)
  %91 = add nsw i64 %88, %90
  %92 = call i32 @ath10k_dbg_dump(%struct.ath10k* %81, i32 %82, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %85, i64 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %93, %struct.sk_buff** %2, align 8
  br label %94

94:                                               ; preds = %22, %19
  %95 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %95
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_htt_reset_paddrs_ring(%struct.ath10k_htt*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_6__* @ATH10K_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
