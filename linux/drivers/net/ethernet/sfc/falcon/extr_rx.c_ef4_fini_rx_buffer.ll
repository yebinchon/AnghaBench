; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_fini_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_fini_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_rx_queue = type { i32 }
%struct.ef4_rx_buffer = type { i32, i32* }

@EF4_RX_BUF_LAST_IN_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_rx_queue*, %struct.ef4_rx_buffer*)* @ef4_fini_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_fini_rx_buffer(%struct.ef4_rx_queue* %0, %struct.ef4_rx_buffer* %1) #0 {
  %3 = alloca %struct.ef4_rx_queue*, align 8
  %4 = alloca %struct.ef4_rx_buffer*, align 8
  store %struct.ef4_rx_queue* %0, %struct.ef4_rx_queue** %3, align 8
  store %struct.ef4_rx_buffer* %1, %struct.ef4_rx_buffer** %4, align 8
  %5 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @put_page(i32* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EF4_RX_BUF_LAST_IN_PAGE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %23 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %4, align 8
  %26 = call i32 @ef4_unmap_rx_buffer(i32 %24, %struct.ef4_rx_buffer* %25)
  %27 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %28 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %4, align 8
  %29 = call i32 @ef4_free_rx_buffers(%struct.ef4_rx_queue* %27, %struct.ef4_rx_buffer* %28, i32 1)
  br label %30

30:                                               ; preds = %21, %14
  %31 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @ef4_unmap_rx_buffer(i32, %struct.ef4_rx_buffer*) #1

declare dso_local i32 @ef4_free_rx_buffers(%struct.ef4_rx_queue*, %struct.ef4_rx_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
