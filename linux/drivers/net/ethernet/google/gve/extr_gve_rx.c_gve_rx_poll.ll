; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_notify_block = type { %struct.TYPE_4__, %struct.gve_rx_ring* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gve_rx_ring = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gve_rx_poll(%struct.gve_notify_block* %0, i32 %1) #0 {
  %3 = alloca %struct.gve_notify_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gve_notify_block* %0, %struct.gve_notify_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gve_notify_block*, %struct.gve_notify_block** %3, align 8
  %9 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %8, i32 0, i32 1
  %10 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %9, align 8
  store %struct.gve_rx_ring* %10, %struct.gve_rx_ring** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.gve_notify_block*, %struct.gve_notify_block** %3, align 8
  %12 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @INT_MAX, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @gve_clean_rx_done(%struct.gve_rx_ring* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %33 = call i32 @gve_rx_work_pending(%struct.gve_rx_ring* %32)
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @gve_clean_rx_done(%struct.gve_rx_ring*, i32, i32) #1

declare dso_local i32 @gve_rx_work_pending(%struct.gve_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
