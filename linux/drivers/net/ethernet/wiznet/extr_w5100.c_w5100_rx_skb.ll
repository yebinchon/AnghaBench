; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.w5100_priv = type { i32 }

@S0_CR_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*)* @w5100_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @w5100_rx_skb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.w5100_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.w5100_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.w5100_priv* %11, %struct.w5100_priv** %4, align 8
  %12 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %13 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %14 = call i32 @W5100_S0_RX_RSR(%struct.w5100_priv* %13)
  %15 = call i64 @w5100_read16(%struct.w5100_priv* %12, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %96

19:                                               ; preds = %1
  %20 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %21 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %22 = call i32 @W5100_S0_RX_RD(%struct.w5100_priv* %21)
  %23 = call i64 @w5100_read16(%struct.w5100_priv* %20, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %27 = call i32 @w5100_readbuf(%struct.w5100_priv* %24, i64 %25, i32* %26, i64 2)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %29 = call i64 @get_unaligned_be16(i32* %28)
  %30 = sub nsw i64 %29, 2
  store i64 %30, i64* %6, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %31, i64 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %19
  %41 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %42 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %43 = call i32 @W5100_S0_RX_RD(%struct.w5100_priv* %42)
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @w5100_write16(%struct.w5100_priv* %41, i32 %43, i64 %46)
  %48 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %49 = load i32, i32* @S0_CR_RECV, align 4
  %50 = call i32 @w5100_command(%struct.w5100_priv* %48, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %96

56:                                               ; preds = %19
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @skb_put(%struct.sk_buff* %57, i64 %58)
  %60 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 2
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @w5100_readbuf(%struct.w5100_priv* %60, i64 %62, i32* %65, i64 %66)
  %68 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %69 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %70 = call i32 @W5100_S0_RX_RD(%struct.w5100_priv* %69)
  %71 = load i64, i64* %7, align 8
  %72 = add nsw i64 %71, 2
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @w5100_write16(%struct.w5100_priv* %68, i32 %70, i64 %74)
  %76 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %77 = load i32, i32* @S0_CR_RECV, align 4
  %78 = call i32 @w5100_command(%struct.w5100_priv* %76, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @eth_type_trans(%struct.sk_buff* %79, %struct.net_device* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %89
  store i64 %94, i64* %92, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %95, %struct.sk_buff** %2, align 8
  br label %96

96:                                               ; preds = %56, %40, %18
  %97 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %97
}

declare dso_local %struct.w5100_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @w5100_read16(%struct.w5100_priv*, i32) #1

declare dso_local i32 @W5100_S0_RX_RSR(%struct.w5100_priv*) #1

declare dso_local i32 @W5100_S0_RX_RD(%struct.w5100_priv*) #1

declare dso_local i32 @w5100_readbuf(%struct.w5100_priv*, i64, i32*, i64) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @w5100_write16(%struct.w5100_priv*, i32, i64) #1

declare dso_local i32 @w5100_command(%struct.w5100_priv*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
