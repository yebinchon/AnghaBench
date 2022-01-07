; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rocker_port = type { i32, %struct.rocker* }
%struct.rocker = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_tlv = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"tx ring full when queue awake\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ROCKER_TLV_TX_FRAGS = common dso_local global i32 0, align 4
@ROCKER_TX_FRAGS_MAX = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @rocker_port_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rocker_port*, align 8
  %7 = alloca %struct.rocker*, align 8
  %8 = alloca %struct.rocker_desc_info*, align 8
  %9 = alloca %struct.rocker_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %13)
  store %struct.rocker_port* %14, %struct.rocker_port** %6, align 8
  %15 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %16 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %15, i32 0, i32 1
  %17 = load %struct.rocker*, %struct.rocker** %16, align 8
  store %struct.rocker* %17, %struct.rocker** %7, align 8
  %18 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %19 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %18, i32 0, i32 0
  %20 = call %struct.rocker_desc_info* @rocker_desc_head_get(i32* %19)
  store %struct.rocker_desc_info* %20, %struct.rocker_desc_info** %8, align 8
  %21 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %22 = icmp ne %struct.rocker_desc_info* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = call i64 (...) @net_ratelimit()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %34, i32* %3, align 4
  br label %139

35:                                               ; preds = %2
  %36 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @rocker_desc_cookie_ptr_set(%struct.rocker_desc_info* %36, %struct.sk_buff* %37)
  %39 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %40 = load i32, i32* @ROCKER_TLV_TX_FRAGS, align 4
  %41 = call %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info* %39, i32 %40)
  store %struct.rocker_tlv* %41, %struct.rocker_tlv** %9, align 8
  %42 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %43 = icmp ne %struct.rocker_tlv* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %130

45:                                               ; preds = %35
  %46 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %47 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @skb_headlen(%struct.sk_buff* %51)
  %53 = call i32 @rocker_tx_desc_frag_map_put(%struct.rocker_port* %46, %struct.rocker_desc_info* %47, i32 %50, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %126

57:                                               ; preds = %45
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ROCKER_TX_FRAGS_MAX, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @skb_linearize(%struct.sk_buff* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %122

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %57
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %12, align 8
  %87 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %88 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @skb_frag_address(i32* %89)
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @skb_frag_size(i32* %91)
  %93 = call i32 @rocker_tx_desc_frag_map_put(%struct.rocker_port* %87, %struct.rocker_desc_info* %88, i32 %90, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  br label %122

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %72

101:                                              ; preds = %72
  %102 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %103 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %104 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %102, %struct.rocker_tlv* %103)
  %105 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %106 = call i32 @rocker_desc_gen_clear(%struct.rocker_desc_info* %105)
  %107 = load %struct.rocker*, %struct.rocker** %7, align 8
  %108 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %109 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %108, i32 0, i32 0
  %110 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %111 = call i32 @rocker_desc_head_set(%struct.rocker* %107, i32* %109, %struct.rocker_desc_info* %110)
  %112 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %113 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %112, i32 0, i32 0
  %114 = call %struct.rocker_desc_info* @rocker_desc_head_get(i32* %113)
  store %struct.rocker_desc_info* %114, %struct.rocker_desc_info** %8, align 8
  %115 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %116 = icmp ne %struct.rocker_desc_info* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %101
  %118 = load %struct.net_device*, %struct.net_device** %5, align 8
  %119 = call i32 @netif_stop_queue(%struct.net_device* %118)
  br label %120

120:                                              ; preds = %117, %101
  %121 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %121, i32* %3, align 4
  br label %139

122:                                              ; preds = %96, %69
  %123 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %124 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %125 = call i32 @rocker_tx_desc_frags_unmap(%struct.rocker_port* %123, %struct.rocker_desc_info* %124)
  br label %126

126:                                              ; preds = %122, %56
  %127 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %8, align 8
  %128 = load %struct.rocker_tlv*, %struct.rocker_tlv** %9, align 8
  %129 = call i32 @rocker_tlv_nest_cancel(%struct.rocker_desc_info* %127, %struct.rocker_tlv* %128)
  br label %130

130:                                              ; preds = %126, %44
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = call i32 @dev_kfree_skb(%struct.sk_buff* %131)
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %130, %120, %33
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rocker_desc_info* @rocker_desc_head_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @rocker_desc_cookie_ptr_set(%struct.rocker_desc_info*, %struct.sk_buff*) #1

declare dso_local %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info*, i32) #1

declare dso_local i32 @rocker_tx_desc_frag_map_put(%struct.rocker_port*, %struct.rocker_desc_info*, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_address(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @rocker_tlv_nest_end(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

declare dso_local i32 @rocker_desc_gen_clear(%struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_desc_head_set(%struct.rocker*, i32*, %struct.rocker_desc_info*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @rocker_tx_desc_frags_unmap(%struct.rocker_port*, %struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_tlv_nest_cancel(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
