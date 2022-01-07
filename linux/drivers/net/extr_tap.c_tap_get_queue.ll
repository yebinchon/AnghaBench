; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_queue = type { i32 }
%struct.tap_dev = type { i32*, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tap_queue* (%struct.tap_dev*, %struct.sk_buff*)* @tap_get_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tap_queue* @tap_get_queue(%struct.tap_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.tap_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tap_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tap_dev* %0, %struct.tap_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.tap_queue* null, %struct.tap_queue** %5, align 8
  %8 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  %9 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @READ_ONCE(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %71

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %64

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_get_hash(%struct.sk_buff* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  %26 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = srem i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.tap_queue* @rcu_dereference(i32 %33)
  store %struct.tap_queue* %34, %struct.tap_queue** %5, align 8
  br label %71

35:                                               ; preds = %19
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @skb_rx_queue_recorded(%struct.sk_buff* %36)
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @skb_get_rx_queue(%struct.sk_buff* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %50, %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %43

54:                                               ; preds = %43
  %55 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  %56 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.tap_queue* @rcu_dereference(i32 %61)
  store %struct.tap_queue* %62, %struct.tap_queue** %5, align 8
  br label %71

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %18
  %65 = load %struct.tap_dev*, %struct.tap_dev** %3, align 8
  %66 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.tap_queue* @rcu_dereference(i32 %69)
  store %struct.tap_queue* %70, %struct.tap_queue** %5, align 8
  br label %71

71:                                               ; preds = %64, %54, %24, %14
  %72 = load %struct.tap_queue*, %struct.tap_queue** %5, align 8
  ret %struct.tap_queue* %72
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @skb_get_hash(%struct.sk_buff*) #1

declare dso_local %struct.tap_queue* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_rx_queue_recorded(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_rx_queue(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
