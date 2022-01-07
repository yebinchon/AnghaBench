; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_try_fill_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_try_fill_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i64, i64 }
%struct.receive_queue = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, %struct.receive_queue*, i32)* @try_fill_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_fill_recv(%struct.virtnet_info* %0, %struct.receive_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca %struct.receive_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %4, align 8
  store %struct.receive_queue* %1, %struct.receive_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %11 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %16 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @add_recvbuf_mergeable(%struct.virtnet_info* %15, %struct.receive_queue* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %35

19:                                               ; preds = %9
  %20 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %21 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %26 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @add_recvbuf_big(%struct.virtnet_info* %25, %struct.receive_queue* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %31 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @add_recvbuf_small(%struct.virtnet_info* %30, %struct.receive_queue* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %52

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %47 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %9, label %52

52:                                               ; preds = %45, %43
  %53 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %54 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i64 @virtqueue_kick_prepare(%struct.TYPE_5__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %60 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i64 @virtqueue_notify(%struct.TYPE_5__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %66 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @u64_stats_update_begin(i32* %67)
  %69 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %70 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.receive_queue*, %struct.receive_queue** %5, align 8
  %75 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @u64_stats_update_end(i32* %76)
  br label %78

78:                                               ; preds = %64, %58, %52
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  ret i32 %82
}

declare dso_local i32 @add_recvbuf_mergeable(%struct.virtnet_info*, %struct.receive_queue*, i32) #1

declare dso_local i32 @add_recvbuf_big(%struct.virtnet_info*, %struct.receive_queue*, i32) #1

declare dso_local i32 @add_recvbuf_small(%struct.virtnet_info*, %struct.receive_queue*, i32) #1

declare dso_local i64 @virtqueue_kick_prepare(%struct.TYPE_5__*) #1

declare dso_local i64 @virtqueue_notify(%struct.TYPE_5__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
