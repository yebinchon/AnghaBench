; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_epbuf_rx_curpkt_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_epbuf_rx_curpkt_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epbuf_handler = type { %union.ep_buffer_info* }
%union.ep_buffer_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fjes_hw_epbuf_rx_curpkt_drop(%struct.epbuf_handler* %0) #0 {
  %2 = alloca %struct.epbuf_handler*, align 8
  %3 = alloca %union.ep_buffer_info*, align 8
  store %struct.epbuf_handler* %0, %struct.epbuf_handler** %2, align 8
  %4 = load %struct.epbuf_handler*, %struct.epbuf_handler** %2, align 8
  %5 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %4, i32 0, i32 0
  %6 = load %union.ep_buffer_info*, %union.ep_buffer_info** %5, align 8
  store %union.ep_buffer_info* %6, %union.ep_buffer_info** %3, align 8
  %7 = load %struct.epbuf_handler*, %struct.epbuf_handler** %2, align 8
  %8 = call i64 @fjes_hw_epbuf_rx_is_empty(%struct.epbuf_handler* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.epbuf_handler*, %struct.epbuf_handler** %2, align 8
  %13 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %12, i32 0, i32 0
  %14 = load %union.ep_buffer_info*, %union.ep_buffer_info** %13, align 8
  %15 = bitcast %union.ep_buffer_info* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %union.ep_buffer_info*, %union.ep_buffer_info** %3, align 8
  %19 = bitcast %union.ep_buffer_info* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @EP_RING_INDEX_INC(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @fjes_hw_epbuf_rx_is_empty(%struct.epbuf_handler*) #1

declare dso_local i32 @EP_RING_INDEX_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
