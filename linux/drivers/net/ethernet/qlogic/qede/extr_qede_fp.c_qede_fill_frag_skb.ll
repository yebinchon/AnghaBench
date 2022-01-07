; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_fill_frag_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_fill_frag_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_rx_queue = type { i64, i64, i64, %struct.qede_agg_info*, %struct.sw_rx_data* }
%struct.qede_agg_info = type { i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.sw_rx_data = type { i32, i64 }

@NUM_RX_BDS_MAX = common dso_local global i64 0, align 8
@QEDE_AGG_STATE_START = common dso_local global i64 0, align 8
@QEDE_AGG_STATE_ERROR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_rx_queue*, i64, i32)* @qede_fill_frag_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_fill_frag_skb(%struct.qede_dev* %0, %struct.qede_rx_queue* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca %struct.qede_rx_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sw_rx_data*, align 8
  %11 = alloca %struct.qede_agg_info*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %6, align 8
  store %struct.qede_rx_queue* %1, %struct.qede_rx_queue** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %14 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %13, i32 0, i32 4
  %15 = load %struct.sw_rx_data*, %struct.sw_rx_data** %14, align 8
  %16 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %17 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %20 = and i64 %18, %19
  %21 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %15, i64 %20
  store %struct.sw_rx_data* %21, %struct.sw_rx_data** %10, align 8
  %22 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %23 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %22, i32 0, i32 3
  %24 = load %struct.qede_agg_info*, %struct.qede_agg_info** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %24, i64 %25
  store %struct.qede_agg_info* %26, %struct.qede_agg_info** %11, align 8
  %27 = load %struct.qede_agg_info*, %struct.qede_agg_info** %11, align 8
  %28 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %27, i32 0, i32 2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %12, align 8
  %30 = load %struct.qede_agg_info*, %struct.qede_agg_info** %11, align 8
  %31 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QEDE_AGG_STATE_START, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %89

39:                                               ; preds = %4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %41 = load %struct.qede_agg_info*, %struct.qede_agg_info** %11, align 8
  %42 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %46 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %49 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %52 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @skb_fill_page_desc(%struct.sk_buff* %40, i32 %43, i32 %47, i64 %54, i32 %55)
  %57 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %58 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %59 = call i32 @qede_realloc_rx_buffer(%struct.qede_rx_queue* %57, %struct.sw_rx_data* %58)
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %39
  %63 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %64 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @page_ref_inc(i32 %65)
  br label %89

67:                                               ; preds = %39
  %68 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %69 = call i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue* %68)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %76 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  store i32 0, i32* %5, align 4
  br label %97

89:                                               ; preds = %62, %38
  %90 = load i64, i64* @QEDE_AGG_STATE_ERROR, align 8
  %91 = load %struct.qede_agg_info*, %struct.qede_agg_info** %11, align 8
  %92 = getelementptr inbounds %struct.qede_agg_info, %struct.qede_agg_info* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %94 = call i32 @qede_recycle_rx_bd_ring(%struct.qede_rx_queue* %93, i32 1)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %89, %67
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i64, i32) #1

declare dso_local i32 @qede_realloc_rx_buffer(%struct.qede_rx_queue*, %struct.sw_rx_data*) #1

declare dso_local i32 @page_ref_inc(i32) #1

declare dso_local i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue*) #1

declare dso_local i32 @qede_recycle_rx_bd_ring(%struct.qede_rx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
