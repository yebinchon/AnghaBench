; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_give_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_give_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_queue = type { %struct.page* }
%struct.page = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.receive_queue*, %struct.page*)* @give_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @give_pages(%struct.receive_queue* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.receive_queue*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.receive_queue* %0, %struct.receive_queue** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %6, %struct.page** %5, align 8
  br label %7

7:                                                ; preds = %13, %2
  %8 = load %struct.page*, %struct.page** %5, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.page*
  store %struct.page* %17, %struct.page** %5, align 8
  br label %7

18:                                               ; preds = %7
  %19 = load %struct.receive_queue*, %struct.receive_queue** %3, align 8
  %20 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %19, i32 0, i32 0
  %21 = load %struct.page*, %struct.page** %20, align 8
  %22 = ptrtoint %struct.page* %21 to i64
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = load %struct.receive_queue*, %struct.receive_queue** %3, align 8
  %27 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %26, i32 0, i32 0
  store %struct.page* %25, %struct.page** %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
