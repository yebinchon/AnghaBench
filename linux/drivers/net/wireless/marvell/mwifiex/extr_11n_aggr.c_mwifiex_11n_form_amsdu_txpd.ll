; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_aggr.c_mwifiex_11n_form_amsdu_txpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_aggr.c_mwifiex_11n_form_amsdu_txpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.sk_buff = type { i32, i64, i64 }
%struct.txpd = type { i64, i32, i8*, i8*, i8*, i32, i32, i32, i64 }
%struct.mwifiex_txinfo = type { i32 }

@PKT_TYPE_AMSDU = common dso_local global i32 0, align 4
@MWIFIEX_BUF_FLAG_TDLS_PKT = common dso_local global i32 0, align 4
@MWIFIEX_TXPD_FLAGS_TDLS_PACKET = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8
@MWIFIEX_TxPD_POWER_MGMT_LAST_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_11n_form_amsdu_txpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_11n_form_amsdu_txpd(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.txpd*, align 8
  %6 = alloca %struct.mwifiex_txinfo*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %7)
  store %struct.mwifiex_txinfo* %8, %struct.mwifiex_txinfo** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @skb_push(%struct.sk_buff* %9, i32 64)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.txpd*
  store %struct.txpd* %14, %struct.txpd** %5, align 8
  %15 = load %struct.txpd*, %struct.txpd** %5, align 8
  %16 = call i32 @memset(%struct.txpd* %15, i32 0, i32 64)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.txpd*, %struct.txpd** %5, align 8
  %21 = getelementptr inbounds %struct.txpd, %struct.txpd* %20, i32 0, i32 8
  store i64 %19, i64* %21, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @mwifiex_wmm_compute_drv_pkt_delay(%struct.mwifiex_private* %22, %struct.sk_buff* %23)
  %25 = load %struct.txpd*, %struct.txpd** %5, align 8
  %26 = getelementptr inbounds %struct.txpd, %struct.txpd* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.txpd*, %struct.txpd** %5, align 8
  %31 = getelementptr inbounds %struct.txpd, %struct.txpd* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.txpd*, %struct.txpd** %5, align 8
  %36 = getelementptr inbounds %struct.txpd, %struct.txpd* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = call i8* @cpu_to_le16(i32 64)
  %38 = load %struct.txpd*, %struct.txpd** %5, align 8
  %39 = getelementptr inbounds %struct.txpd, %struct.txpd* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @PKT_TYPE_AMSDU, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.txpd*, %struct.txpd** %5, align 8
  %43 = getelementptr inbounds %struct.txpd, %struct.txpd* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 64
  %49 = trunc i64 %48 to i32
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.txpd*, %struct.txpd** %5, align 8
  %52 = getelementptr inbounds %struct.txpd, %struct.txpd* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %6, align 8
  %54 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MWIFIEX_BUF_FLAG_TDLS_PKT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %2
  %60 = load i32, i32* @MWIFIEX_TXPD_FLAGS_TDLS_PACKET, align 4
  %61 = load %struct.txpd*, %struct.txpd** %5, align 8
  %62 = getelementptr inbounds %struct.txpd, %struct.txpd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %2
  %66 = load %struct.txpd*, %struct.txpd** %5, align 8
  %67 = getelementptr inbounds %struct.txpd, %struct.txpd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @cpu_to_le32(i32 %73)
  %75 = load %struct.txpd*, %struct.txpd** %5, align 8
  %76 = getelementptr inbounds %struct.txpd, %struct.txpd* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %79 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %78)
  %80 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %84 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %91 = call i32 @mwifiex_check_last_packet_indication(%struct.mwifiex_private* %90)
  %92 = icmp eq i32 1, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %95 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load i32, i32* @MWIFIEX_TxPD_POWER_MGMT_LAST_PACKET, align 4
  %99 = load %struct.txpd*, %struct.txpd** %5, align 8
  %100 = getelementptr inbounds %struct.txpd, %struct.txpd* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %93, %89
  br label %102

102:                                              ; preds = %101, %82, %77
  ret void
}

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.txpd*, i32, i32) #1

declare dso_local i32 @mwifiex_wmm_compute_drv_pkt_delay(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_check_last_packet_indication(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
