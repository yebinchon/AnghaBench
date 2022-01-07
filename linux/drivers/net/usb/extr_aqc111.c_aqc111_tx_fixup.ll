; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AQ_TX_DESC_LEN_MASK = common dso_local global i32 0, align 4
@AQ_TX_DESC_MSS_MASK = common dso_local global i32 0, align 4
@AQ_TX_DESC_MSS_SHIFT = common dso_local global i32 0, align 4
@AQ_TX_DESC_DROP_PADD = common dso_local global i32 0, align 4
@AQ_TX_DESC_VLAN = common dso_local global i32 0, align 4
@AQ_TX_DESC_VLAN_MASK = common dso_local global i32 0, align 4
@AQ_TX_DESC_VLAN_SHIFT = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @aqc111_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @aqc111_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AQ_TX_DESC_LEN_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %14, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %14, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AQ_TX_DESC_MSS_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @AQ_TX_DESC_MSS_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = urem i64 %40, 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 8, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %3
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = urem i64 %56, %58
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @AQ_TX_DESC_DROP_PADD, align 4
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %61, %48
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i64 @vlan_get_tag(%struct.sk_buff* %68, i64* %15)
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i32, i32* @AQ_TX_DESC_VLAN, align 4
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load i64, i64* %15, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @AQ_TX_DESC_VLAN_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @AQ_TX_DESC_VLAN_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %71, %67
  %84 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %85 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %83
  %89 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %90 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NETIF_F_SG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i64 @skb_linearize(%struct.sk_buff* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %142

102:                                              ; preds = %97, %88, %83
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = call i32 @skb_headroom(%struct.sk_buff* %103)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call i32 @skb_tailroom(%struct.sk_buff* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp uge i64 %108, 4
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %126, label %114

114:                                              ; preds = %110, %102
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %115, i32 4, i32 %116, i32 %117)
  store %struct.sk_buff* %118, %struct.sk_buff** %9, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %121, %struct.sk_buff** %6, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %114
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %142

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %110
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @skb_put_zero(%struct.sk_buff* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call i32* @skb_push(%struct.sk_buff* %134, i32 4)
  store i32* %135, i32** %10, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @cpu_to_le64(i32 %136)
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = call i32 @usbnet_set_skb_tx_stats(%struct.sk_buff* %139, i32 1, i32 0)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %141, %struct.sk_buff** %4, align 8
  br label %142

142:                                              ; preds = %133, %124, %101
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %143
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @vlan_get_tag(%struct.sk_buff*, i64*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @usbnet_set_skb_tx_stats(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
