; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_enqueue_unwind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_enqueue_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32 }
%struct.efx_tx_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, i32)* @efx_enqueue_unwind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_enqueue_unwind(%struct.efx_tx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_tx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %14, %2
  %9 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %10 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %16 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %20 = call %struct.efx_tx_buffer* @__efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue* %19)
  store %struct.efx_tx_buffer* %20, %struct.efx_tx_buffer** %5, align 8
  %21 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %22 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %5, align 8
  %23 = call i32 @efx_dequeue_buffer(%struct.efx_tx_queue* %21, %struct.efx_tx_buffer* %22, i32* %7, i32* %6)
  br label %8

24:                                               ; preds = %8
  ret void
}

declare dso_local %struct.efx_tx_buffer* @__efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue*) #1

declare dso_local i32 @efx_dequeue_buffer(%struct.efx_tx_queue*, %struct.efx_tx_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
