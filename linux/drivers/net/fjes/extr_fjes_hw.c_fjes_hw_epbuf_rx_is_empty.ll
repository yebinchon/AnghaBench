; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_epbuf_rx_is_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_epbuf_rx_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epbuf_handler = type { %union.ep_buffer_info* }
%union.ep_buffer_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@FJES_RX_MTU_CHANGING_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_epbuf_rx_is_empty(%struct.epbuf_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.epbuf_handler*, align 8
  %4 = alloca %union.ep_buffer_info*, align 8
  store %struct.epbuf_handler* %0, %struct.epbuf_handler** %3, align 8
  %5 = load %struct.epbuf_handler*, %struct.epbuf_handler** %3, align 8
  %6 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %5, i32 0, i32 0
  %7 = load %union.ep_buffer_info*, %union.ep_buffer_info** %6, align 8
  store %union.ep_buffer_info* %7, %union.ep_buffer_info** %4, align 8
  %8 = load %union.ep_buffer_info*, %union.ep_buffer_info** %4, align 8
  %9 = bitcast %union.ep_buffer_info* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FJES_RX_MTU_CHANGING_DONE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load %union.ep_buffer_info*, %union.ep_buffer_info** %4, align 8
  %18 = bitcast %union.ep_buffer_info* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %37

23:                                               ; preds = %16
  %24 = load %union.ep_buffer_info*, %union.ep_buffer_info** %4, align 8
  %25 = bitcast %union.ep_buffer_info* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %union.ep_buffer_info*, %union.ep_buffer_info** %4, align 8
  %29 = bitcast %union.ep_buffer_info* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %union.ep_buffer_info*, %union.ep_buffer_info** %4, align 8
  %33 = bitcast %union.ep_buffer_info* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @EP_RING_EMPTY(i32 %27, i32 %31, i64 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %23, %22, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @EP_RING_EMPTY(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
