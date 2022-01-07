; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tpa_rx_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tpa_rx_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qede_dev = type { i32 }
%struct.qede_rx_queue = type { i64 }
%struct.sw_rx_data = type { i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate RX buffer for tpa start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.qede_dev*, %struct.qede_rx_queue*, %struct.sw_rx_data*, i32, i32, i32)* @qede_tpa_rx_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qede_tpa_rx_build_skb(%struct.qede_dev* %0, %struct.qede_rx_queue* %1, %struct.sw_rx_data* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.qede_dev*, align 8
  %9 = alloca %struct.qede_rx_queue*, align 8
  %10 = alloca %struct.sw_rx_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %8, align 8
  store %struct.qede_rx_queue* %1, %struct.qede_rx_queue** %9, align 8
  store %struct.sw_rx_data* %2, %struct.sw_rx_data** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %9, align 8
  %16 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call %struct.sk_buff* @qede_build_skb(%struct.qede_rx_queue* %15, %struct.sw_rx_data* %16, i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %14, align 8
  %20 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %9, align 8
  %21 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %24 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %28 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %6
  %33 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %9, align 8
  %34 = call i32 @qede_alloc_rx_buffer(%struct.qede_rx_queue* %33, i32 1)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %39 = call i32 @DP_NOTICE(%struct.qede_dev* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %9, align 8
  %41 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %44 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %48 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @page_ref_inc(i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %52 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %51)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %66

53:                                               ; preds = %32
  br label %62

54:                                               ; preds = %6
  %55 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %56 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @page_ref_inc(i32 %57)
  %59 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %9, align 8
  %60 = load %struct.sw_rx_data*, %struct.sw_rx_data** %10, align 8
  %61 = call i32 @qede_reuse_page(%struct.qede_rx_queue* %59, %struct.sw_rx_data* %60)
  br label %62

62:                                               ; preds = %54, %53
  %63 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %9, align 8
  %64 = call i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %7, align 8
  br label %66

66:                                               ; preds = %62, %37
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %67
}

declare dso_local %struct.sk_buff* @qede_build_skb(%struct.qede_rx_queue*, %struct.sw_rx_data*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qede_alloc_rx_buffer(%struct.qede_rx_queue*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @page_ref_inc(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @qede_reuse_page(%struct.qede_rx_queue*, %struct.sw_rx_data*) #1

declare dso_local i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
