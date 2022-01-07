; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ioc3_private = type { i32, i64, i32, %struct.sk_buff**, %struct.ioc3_ethregs* }
%struct.sk_buff = type { i64 }
%struct.ioc3_ethregs = type { i32 }

@TX_RING_MASK = common dso_local global i32 0, align 4
@TX_RING_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ioc3_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ioc3_private*, align 8
  %4 = alloca %struct.ioc3_ethregs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ioc3_private* %12, %struct.ioc3_private** %3, align 8
  %13 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %14 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %13, i32 0, i32 4
  %15 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %14, align 8
  store %struct.ioc3_ethregs* %15, %struct.ioc3_ethregs** %4, align 8
  %16 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %17 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %20 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %19, i32 0, i32 0
  %21 = call i32 @readl(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = ashr i32 %22, 7
  %24 = load i32, i32* @TX_RING_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %27 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %33, %1
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  %36 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %37 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %36, i32 0, i32 3
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %48)
  %50 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %51 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %50, i32 0, i32 3
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %54
  store %struct.sk_buff* null, %struct.sk_buff** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @TX_RING_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %61 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %60, i32 0, i32 0
  %62 = call i32 @readl(i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %63, 7
  %65 = load i32, i32* @TX_RING_MASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %7, align 4
  br label %29

67:                                               ; preds = %29
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %68
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, %74
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %82 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = call i64 @netif_queue_stopped(%struct.net_device* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %67
  %89 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %90 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TX_RING_ENTRIES, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = call i32 @netif_wake_queue(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %88, %67
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %100 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %102 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %101, i32 0, i32 2
  %103 = call i32 @spin_unlock(i32* %102)
  ret void
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
