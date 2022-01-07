; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qede_dev = type { i64, i32 }
%struct.qede_rx_queue = type { i32 }
%struct.sw_rx_data = type { i32, i32 }

@QEDE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.qede_dev*, %struct.qede_rx_queue*, %struct.sw_rx_data*, i64, i64)* @qede_rx_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qede_rx_build_skb(%struct.qede_dev* %0, %struct.qede_rx_queue* %1, %struct.sw_rx_data* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qede_dev*, align 8
  %8 = alloca %struct.qede_rx_queue*, align 8
  %9 = alloca %struct.sw_rx_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %7, align 8
  store %struct.qede_rx_queue* %1, %struct.qede_rx_queue** %8, align 8
  store %struct.sw_rx_data* %2, %struct.sw_rx_data** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %11, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %18 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %5
  %22 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %23 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %11, align 8
  %27 = add nsw i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %30 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @QEDE_RX_HDR_SIZE, align 4
  %33 = call %struct.sk_buff* @netdev_alloc_skb(i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %12, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %81

41:                                               ; preds = %21
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @skb_reserve(%struct.sk_buff* %42, i64 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %47 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @page_address(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @skb_put_data(%struct.sk_buff* %45, i64 %52, i64 %53)
  %55 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %56 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %57 = call i32 @qede_reuse_page(%struct.qede_rx_queue* %55, %struct.sw_rx_data* %56)
  br label %77

58:                                               ; preds = %5
  %59 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %60 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call %struct.sk_buff* @qede_build_skb(%struct.qede_rx_queue* %59, %struct.sw_rx_data* %60, i64 %61, i64 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %12, align 8
  %64 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %65 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %66 = call i32 @qede_realloc_rx_buffer(%struct.qede_rx_queue* %64, %struct.sw_rx_data* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %71 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @page_ref_inc(i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %74)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %81

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76, %41
  %78 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %8, align 8
  %79 = call i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %6, align 8
  br label %81

81:                                               ; preds = %77, %69, %40
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %82
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @qede_reuse_page(%struct.qede_rx_queue*, %struct.sw_rx_data*) #1

declare dso_local %struct.sk_buff* @qede_build_skb(%struct.qede_rx_queue*, %struct.sw_rx_data*, i64, i64) #1

declare dso_local i32 @qede_realloc_rx_buffer(%struct.qede_rx_queue*, %struct.sw_rx_data*) #1

declare dso_local i32 @page_ref_inc(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
