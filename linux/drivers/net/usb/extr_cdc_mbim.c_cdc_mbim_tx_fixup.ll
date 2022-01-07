; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_mbim.c_cdc_mbim_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.cdc_mbim_state = type { i32, %struct.cdc_ncm_ctx* }
%struct.cdc_ncm_ctx = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@USB_CDC_MBIM_NDP16_IPS_SIGN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@FLAG_IPS0_VLAN = common dso_local global i32 0, align 4
@MBIM_IPS0_VID = common dso_local global i32 0, align 4
@USB_CDC_MBIM_NDP16_DSS_SIGN = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unsupported tci=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @cdc_mbim_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cdc_mbim_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.cdc_mbim_state*, align 8
  %10 = alloca %struct.cdc_ncm_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.cdc_mbim_state*
  store %struct.cdc_mbim_state* %18, %struct.cdc_mbim_state** %9, align 8
  %19 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %9, align 8
  %20 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %19, i32 0, i32 1
  %21 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %20, align 8
  store %struct.cdc_ncm_ctx* %21, %struct.cdc_ncm_ctx** %10, align 8
  %22 = load i32, i32* @USB_CDC_MBIM_NDP16_IPS_SIGN, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %25 = icmp ne %struct.cdc_ncm_ctx* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %130

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %118

30:                                               ; preds = %27
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ETH_HLEN, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %130

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @skb_reset_mac_header(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i64 @vlan_get_tag(%struct.sk_buff* %40, i32* %12)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i64 @__vlan_get_tag(%struct.sk_buff* %50, i32* %12)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call %struct.TYPE_3__* @vlan_eth_hdr(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @is_ip_proto(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %61 = call i32 @skb_pull(%struct.sk_buff* %59, i64 %60)
  br label %71

62:                                               ; preds = %49, %43, %37
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @is_ip_proto(i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load i64, i64* @ETH_HLEN, align 8
  %70 = call i32 @skb_pull(%struct.sk_buff* %68, i64 %69)
  br label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.cdc_mbim_state*, %struct.cdc_mbim_state** %9, align 8
  %73 = getelementptr inbounds %struct.cdc_mbim_state, %struct.cdc_mbim_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FLAG_IPS0_VLAN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %130

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @MBIM_IPS0_VID, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %82
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 3840
  switch i32 %90, label %109 [
    i32 0, label %91
    i32 256, label %99
  ]

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %130

95:                                               ; preds = %91
  store i32* %11, i32** %14, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  store i32 %96, i32* %98, align 4
  br label %117

99:                                               ; preds = %88
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %130

103:                                              ; preds = %99
  %104 = load i32, i32* @USB_CDC_MBIM_NDP16_DSS_SIGN, align 4
  %105 = call i32 @cpu_to_le32(i32 %104)
  store i32 %105, i32* %11, align 4
  store i32* %11, i32** %14, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32*, i32** %14, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32 %106, i32* %108, align 4
  br label %117

109:                                              ; preds = %88
  %110 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %111 = load i32, i32* @tx_err, align 4
  %112 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %113 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @netif_err(%struct.usbnet* %110, i32 %111, i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %130

117:                                              ; preds = %103, %95
  br label %118

118:                                              ; preds = %117, %27
  %119 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %120 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %119, i32 0, i32 0
  %121 = call i32 @spin_lock_bh(i32* %120)
  %122 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call %struct.sk_buff* @cdc_ncm_fill_tx_frame(%struct.usbnet* %122, %struct.sk_buff* %123, i32 %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %8, align 8
  %126 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %10, align 8
  %127 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock_bh(i32* %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %129, %struct.sk_buff** %4, align 8
  br label %137

130:                                              ; preds = %109, %102, %94, %81, %36, %26
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = icmp ne %struct.sk_buff* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %134)
  br label %136

136:                                              ; preds = %133, %130
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %137

137:                                              ; preds = %136, %118
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %138
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local i64 @__vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local i32 @is_ip_proto(i32) #1

declare dso_local %struct.TYPE_3__* @vlan_eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @netif_err(%struct.usbnet*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @cdc_ncm_fill_tx_frame(%struct.usbnet*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
