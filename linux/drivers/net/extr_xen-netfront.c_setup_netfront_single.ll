; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_setup_netfront_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_setup_netfront_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32, i32, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@xennet_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_queue*)* @setup_netfront_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_netfront_single(%struct.netfront_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netfront_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.netfront_queue* %0, %struct.netfront_queue** %3, align 8
  %5 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %6 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %11 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %10, i32 0, i32 2
  %12 = call i32 @xenbus_alloc_evtchn(i32 %9, i64* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %18 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @xennet_interrupt, align 4
  %21 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %22 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %29 = call i32 @bind_evtchn_to_irqhandler(i64 %19, i32 %20, i32 0, i32 %27, %struct.netfront_queue* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %44

33:                                               ; preds = %16
  %34 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %35 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %38 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %41 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %43 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %58

44:                                               ; preds = %32
  %45 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %46 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %51 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @xenbus_free_evtchn(i32 %49, i64 %52)
  %54 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %55 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %44, %15
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %33
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @xenbus_alloc_evtchn(i32, i64*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i64, i32, i32, i32, %struct.netfront_queue*) #1

declare dso_local i32 @xenbus_free_evtchn(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
