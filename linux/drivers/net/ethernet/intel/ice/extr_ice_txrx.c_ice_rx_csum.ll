; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%union.ice_32b_rx_flex_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ice_rx_ptype_decoded = type { i64, i64, i32, i64 }

@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@ICE_RX_FLEX_DESC_STATUS0_L3L4P_S = common dso_local global i32 0, align 4
@ICE_RX_PTYPE_OUTER_IP = common dso_local global i64 0, align 8
@ICE_RX_PTYPE_OUTER_IPV4 = common dso_local global i64 0, align 8
@ICE_RX_PTYPE_OUTER_IPV6 = common dso_local global i64 0, align 8
@ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S = common dso_local global i32 0, align 4
@ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S = common dso_local global i32 0, align 4
@ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S = common dso_local global i32 0, align 4
@ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_ring*, %struct.sk_buff*, %union.ice_32b_rx_flex_desc*, i32)* @ice_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_rx_csum(%struct.ice_ring* %0, %struct.sk_buff* %1, %union.ice_32b_rx_flex_desc* %2, i32 %3) #0 {
  %5 = alloca %struct.ice_ring*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %union.ice_32b_rx_flex_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_rx_ptype_decoded, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ice_rx_ptype_decoded, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %union.ice_32b_rx_flex_desc* %2, %union.ice_32b_rx_flex_desc** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %union.ice_32b_rx_flex_desc*, %union.ice_32b_rx_flex_desc** %7, align 8
  %16 = bitcast %union.ice_32b_rx_flex_desc* %15 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  call void @ice_decode_rx_desc_ptype(%struct.ice_rx_ptype_decoded* sret %14, i32 %21)
  %22 = bitcast %struct.ice_rx_ptype_decoded* %9 to i8*
  %23 = bitcast %struct.ice_rx_ptype_decoded* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 32, i1 false)
  %24 = load i32, i32* @CHECKSUM_NONE, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %27)
  %29 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %30 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  br label %127

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @ICE_RX_FLEX_DESC_STATUS0_L3L4P_S, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %127

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.ice_rx_ptype_decoded, %struct.ice_rx_ptype_decoded* %9, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ice_rx_ptype_decoded, %struct.ice_rx_ptype_decoded* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45
  br label %127

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ice_rx_ptype_decoded, %struct.ice_rx_ptype_decoded* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ICE_RX_PTYPE_OUTER_IP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ice_rx_ptype_decoded, %struct.ice_rx_ptype_decoded* %9, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ICE_RX_PTYPE_OUTER_IPV4, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = getelementptr inbounds %struct.ice_rx_ptype_decoded, %struct.ice_rx_ptype_decoded* %9, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ICE_RX_PTYPE_OUTER_IP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.ice_rx_ptype_decoded, %struct.ice_rx_ptype_decoded* %9, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ICE_RX_PTYPE_OUTER_IPV6, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %71, %64
  %77 = phi i1 [ false, %64 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = load i32, i32* @ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S, align 4
  %86 = call i32 @BIT(i32 %85)
  %87 = or i32 %84, %86
  %88 = and i32 %82, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %118

91:                                               ; preds = %81, %76
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S, align 4
  %97 = call i32 @BIT(i32 %96)
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %118

101:                                              ; preds = %94, %91
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S, align 4
  %105 = call i32 @BIT(i32 %104)
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %118

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.ice_rx_ptype_decoded, %struct.ice_rx_ptype_decoded* %9, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %116 [
    i32 129, label %112
    i32 128, label %112
    i32 130, label %112
  ]

112:                                              ; preds = %109, %109, %109
  %113 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %112
  br label %117

117:                                              ; preds = %116
  br label %127

118:                                              ; preds = %108, %100, %90
  %119 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %120 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %118, %117, %53, %44, %37
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local void @ice_decode_rx_desc_ptype(%struct.ice_rx_ptype_decoded* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
