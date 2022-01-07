; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_rx_batched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_rx_batched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i64 }
%struct.tun_file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*, %struct.tun_file*, %struct.sk_buff*, i32)* @tun_rx_batched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_rx_batched(%struct.tun_struct* %0, %struct.tun_file* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.tun_struct*, align 8
  %6 = alloca %struct.tun_file*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca %struct.sk_buff_head, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %5, align 8
  store %struct.tun_file* %1, %struct.tun_file** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %15 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.sk_buff_head* %16, %struct.sk_buff_head** %9, align 8
  %17 = load %struct.tun_struct*, %struct.tun_struct** %5, align 8
  %18 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %27 = call i64 @skb_queue_empty(%struct.sk_buff_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25, %4
  %30 = call i32 (...) @local_bh_disable()
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %33 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @skb_record_rx_queue(%struct.sk_buff* %31, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i32 @netif_receive_skb(%struct.sk_buff* %36)
  %38 = call i32 (...) @local_bh_enable()
  br label %86

39:                                               ; preds = %25, %22
  %40 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %41 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %47 = call i64 @skb_queue_len(%struct.sk_buff_head* %46)
  %48 = load i64, i64* %11, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %39
  %51 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %10)
  %52 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %53 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %52, %struct.sk_buff_head* %10)
  store i32 1, i32* %12, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %55, %struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = call i32 (...) @local_bh_disable()
  br label %66

66:                                               ; preds = %69, %64
  %67 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %10)
  store %struct.sk_buff* %67, %struct.sk_buff** %13, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %71 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %72 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @skb_record_rx_queue(%struct.sk_buff* %70, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %76 = call i32 @netif_receive_skb(%struct.sk_buff* %75)
  br label %66

77:                                               ; preds = %66
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %80 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @skb_record_rx_queue(%struct.sk_buff* %78, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = call i32 @netif_receive_skb(%struct.sk_buff* %83)
  %85 = call i32 (...) @local_bh_enable()
  br label %86

86:                                               ; preds = %29, %77, %58
  ret void
}

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
