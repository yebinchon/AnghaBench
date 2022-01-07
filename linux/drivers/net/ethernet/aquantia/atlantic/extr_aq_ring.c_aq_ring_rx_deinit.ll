; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_rx_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_rx_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i64, i64, i32, %struct.aq_ring_buff_s* }
%struct.aq_ring_buff_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_ring_rx_deinit(%struct.aq_ring_s* %0) #0 {
  %2 = alloca %struct.aq_ring_s*, align 8
  %3 = alloca %struct.aq_ring_buff_s*, align 8
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %2, align 8
  %4 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %5 = icmp ne %struct.aq_ring_s* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %40

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %31, %7
  %9 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %10 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %13 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %8
  %17 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %18 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %17, i32 0, i32 3
  %19 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %18, align 8
  %20 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %21 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %19, i64 %22
  store %struct.aq_ring_buff_s* %23, %struct.aq_ring_buff_s** %3, align 8
  %24 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %3, align 8
  %25 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %24, i32 0, i32 0
  %26 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @aq_nic_get_dev(i32 %28)
  %30 = call i32 @aq_free_rxpage(i32* %25, i32 %29)
  br label %31

31:                                               ; preds = %16
  %32 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %33 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %34 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @aq_ring_next_dx(%struct.aq_ring_s* %32, i64 %35)
  %37 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %38 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %8

39:                                               ; preds = %8
  br label %40

40:                                               ; preds = %39, %6
  ret void
}

declare dso_local i32 @aq_free_rxpage(i32*, i32) #1

declare dso_local i32 @aq_nic_get_dev(i32) #1

declare dso_local i64 @aq_ring_next_dx(%struct.aq_ring_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
