; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_enqueue_skb_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_enqueue_skb_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32 }
%struct.sk_buff = type { i32 }
%struct.efx_tx_buffer = type { i32, i32, %struct.sk_buff* }

@EFX_TX_CB_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_TX_BUF_SKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, %struct.sk_buff*)* @efx_enqueue_skb_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_enqueue_skb_copy(%struct.efx_tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_tx_buffer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EFX_TX_CB_SIZE, align 4
  %15 = icmp ugt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %16)
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %19 = call %struct.efx_tx_buffer* @efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue* %18)
  store %struct.efx_tx_buffer* %19, %struct.efx_tx_buffer** %7, align 8
  %20 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %21 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %22 = call i32* @efx_tx_get_copy_buffer(%struct.efx_tx_queue* %20, %struct.efx_tx_buffer* %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @skb_copy_bits(%struct.sk_buff* %33, i32 0, i32* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @EFX_WARN_ON_PARANOID(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %41 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %44 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %43, i32 0, i32 2
  store %struct.sk_buff* %42, %struct.sk_buff** %44, align 8
  %45 = load i32, i32* @EFX_TX_BUF_SKB, align 4
  %46 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %32, %29
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local %struct.efx_tx_buffer* @efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue*) #1

declare dso_local i32* @efx_tx_get_copy_buffer(%struct.efx_tx_queue*, %struct.efx_tx_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
