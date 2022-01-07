; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rxq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rxq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_queue_info }
%struct.be_queue_info = type { i64, i64, i32 }
%struct.be_rx_page_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*)* @be_rxq_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rxq_clean(%struct.be_rx_obj* %0) #0 {
  %2 = alloca %struct.be_rx_obj*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca %struct.be_rx_page_info*, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %2, align 8
  %5 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %6 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %5, i32 0, i32 0
  store %struct.be_queue_info* %6, %struct.be_queue_info** %3, align 8
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %9 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %8, i32 0, i32 2
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %14 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %13)
  store %struct.be_rx_page_info* %14, %struct.be_rx_page_info** %4, align 8
  %15 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %4, align 8
  %16 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @put_page(i32 %17)
  %19 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %4, align 8
  %20 = call i32 @memset(%struct.be_rx_page_info* %19, i32 0, i32 4)
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %23 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %22, i32 0, i32 2
  %24 = call i64 @atomic_read(i32* %23)
  %25 = call i32 @BUG_ON(i64 %24)
  %26 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %27 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %29 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @memset(%struct.be_rx_page_info*, i32, i32) #1

declare dso_local i32 @BUG_ON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
