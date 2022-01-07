; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_free_old_xmit_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_free_old_xmit_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_queue = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.xdp_frame = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"Sent skb %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.send_queue*, i32)* @free_old_xmit_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_old_xmit_skbs(%struct.send_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.send_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.xdp_frame*, align 8
  store %struct.send_queue* %0, %struct.send_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %52, %2
  %12 = load %struct.send_queue*, %struct.send_queue** %3, align 8
  %13 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @virtqueue_get_buf(i32 %14, i32* %5)
  store i8* %15, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @is_xdp_frame(i8* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to %struct.sk_buff*
  store %struct.sk_buff* %27, %struct.sk_buff** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @napi_consume_skb(%struct.sk_buff* %37, i32 %38)
  br label %52

40:                                               ; preds = %17
  %41 = load i8*, i8** %8, align 8
  %42 = call %struct.xdp_frame* @ptr_to_xdp(i8* %41)
  store %struct.xdp_frame* %42, %struct.xdp_frame** %10, align 8
  %43 = load %struct.xdp_frame*, %struct.xdp_frame** %10, align 8
  %44 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load %struct.xdp_frame*, %struct.xdp_frame** %10, align 8
  %51 = call i32 @xdp_return_frame(%struct.xdp_frame* %50)
  br label %52

52:                                               ; preds = %40, %25
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %11

55:                                               ; preds = %11
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %80

59:                                               ; preds = %55
  %60 = load %struct.send_queue*, %struct.send_queue** %3, align 8
  %61 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = call i32 @u64_stats_update_begin(i32* %62)
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.send_queue*, %struct.send_queue** %3, align 8
  %66 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.send_queue*, %struct.send_queue** %3, align 8
  %72 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, %70
  store i32 %75, i32* %73, align 4
  %76 = load %struct.send_queue*, %struct.send_queue** %3, align 8
  %77 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = call i32 @u64_stats_update_end(i32* %78)
  br label %80

80:                                               ; preds = %59, %58
  ret void
}

declare dso_local i8* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @is_xdp_frame(i8*) #1

declare dso_local i32 @pr_debug(i8*, %struct.sk_buff*) #1

declare dso_local i32 @napi_consume_skb(%struct.sk_buff*, i32) #1

declare dso_local %struct.xdp_frame* @ptr_to_xdp(i8*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
