; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmimux_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmimux_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32*, i8*, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qmimux_hdr = type { i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.qmimux_priv = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @qmimux_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmimux_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qmimux_hdr*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pcpu_sw_netstats*, align 8
  %15 = alloca %struct.qmimux_priv*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 12, i32* %13, align 4
  br label %16

16:                                               ; preds = %155, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %13, align 4
  %19 = add i32 %17, %18
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %161

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = bitcast i32* %30 to %struct.qmimux_hdr*
  store %struct.qmimux_hdr* %31, %struct.qmimux_hdr** %10, align 8
  %32 = load %struct.qmimux_hdr*, %struct.qmimux_hdr** %10, align 8
  %33 = getelementptr inbounds %struct.qmimux_hdr, %struct.qmimux_hdr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be16_to_cpu(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %36, %37
  %39 = load i32, i32* %13, align 4
  %40 = add i32 %38, %39
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ugt i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %162

46:                                               ; preds = %24
  %47 = load %struct.qmimux_hdr*, %struct.qmimux_hdr** %10, align 8
  %48 = getelementptr inbounds %struct.qmimux_hdr, %struct.qmimux_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %155

53:                                               ; preds = %46
  %54 = load %struct.qmimux_hdr*, %struct.qmimux_hdr** %10, align 8
  %55 = getelementptr inbounds %struct.qmimux_hdr, %struct.qmimux_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 63
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp uge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %53
  br label %155

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %70 = load %struct.qmimux_hdr*, %struct.qmimux_hdr** %10, align 8
  %71 = getelementptr inbounds %struct.qmimux_hdr, %struct.qmimux_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.net_device* @qmimux_find_dev(%struct.usbnet* %69, i32 %72)
  store %struct.net_device* %73, %struct.net_device** %11, align 8
  %74 = load %struct.net_device*, %struct.net_device** %11, align 8
  %75 = icmp ne %struct.net_device* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %155

77:                                               ; preds = %65
  %78 = load %struct.net_device*, %struct.net_device** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %78, i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %12, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %162

84:                                               ; preds = %77
  %85 = load %struct.net_device*, %struct.net_device** %11, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 3
  store %struct.net_device* %85, %struct.net_device** %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 240
  switch i32 %97, label %108 [
    i32 64, label %98
    i32 96, label %103
  ]

98:                                               ; preds = %84
  %99 = load i32, i32* @ETH_P_IP, align 4
  %100 = call i8* @htons(i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  br label %109

103:                                              ; preds = %84
  %104 = load i32, i32* @ETH_P_IPV6, align 4
  %105 = call i8* @htons(i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  br label %109

108:                                              ; preds = %84
  br label %155

109:                                              ; preds = %103, %98
  %110 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @skb_put_data(%struct.sk_buff* %110, i32* %119, i32 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = call i64 @netif_rx(%struct.sk_buff* %122)
  %124 = load i64, i64* @NET_RX_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %109
  %127 = load %struct.net_device*, %struct.net_device** %11, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  store i32 0, i32* %3, align 4
  br label %162

132:                                              ; preds = %109
  %133 = load %struct.net_device*, %struct.net_device** %11, align 8
  %134 = call %struct.qmimux_priv* @netdev_priv(%struct.net_device* %133)
  store %struct.qmimux_priv* %134, %struct.qmimux_priv** %15, align 8
  %135 = load %struct.qmimux_priv*, %struct.qmimux_priv** %15, align 8
  %136 = getelementptr inbounds %struct.qmimux_priv, %struct.qmimux_priv* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %137)
  store %struct.pcpu_sw_netstats* %138, %struct.pcpu_sw_netstats** %14, align 8
  %139 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %14, align 8
  %140 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %139, i32 0, i32 1
  %141 = call i32 @u64_stats_update_begin(i32* %140)
  %142 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %14, align 8
  %143 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %14, align 8
  %148 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %14, align 8
  %152 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %151, i32 0, i32 1
  %153 = call i32 @u64_stats_update_end(i32* %152)
  br label %154

154:                                              ; preds = %132
  br label %155

155:                                              ; preds = %154, %108, %76, %64, %52
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add i32 %156, %157
  %159 = load i32, i32* %7, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %7, align 4
  br label %16

161:                                              ; preds = %16
  store i32 1, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %126, %83, %45
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.net_device* @qmimux_find_dev(%struct.usbnet*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i64 @netif_rx(%struct.sk_buff*) #1

declare dso_local %struct.qmimux_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
