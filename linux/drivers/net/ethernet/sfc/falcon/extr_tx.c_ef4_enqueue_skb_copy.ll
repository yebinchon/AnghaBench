; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_enqueue_skb_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_enqueue_skb_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ef4_tx_buffer = type { i32, i32, %struct.sk_buff* }

@EF4_TX_CB_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EF4_TX_BUF_SKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_tx_queue*, %struct.sk_buff*)* @ef4_enqueue_skb_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_enqueue_skb_copy(%struct.ef4_tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ef4_tx_buffer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @EF4_TX_CB_SIZE, align 4
  %19 = icmp ugt i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @EF4_BUG_ON_PARANOID(i32 %20)
  %22 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %23 = call %struct.ef4_tx_buffer* @ef4_tx_queue_get_insert_buffer(%struct.ef4_tx_queue* %22)
  store %struct.ef4_tx_buffer* %23, %struct.ef4_tx_buffer** %8, align 8
  %24 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %25 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  %26 = call i32* @ef4_tx_get_copy_buffer(%struct.ef4_tx_queue* %24, %struct.ef4_tx_buffer* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %77

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @skb_copy_bits(%struct.sk_buff* %37, i32 0, i32* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @EF4_WARN_ON_PARANOID(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ult i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %36
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub i32 %54, %55
  %57 = call i32 @memset(i32* %53, i32 0, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  %60 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %36
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  %64 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %49
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  %68 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %67, i32 0, i32 2
  store %struct.sk_buff* %66, %struct.sk_buff** %68, align 8
  %69 = load i32, i32* @EF4_TX_BUF_SKB, align 4
  %70 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  %71 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %73 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %65, %33
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @EF4_BUG_ON_PARANOID(i32) #1

declare dso_local %struct.ef4_tx_buffer* @ef4_tx_queue_get_insert_buffer(%struct.ef4_tx_queue*) #1

declare dso_local i32* @ef4_tx_get_copy_buffer(%struct.ef4_tx_queue*, %struct.ef4_tx_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @EF4_WARN_ON_PARANOID(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
