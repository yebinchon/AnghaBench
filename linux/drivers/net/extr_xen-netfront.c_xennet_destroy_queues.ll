; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_destroy_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_destroy_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.netfront_queue*, %struct.TYPE_2__* }
%struct.netfront_queue = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_info*)* @xennet_destroy_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_destroy_queues(%struct.netfront_info* %0) #0 {
  %2 = alloca %struct.netfront_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfront_queue*, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %8 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %6, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %5
  %14 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %15 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %14, i32 0, i32 0
  %16 = load %struct.netfront_queue*, %struct.netfront_queue** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %16, i64 %18
  store %struct.netfront_queue* %19, %struct.netfront_queue** %4, align 8
  %20 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %21 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i64 @netif_running(%struct.TYPE_2__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %27 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %26, i32 0, i32 0
  %28 = call i32 @napi_disable(i32* %27)
  br label %29

29:                                               ; preds = %25, %13
  %30 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %31 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %30, i32 0, i32 0
  %32 = call i32 @netif_napi_del(i32* %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  %37 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %38 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %37, i32 0, i32 0
  %39 = load %struct.netfront_queue*, %struct.netfront_queue** %38, align 8
  %40 = call i32 @kfree(%struct.netfront_queue* %39)
  %41 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %42 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %41, i32 0, i32 0
  store %struct.netfront_queue* null, %struct.netfront_queue** %42, align 8
  ret void
}

declare dso_local i64 @netif_running(%struct.TYPE_2__*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @kfree(%struct.netfront_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
