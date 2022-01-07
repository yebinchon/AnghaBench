; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sk_buff = type { i64, i32*, i8*, %struct.TYPE_3__* }
%struct.qmi_wwan_state = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }

@QMI_WWAN_FLAG_RAWIP = common dso_local global i32 0, align 4
@QMI_WWAN_FLAG_MUX = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @qmi_wwan_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_wwan_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qmi_wwan_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %12, %struct.qmi_wwan_state** %6, align 8
  %13 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %6, align 8
  %14 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @QMI_WWAN_FLAG_RAWIP, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

28:                                               ; preds = %2
  %29 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %6, align 8
  %30 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @QMI_WWAN_FLAG_MUX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @qmimux_rx_fixup(%struct.usbnet* %36, %struct.sk_buff* %37)
  store i32 %38, i32* %3, align 4
  br label %118

39:                                               ; preds = %28
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 240
  switch i32 %45, label %66 [
    i32 64, label %46
    i32 96, label %49
    i32 0, label %52
  ]

46:                                               ; preds = %39
  %47 = load i32, i32* @ETH_P_IP, align 4
  %48 = call i8* @htons(i32 %47)
  store i8* %48, i8** %8, align 8
  br label %71

49:                                               ; preds = %39
  %50 = load i32, i32* @ETH_P_IPV6, align 4
  %51 = call i8* @htons(i32 %50)
  store i8* %51, i8** %8, align 8
  br label %71

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %118

56:                                               ; preds = %52
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @is_multicast_ether_addr(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %118

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @skb_reset_mac_header(%struct.sk_buff* %64)
  br label %106

66:                                               ; preds = %39
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %118

70:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %118

71:                                               ; preds = %49, %46
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @skb_reset_mac_header(%struct.sk_buff* %75)
  %77 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %78 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 3
  store %struct.TYPE_3__* %79, %struct.TYPE_3__** %81, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  store i32 1, i32* %3, align 4
  br label %118

85:                                               ; preds = %71
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i64 @skb_headroom(%struct.sk_buff* %86)
  %88 = load i64, i64* @ETH_HLEN, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %118

91:                                               ; preds = %85
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load i64, i64* @ETH_HLEN, align 8
  %94 = call i32 @skb_push(%struct.sk_buff* %92, i64 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 @skb_reset_mac_header(%struct.sk_buff* %95)
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i8* %97, i8** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @eth_zero_addr(i32 %104)
  br label %106

106:                                              ; preds = %91, %63
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %112 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ETH_ALEN, align 4
  %117 = call i32 @memcpy(i32 %110, i32 %115, i32 %116)
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %106, %90, %74, %70, %69, %62, %55, %35, %27
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @qmimux_rx_fixup(%struct.usbnet*, %struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
