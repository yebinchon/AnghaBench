; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_free_rx_buffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_free_rx_buffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, %struct.sk_buff**, %struct.TYPE_2__* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @de4x5_free_rx_buffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_free_rx_buffs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %5)
  store %struct.de4x5_private* %6, %struct.de4x5_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %46, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %10 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %7
  %14 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %15 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %14, i32 0, i32 1
  %16 = load %struct.sk_buff**, %struct.sk_buff*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %16, i64 %18
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = ptrtoint %struct.sk_buff* %20 to i32
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 1
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %26, i64 %28
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = call i32 @dev_kfree_skb(%struct.sk_buff* %30)
  br label %32

32:                                               ; preds = %23, %13
  %33 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %34 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %41 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %40, i32 0, i32 1
  %42 = load %struct.sk_buff**, %struct.sk_buff*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %42, i64 %44
  store %struct.sk_buff* inttoptr (i64 1 to %struct.sk_buff*), %struct.sk_buff** %45, align 8
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %7

49:                                               ; preds = %7
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
