; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_get_free_tx_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_get_free_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_tx_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_tx_queue*)* @slic_get_free_tx_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_get_free_tx_descs(%struct.slic_tx_queue* %0) #0 {
  %2 = alloca %struct.slic_tx_queue*, align 8
  store %struct.slic_tx_queue* %0, %struct.slic_tx_queue** %2, align 8
  %3 = call i32 (...) @smp_mb()
  %4 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @slic_get_free_queue_descs(i32 %6, i32 %9, i32 %12)
  ret i32 %13
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @slic_get_free_queue_descs(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
