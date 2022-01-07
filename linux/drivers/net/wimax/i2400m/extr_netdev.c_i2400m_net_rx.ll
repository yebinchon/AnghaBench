; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"(i2400m %p buf %p buf_len %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"RX: reusing first payload skb %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"NETRX: no memory to realloc skb\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"NETRX: receiving %d bytes to network stack\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"(i2400m %p buf %p buf_len %d) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_net_rx(%struct.i2400m* %0, %struct.sk_buff* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.i2400m*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %15 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %11, align 8
  %18 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %19 = call %struct.device* @i2400m_dev(%struct.i2400m* %18)
  store %struct.device* %19, %struct.device** %12, align 8
  %20 = load %struct.device*, %struct.device** %12, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @d_fnstart(i32 2, %struct.device* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %21, i8* %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %13, align 8
  %30 = load %struct.device*, %struct.device** %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = ptrtoint i8* %34 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @skb_pull(%struct.sk_buff* %33, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = call i64 @skb_end_pointer(%struct.sk_buff* %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8*, i8** %9, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @skb_trim(%struct.sk_buff* %44, i32 %52)
  br label %74

54:                                               ; preds = %5
  %55 = load %struct.net_device*, %struct.net_device** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %55, i32 %56, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %13, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %60 = icmp eq %struct.sk_buff* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %12, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.net_device*, %struct.net_device** %11, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %122

69:                                               ; preds = %54
  %70 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @skb_put_data(%struct.sk_buff* %70, i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %27
  %75 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %76 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.net_device*, %struct.net_device** %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @ETH_HLEN, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %81, %83
  %85 = load i32, i32* @ETH_P_IP, align 4
  %86 = call i32 @cpu_to_be16(i32 %85)
  %87 = call i32 @i2400m_rx_fake_eth_header(%struct.net_device* %78, i64 %84, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %89 = load i32, i32* @ETH_HLEN, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @skb_set_mac_header(%struct.sk_buff* %88, i32 %90)
  %92 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %93 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load %struct.net_device*, %struct.net_device** %94, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  store %struct.net_device* %95, %struct.net_device** %97, align 8
  %98 = load i32, i32* @ETH_P_IP, align 4
  %99 = call i32 @htons(i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.net_device*, %struct.net_device** %11, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.net_device*, %struct.net_device** %11, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %107
  store i32 %112, i32* %110, align 4
  %113 = load %struct.device*, %struct.device** %12, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 3, %struct.device* %113, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load %struct.device*, %struct.device** %12, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @d_dump(i32 4, %struct.device* %116, i8* %117, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %121 = call i32 @netif_rx_ni(%struct.sk_buff* %120)
  br label %122

122:                                              ; preds = %74, %61
  %123 = load %struct.device*, %struct.device** %12, align 8
  %124 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @d_fnend(i32 2, %struct.device* %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), %struct.i2400m* %124, i8* %125, i32 %126)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, i8*, i32) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_end_pointer(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @i2400m_rx_fake_eth_header(%struct.net_device*, i64, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
