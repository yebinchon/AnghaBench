; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.x25_asy = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@X25_IFACE_DISCONNECT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @x25_asy_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_asy_disconnected(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.x25_asy*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.x25_asy* @netdev_priv(%struct.net_device* %8)
  store %struct.x25_asy* %9, %struct.x25_asy** %5, align 8
  %10 = call %struct.sk_buff* @dev_alloc_skb(i32 1)
  store %struct.sk_buff* %10, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = icmp eq %struct.sk_buff* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netdev_err(%struct.net_device* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i8* @skb_put(%struct.sk_buff* %17, i32 1)
  store i8* %18, i8** %7, align 8
  %19 = load i8, i8* @X25_IFACE_DISCONNECT, align 1
  %20 = load i8*, i8** %7, align 8
  store i8 %19, i8* %20, align 1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  %23 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @x25_type_trans(%struct.sk_buff* %21, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @netif_rx(%struct.sk_buff* %28)
  br label %30

30:                                               ; preds = %16, %13
  ret void
}

declare dso_local %struct.x25_asy* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
