; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_tx_get_copy_buffer_limited.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_tx_get_copy_buffer_limited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32 }
%struct.ef4_tx_buffer = type { i32 }

@EF4_TX_CB_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ef4_tx_get_copy_buffer_limited(%struct.ef4_tx_queue* %0, %struct.ef4_tx_buffer* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ef4_tx_queue*, align 8
  %6 = alloca %struct.ef4_tx_buffer*, align 8
  %7 = alloca i64, align 8
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %5, align 8
  store %struct.ef4_tx_buffer* %1, %struct.ef4_tx_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EF4_TX_CB_SIZE, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %16

12:                                               ; preds = %3
  %13 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %14 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %15 = call i32* @ef4_tx_get_copy_buffer(%struct.ef4_tx_queue* %13, %struct.ef4_tx_buffer* %14)
  store i32* %15, i32** %4, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32*, i32** %4, align 8
  ret i32* %17
}

declare dso_local i32* @ef4_tx_get_copy_buffer(%struct.ef4_tx_queue*, %struct.ef4_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
