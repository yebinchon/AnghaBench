; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_tx_map_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_tx_map_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_buffer = type { i32, i32, i32 }
%struct.ef4_tx_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ef4_nic_type* }
%struct.ef4_nic_type = type { i32 (%struct.ef4_tx_queue*, i32, i64)* }

@EF4_TX_BUF_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ef4_tx_buffer* (%struct.ef4_tx_queue*, i32, i64)* @ef4_tx_map_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ef4_tx_buffer* @ef4_tx_map_chunk(%struct.ef4_tx_queue* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ef4_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ef4_nic_type*, align 8
  %8 = alloca %struct.ef4_tx_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %11 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ef4_nic_type*, %struct.ef4_nic_type** %13, align 8
  store %struct.ef4_nic_type* %14, %struct.ef4_nic_type** %7, align 8
  br label %15

15:                                               ; preds = %45, %3
  %16 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %17 = call %struct.ef4_tx_buffer* @ef4_tx_queue_get_insert_buffer(%struct.ef4_tx_queue* %16)
  store %struct.ef4_tx_buffer* %17, %struct.ef4_tx_buffer** %8, align 8
  %18 = load %struct.ef4_nic_type*, %struct.ef4_nic_type** %7, align 8
  %19 = getelementptr inbounds %struct.ef4_nic_type, %struct.ef4_nic_type* %18, i32 0, i32 0
  %20 = load i32 (%struct.ef4_tx_queue*, i32, i64)*, i32 (%struct.ef4_tx_queue*, i32, i64)** %19, align 8
  %21 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 %20(%struct.ef4_tx_queue* %21, i32 %22, i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  %27 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  %30 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @EF4_TX_BUF_CONT, align 4
  %32 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  %33 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %15
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %15, label %48

48:                                               ; preds = %45
  %49 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %8, align 8
  ret %struct.ef4_tx_buffer* %49
}

declare dso_local %struct.ef4_tx_buffer* @ef4_tx_queue_get_insert_buffer(%struct.ef4_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
