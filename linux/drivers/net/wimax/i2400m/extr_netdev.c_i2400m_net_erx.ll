; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_erx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_erx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64, i32, %struct.net_device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"(i2400m %p skb %p [%u] cs %d)\0A\00", align 1
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ERX: BUG? CS type %u unsupported\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"ERX: receiving %d bytes to the network stack\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(i2400m %p skb %p [%u] cs %d) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_net_erx(%struct.i2400m* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %10 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %14 = call %struct.device* @i2400m_dev(%struct.i2400m* %13)
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @d_fnstart(i32 2, %struct.device* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %16, %struct.sk_buff* %17, i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %64 [
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %3, %3
  %25 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %26 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ETH_HLEN, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i32, i32* @ETH_P_IP, align 4
  %35 = call i32 @cpu_to_be16(i32 %34)
  %36 = call i32 @i2400m_rx_fake_eth_header(%struct.net_device* %28, i64 %33, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i64, i64* @ETH_HLEN, align 8
  %39 = sub nsw i64 0, %38
  %40 = call i32 @skb_set_mac_header(%struct.sk_buff* %37, i64 %39)
  %41 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %42 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.net_device*, %struct.net_device** %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 3
  store %struct.net_device* %44, %struct.net_device** %46, align 8
  %47 = load i32, i32* @ETH_P_IP, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %7, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %58
  store i32 %63, i32* %61, align 4
  br label %68

64:                                               ; preds = %3
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %84

68:                                               ; preds = %24
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @d_printf(i32 3, %struct.device* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @d_dump(i32 4, %struct.device* %74, i64 %77, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @netif_rx_ni(%struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %68, %64
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @d_fnend(i32 2, %struct.device* %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.i2400m* %86, %struct.sk_buff* %87, i32 %90, i32 %91)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @i2400m_rx_fake_eth_header(%struct.net_device*, i64, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i64, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
