; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_net_driver.h_ef4_tx_queue_get_insert_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_net_driver.h_ef4_tx_queue_get_insert_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_buffer = type { i32, i32, i32 }
%struct.ef4_tx_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ef4_tx_buffer* (%struct.ef4_tx_queue*)* @ef4_tx_queue_get_insert_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ef4_tx_buffer* @ef4_tx_queue_get_insert_buffer(%struct.ef4_tx_queue* %0) #0 {
  %2 = alloca %struct.ef4_tx_queue*, align 8
  %3 = alloca %struct.ef4_tx_buffer*, align 8
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %2, align 8
  %4 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %5 = call %struct.ef4_tx_buffer* @__ef4_tx_queue_get_insert_buffer(%struct.ef4_tx_queue* %4)
  store %struct.ef4_tx_buffer* %5, %struct.ef4_tx_buffer** %3, align 8
  %6 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @EF4_BUG_ON_PARANOID(i32 %8)
  %10 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @EF4_BUG_ON_PARANOID(i32 %12)
  %14 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @EF4_BUG_ON_PARANOID(i32 %16)
  %18 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  ret %struct.ef4_tx_buffer* %18
}

declare dso_local %struct.ef4_tx_buffer* @__ef4_tx_queue_get_insert_buffer(%struct.ef4_tx_queue*) #1

declare dso_local i32 @EF4_BUG_ON_PARANOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
