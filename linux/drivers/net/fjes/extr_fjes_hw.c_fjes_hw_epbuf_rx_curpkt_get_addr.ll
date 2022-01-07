; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_epbuf_rx_curpkt_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_epbuf_rx_curpkt_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epbuf_handler = type { i32*, %union.ep_buffer_info* }
%union.ep_buffer_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.esmem_frame = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fjes_hw_epbuf_rx_curpkt_get_addr(%struct.epbuf_handler* %0, i64* %1) #0 {
  %3 = alloca %struct.epbuf_handler*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %union.ep_buffer_info*, align 8
  %6 = alloca %struct.esmem_frame*, align 8
  %7 = alloca i8*, align 8
  store %struct.epbuf_handler* %0, %struct.epbuf_handler** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.epbuf_handler*, %struct.epbuf_handler** %3, align 8
  %9 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %8, i32 0, i32 1
  %10 = load %union.ep_buffer_info*, %union.ep_buffer_info** %9, align 8
  store %union.ep_buffer_info* %10, %union.ep_buffer_info** %5, align 8
  %11 = load %struct.epbuf_handler*, %struct.epbuf_handler** %3, align 8
  %12 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %union.ep_buffer_info*, %union.ep_buffer_info** %5, align 8
  %15 = bitcast %union.ep_buffer_info* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %union.ep_buffer_info*, %union.ep_buffer_info** %5, align 8
  %19 = bitcast %union.ep_buffer_info* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @EP_RING_INDEX(i32 %17, i32 %21)
  %23 = load %union.ep_buffer_info*, %union.ep_buffer_info** %5, align 8
  %24 = bitcast %union.ep_buffer_info* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %22, %26
  %28 = getelementptr inbounds i32, i32* %13, i64 %27
  %29 = bitcast i32* %28 to %struct.esmem_frame*
  store %struct.esmem_frame* %29, %struct.esmem_frame** %6, align 8
  %30 = load %struct.esmem_frame*, %struct.esmem_frame** %6, align 8
  %31 = getelementptr inbounds %struct.esmem_frame, %struct.esmem_frame* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.esmem_frame*, %struct.esmem_frame** %6, align 8
  %35 = getelementptr inbounds %struct.esmem_frame, %struct.esmem_frame* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  ret i8* %37
}

declare dso_local i64 @EP_RING_INDEX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
