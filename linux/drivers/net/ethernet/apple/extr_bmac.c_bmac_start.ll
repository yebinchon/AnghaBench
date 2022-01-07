; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_bmac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_bmac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bmac_data = type { i32, i32, i32, i32, i64 }
%struct.sk_buff = type { i32 }

@N_TX_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bmac_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmac_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bmac_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.bmac_data* @netdev_priv(%struct.net_device* %7)
  store %struct.bmac_data* %8, %struct.bmac_data** %3, align 8
  %9 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %10 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %16 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %15, i32 0, i32 2
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %14, %43
  %20 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %21 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @N_TX_RING, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %31 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %47

35:                                               ; preds = %28
  %36 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %37 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.sk_buff* @skb_dequeue(i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = icmp eq %struct.sk_buff* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @bmac_transmit_packet(%struct.sk_buff* %44, %struct.net_device* %45)
  br label %19

47:                                               ; preds = %42, %34
  %48 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %49 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %48, i32 0, i32 2
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %47, %13
  ret void
}

declare dso_local %struct.bmac_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32) #1

declare dso_local i32 @bmac_transmit_packet(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
