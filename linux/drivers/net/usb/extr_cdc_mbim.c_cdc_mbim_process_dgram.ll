; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_process_dgram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_process_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.usbnet = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ETH_P_802_3 = common dso_local global i32 0, align 4
@MBIM_IPS0_VID = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, i32*, i64, i32)* @cdc_mbim_process_dgram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cdc_mbim_process_dgram(%struct.usbnet* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @ETH_P_802_3, align 4
  %12 = call i32 @htons(i32 %11)
  store i32 %12, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MBIM_IPS0_VID, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15, %4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %95

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 240
  switch i32 %26, label %43 [
    i32 64, label %27
    i32 96, label %30
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @ETH_P_IP, align 4
  %29 = call i32 @htons(i32 %28)
  store i32 %29, i32* %9, align 4
  br label %44

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @is_neigh_solicit(i32* %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @do_neigh_solicit(%struct.usbnet* %36, i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @ETH_P_IPV6, align 4
  %42 = call i32 @htons(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %44

43:                                               ; preds = %23
  br label %95

44:                                               ; preds = %40, %27
  br label %45

45:                                               ; preds = %44, %15
  %46 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @ETH_HLEN, align 8
  %51 = add i64 %49, %50
  %52 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_3__* %48, i64 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %95

56:                                               ; preds = %45
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load i64, i64* @ETH_HLEN, align 8
  %59 = call i32 @skb_put(%struct.sk_buff* %57, i64 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %61 = call i32 @skb_reset_mac_header(%struct.sk_buff* %60)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @eth_zero_addr(i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %76 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = call i32 @memcpy(i32 %74, i32 %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @skb_put_data(%struct.sk_buff* %82, i32* %83, i64 %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %56
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = load i32, i32* @ETH_P_8021Q, align 4
  %91 = call i32 @htons(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %89, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %56
  br label %95

95:                                               ; preds = %94, %55, %43, %22
  %96 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %96
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @is_neigh_solicit(i32*, i64) #1

declare dso_local i32 @do_neigh_solicit(%struct.usbnet*, i32*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
