; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_unused.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_fifo = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_mbx_fifo*)* @fm10k_fifo_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_fifo_unused(%struct.fm10k_mbx_fifo* %0) #0 {
  %2 = alloca %struct.fm10k_mbx_fifo*, align 8
  store %struct.fm10k_mbx_fifo* %0, %struct.fm10k_mbx_fifo** %2, align 8
  %3 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %2, align 8
  %4 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %5, %8
  %10 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %2, align 8
  %11 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  ret i64 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
