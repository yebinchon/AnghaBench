; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_channel = type { i64, i32, %struct.sk_buff*, i64, i64*, i64, i32 }
%struct.sk_buff = type { i64, i64 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@RT_LOCK = common dso_local global i32 0, align 4
@RT_UNLOCK = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_queue_xmit(%struct.z8530_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z8530_channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.z8530_channel* %0, %struct.z8530_channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %8 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netif_stop_queue(i32 %9)
  %11 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %12 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %11, i32 0, i32 2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %16, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %19 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i64 @virt_to_bus(i64 %29)
  %31 = icmp uge i64 %30, 16777216
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i64 @spans_boundary(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32, %22
  %37 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %38 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %41 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %46 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %48 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %53 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %51, i64 %54, i64 %57)
  br label %65

59:                                               ; preds = %32, %17
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %64 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %36
  %66 = load i32, i32* @RT_LOCK, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %69 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %68, i32 0, i32 2
  store %struct.sk_buff* %67, %struct.sk_buff** %69, align 8
  %70 = load i32, i32* @RT_UNLOCK, align 4
  %71 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %72 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_lock_irqsave(i32 %73, i64 %74)
  %76 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %77 = call i32 @z8530_tx_begin(%struct.z8530_channel* %76)
  %78 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %79 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32 %80, i64 %81)
  %83 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %65, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i64 @virt_to_bus(i64) #1

declare dso_local i64 @spans_boundary(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @z8530_tx_begin(%struct.z8530_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
