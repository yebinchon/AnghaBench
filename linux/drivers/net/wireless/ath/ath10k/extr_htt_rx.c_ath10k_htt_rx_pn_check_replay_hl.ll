; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_pn_check_replay_hl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_pn_check_replay_hl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_peer = type { i32*, %struct.TYPE_6__*, %union.htt_rx_pn_t* }
%struct.TYPE_6__ = type { i32, i32 }
%union.htt_rx_pn_t = type { i32 }
%struct.htt_rx_indication_hl = type { %struct.TYPE_5__, i32*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.htt_hl_rx_desc = type { i32 }

@FW_RX_DESC_FLAGS_FIRST_MSDU = common dso_local global i32 0, align 4
@HTT_RX_INDICATION_INFO1_NUM_MPDU_RANGES = common dso_local global i32 0, align 4
@HTT_RX_DESC_HL_INFO_ENCRYPTED = common dso_local global i32 0, align 4
@HTT_RX_INDICATION_INFO0_EXT_TID = common dso_local global i32 0, align 4
@HTT_RX_DESC_HL_INFO_MCAST_BCAST = common dso_local global i32 0, align 4
@HTT_TXRX_SEC_MCAST = common dso_local global i32 0, align 4
@HTT_TXRX_SEC_UCAST = common dso_local global i32 0, align 4
@HTT_SECURITY_AES_CCMP = common dso_local global i32 0, align 4
@HTT_SECURITY_TKIP = common dso_local global i32 0, align 4
@HTT_SECURITY_TKIP_NOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_peer*, %struct.htt_rx_indication_hl*)* @ath10k_htt_rx_pn_check_replay_hl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_rx_pn_check_replay_hl(%struct.ath10k* %0, %struct.ath10k_peer* %1, %struct.htt_rx_indication_hl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_peer*, align 8
  %7 = alloca %struct.htt_rx_indication_hl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.htt_rx_pn_t, align 4
  %13 = alloca %struct.htt_hl_rx_desc*, align 8
  %14 = alloca %union.htt_rx_pn_t*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_peer* %1, %struct.ath10k_peer** %6, align 8
  store %struct.htt_rx_indication_hl* %2, %struct.htt_rx_indication_hl** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = bitcast %union.htt_rx_pn_t* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %23 = icmp ne %struct.ath10k_peer* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

25:                                               ; preds = %3
  %26 = load %struct.htt_rx_indication_hl*, %struct.htt_rx_indication_hl** %7, align 8
  %27 = getelementptr inbounds %struct.htt_rx_indication_hl, %struct.htt_rx_indication_hl* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FW_RX_DESC_FLAGS_FIRST_MSDU, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %138

34:                                               ; preds = %25
  %35 = load %struct.htt_rx_indication_hl*, %struct.htt_rx_indication_hl** %7, align 8
  %36 = getelementptr inbounds %struct.htt_rx_indication_hl, %struct.htt_rx_indication_hl* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @__le32_to_cpu(i32 %38)
  %40 = load i32, i32* @HTT_RX_INDICATION_INFO1_NUM_MPDU_RANGES, align 4
  %41 = call i32 @MS(i64 %39, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load %struct.htt_rx_indication_hl*, %struct.htt_rx_indication_hl** %7, align 8
  %43 = getelementptr inbounds %struct.htt_rx_indication_hl, %struct.htt_rx_indication_hl* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to %struct.htt_hl_rx_desc*
  store %struct.htt_hl_rx_desc* %48, %struct.htt_hl_rx_desc** %13, align 8
  %49 = load %struct.htt_hl_rx_desc*, %struct.htt_hl_rx_desc** %13, align 8
  %50 = getelementptr inbounds %struct.htt_hl_rx_desc, %struct.htt_hl_rx_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @__le32_to_cpu(i32 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i32, i32* @HTT_RX_DESC_HL_INFO_ENCRYPTED, align 4
  %55 = call i32 @MS(i64 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %138

58:                                               ; preds = %34
  %59 = load %struct.htt_rx_indication_hl*, %struct.htt_rx_indication_hl** %7, align 8
  %60 = getelementptr inbounds %struct.htt_rx_indication_hl, %struct.htt_rx_indication_hl* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @HTT_RX_INDICATION_INFO0_EXT_TID, align 4
  %64 = call i32 @MS(i64 %62, i32 %63)
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %16, align 8
  %66 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %67 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %73 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %72, i32 0, i32 2
  %74 = load %union.htt_rx_pn_t*, %union.htt_rx_pn_t** %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds %union.htt_rx_pn_t, %union.htt_rx_pn_t* %74, i64 %75
  store %union.htt_rx_pn_t* %76, %union.htt_rx_pn_t** %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* @HTT_RX_DESC_HL_INFO_MCAST_BCAST, align 4
  %79 = call i32 @MS(i64 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %58
  %82 = load i32, i32* @HTT_TXRX_SEC_MCAST, align 4
  store i32 %82, i32* %10, align 4
  br label %85

83:                                               ; preds = %58
  %84 = load i32, i32* @HTT_TXRX_SEC_UCAST, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %87 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.htt_hl_rx_desc*, %struct.htt_hl_rx_desc** %13, align 8
  %95 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %96 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ath10k_htt_rx_mpdu_desc_pn_hl(%struct.htt_hl_rx_desc* %94, %union.htt_rx_pn_t* %12, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @HTT_SECURITY_AES_CCMP, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %85
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @HTT_SECURITY_TKIP, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @HTT_SECURITY_TKIP_NOMIC, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %138

116:                                              ; preds = %111, %107, %85
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %union.htt_rx_pn_t*, %union.htt_rx_pn_t** %14, align 8
  %121 = call i32 @ath10k_htt_rx_pn_cmp48(%union.htt_rx_pn_t* %12, %union.htt_rx_pn_t* %120)
  store i32 %121, i32* %9, align 4
  br label %128

122:                                              ; preds = %116
  %123 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %124 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %16, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %128
  %132 = bitcast %union.htt_rx_pn_t* %12 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = load %union.htt_rx_pn_t*, %union.htt_rx_pn_t** %14, align 8
  %135 = bitcast %union.htt_rx_pn_t* %134 to i32*
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %131, %128
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %115, %57, %33, %24
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @MS(i64, i32) #2

declare dso_local i64 @__le32_to_cpu(i32) #2

declare dso_local i32 @ath10k_htt_rx_mpdu_desc_pn_hl(%struct.htt_hl_rx_desc*, %union.htt_rx_pn_t*, i32) #2

declare dso_local i32 @ath10k_htt_rx_pn_cmp48(%union.htt_rx_pn_t*, %union.htt_rx_pn_t*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
