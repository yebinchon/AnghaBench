; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_rx_vlan_encap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_rx_vlan_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.cpsw_priv = type { i64, %struct.cpsw_common* }
%struct.cpsw_common = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@CPSW_RX_VLAN_ENCAP_HDR_SIZE = common dso_local global i64 0, align 8
@CPSW_RX_VLAN_ENCAP_HDR_PKT_TYPE_SHIFT = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP_HDR_PKT_TYPE_MSK = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP_HDR_PKT_RESERV = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP_HDR_PKT_PRIO_TAG = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP_HDR_VID_SHIFT = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP_HDR_PRIO_SHIFT = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP_HDR_PRIO_MSK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP_HDR_PKT_VLAN_TAG = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @cpsw_rx_vlan_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_rx_vlan_encap(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.cpsw_priv*, align 8
  %4 = alloca %struct.cpsw_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.cpsw_priv* @netdev_priv(i32 %12)
  store %struct.cpsw_priv* %13, %struct.cpsw_priv** %3, align 8
  %14 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %15 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %14, i32 0, i32 1
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %15, align 8
  store %struct.cpsw_common* %16, %struct.cpsw_common** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = load i64, i64* @CPSW_RX_VLAN_ENCAP_HDR_SIZE, align 8
  %24 = call i32 @skb_pull(%struct.sk_buff* %22, i64 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_PKT_TYPE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_PKT_TYPE_MSK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_PKT_RESERV, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_PKT_PRIO_TAG, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %1
  br label %100

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_VID_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = load i32, i32* @VLAN_VID_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %100

47:                                               ; preds = %38
  %48 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %49 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %56 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %59 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %54, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %100

66:                                               ; preds = %53, %47
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_PRIO_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_PRIO_MSK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %6, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %78 = load i32, i32* @ETH_P_8021Q, align 4
  %79 = call i32 @htons(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %77, i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_PKT_VLAN_TAG, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %66
  %86 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VLAN_HLEN, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = mul nsw i32 2, %94
  %96 = call i32 @memmove(i64 %90, i64 %93, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %98 = load i64, i64* @VLAN_HLEN, align 8
  %99 = call i32 @skb_pull(%struct.sk_buff* %97, i64 %98)
  br label %100

100:                                              ; preds = %37, %46, %65, %85, %66
  ret void
}

declare dso_local %struct.cpsw_priv* @netdev_priv(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
