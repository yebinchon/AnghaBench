; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_free_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_free_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@MT_RXQ_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*)* @mt76u_free_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76u_free_rx(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_dev*, align 8
  %3 = alloca %struct.mt76_queue*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %2, align 8
  %6 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %6, i32 0, i32 0
  %8 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %9 = load i64, i64* @MT_RXQ_MAIN, align 8
  %10 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %8, i64 %9
  store %struct.mt76_queue* %10, %struct.mt76_queue** %3, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %14 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %19 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mt76u_urb_free(i32 %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %32 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %52

37:                                               ; preds = %30
  %38 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %39 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.page* @virt_to_page(i32 %41)
  store %struct.page* %42, %struct.page** %4, align 8
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %45 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__page_frag_cache_drain(%struct.page* %43, i32 %47)
  %49 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %50 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %49, i32 0, i32 1
  %51 = call i32 @memset(%struct.TYPE_4__* %50, i32 0, i32 8)
  br label %52

52:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @mt76u_urb_free(i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @__page_frag_cache_drain(%struct.page*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
