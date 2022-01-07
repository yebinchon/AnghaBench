; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_alloc_rx_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_alloc_rx_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i32, i16, i64, %struct.sk_buff**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IEEE802_3_SZ = common dso_local global i32 0, align 4
@DE4X5_ALIGN = common dso_local global i32 0, align 4
@OPEN = common dso_local global i64 0, align 8
@RX_BUFF_SZ = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, i32, i32)* @de4x5_alloc_rx_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @de4x5_alloc_rx_buff(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.de4x5_private*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %13)
  store %struct.de4x5_private* %14, %struct.de4x5_private** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load i32, i32* @IEEE802_3_SZ, align 4
  %17 = load i32, i32* @DE4X5_ALIGN, align 4
  %18 = add nsw i32 %16, %17
  %19 = add nsw i32 %18, 2
  %20 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %15, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @virt_to_bus(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @DE4X5_ALIGN, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @DE4X5_ALIGN, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %12, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @skb_reserve(%struct.sk_buff* %37, i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load %struct.de4x5_private*, %struct.de4x5_private** %8, align 8
  %45 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  %51 = load %struct.de4x5_private*, %struct.de4x5_private** %8, align 8
  %52 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %51, i32 0, i32 4
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %53, i64 %55
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.de4x5_private*, %struct.de4x5_private** %8, align 8
  %60 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %59, i32 0, i32 4
  %61 = load %struct.sk_buff**, %struct.sk_buff*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %61, i64 %63
  store %struct.sk_buff* %58, %struct.sk_buff** %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = ptrtoint %struct.sk_buff* %65 to i32
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %24
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @skb_put(%struct.sk_buff* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %24
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %4, align 8
  br label %74

74:                                               ; preds = %72, %23
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %75
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
