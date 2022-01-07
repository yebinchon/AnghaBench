; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_tx_get_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_tx_get_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, %struct.ef4_buffer* }
%struct.ef4_buffer = type { i64, i64 }
%struct.ef4_tx_buffer = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EF4_TX_CB_ORDER = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ef4_tx_queue*, %struct.ef4_tx_buffer*)* @ef4_tx_get_copy_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ef4_tx_get_copy_buffer(%struct.ef4_tx_queue* %0, %struct.ef4_tx_buffer* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ef4_tx_queue*, align 8
  %5 = alloca %struct.ef4_tx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ef4_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %4, align 8
  store %struct.ef4_tx_buffer* %1, %struct.ef4_tx_buffer** %5, align 8
  %9 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %10 = call i32 @ef4_tx_queue_get_insert_index(%struct.ef4_tx_queue* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %11, i32 0, i32 1
  %13 = load %struct.ef4_buffer*, %struct.ef4_buffer** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = load i32, i32* @EF4_TX_CB_ORDER, align 4
  %17 = sub i32 %15, %16
  %18 = lshr i32 %14, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %13, i64 %19
  store %struct.ef4_buffer* %20, %struct.ef4_buffer** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EF4_TX_CB_ORDER, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @NET_IP_ALIGN, align 4
  %25 = add i32 %23, %24
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ef4_buffer*, %struct.ef4_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %2
  %38 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %39 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ef4_buffer*, %struct.ef4_buffer** %7, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i64 @ef4_nic_alloc_buffer(i32 %40, %struct.ef4_buffer* %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32* null, i32** %3, align 8
  br label %65

47:                                               ; preds = %37, %2
  %48 = load %struct.ef4_buffer*, %struct.ef4_buffer** %7, align 8
  %49 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.ef4_buffer*, %struct.ef4_buffer** %7, align 8
  %59 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %47, %46
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32 @ef4_tx_queue_get_insert_index(%struct.ef4_tx_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ef4_nic_alloc_buffer(i32, %struct.ef4_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
