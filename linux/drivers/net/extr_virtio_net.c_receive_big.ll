; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_receive_big.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_receive_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.virtnet_info = type { i32 }
%struct.receive_queue = type { i32 }
%struct.virtnet_rq_stats = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.virtnet_info*, %struct.receive_queue*, i8*, i32, %struct.virtnet_rq_stats*)* @receive_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @receive_big(%struct.net_device* %0, %struct.virtnet_info* %1, %struct.receive_queue* %2, i8* %3, i32 %4, %struct.virtnet_rq_stats* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.virtnet_info*, align 8
  %10 = alloca %struct.receive_queue*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.virtnet_rq_stats*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.virtnet_info* %1, %struct.virtnet_info** %9, align 8
  store %struct.receive_queue* %2, %struct.receive_queue** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.virtnet_rq_stats* %5, %struct.virtnet_rq_stats** %13, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.page*
  store %struct.page* %17, %struct.page** %14, align 8
  %18 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %19 = load %struct.receive_queue*, %struct.receive_queue** %10, align 8
  %20 = load %struct.page*, %struct.page** %14, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call %struct.sk_buff* @page_to_skb(%struct.virtnet_info* %18, %struct.receive_queue* %19, %struct.page* %20, i32 0, i32 %21, i32 %22, i32 1)
  store %struct.sk_buff* %23, %struct.sk_buff** %15, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %26 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %24, %27
  %29 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %13, align 8
  %30 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %6
  br label %42

40:                                               ; preds = %6
  %41 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %41, %struct.sk_buff** %7, align 8
  br label %50

42:                                               ; preds = %39
  %43 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %13, align 8
  %44 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.receive_queue*, %struct.receive_queue** %10, align 8
  %48 = load %struct.page*, %struct.page** %14, align 8
  %49 = call i32 @give_pages(%struct.receive_queue* %47, %struct.page* %48)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %50

50:                                               ; preds = %42, %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %51
}

declare dso_local %struct.sk_buff* @page_to_skb(%struct.virtnet_info*, %struct.receive_queue*, %struct.page*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @give_pages(%struct.receive_queue*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
