; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_process_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_rx_status = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@ATH10K_DBG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [140 x i8] c"rx skb %pK len %u peer %pM %s %s sn %u %s%s%s%s%s%s %srate_idx %u vht_nss %u freq %u band %u flag 0x%x fcs-err %i mic-err %i amsdu-more %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mcast\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ucast\00", align 1
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@RX_ENC_LEGACY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RX_ENC_HT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"ht\00", align 1
@RX_ENC_VHT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"vht\00", align 1
@RATE_INFO_BW_40 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"40\00", align 1
@RATE_INFO_BW_80 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@RATE_INFO_BW_160 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"160\00", align 1
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"sgi \00", align 1
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_AMSDU_MORE = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT_DUMP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"rx skb: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_process_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_process_rx(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca [32 x i8], align 16
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %11, %struct.ieee80211_hdr** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %12)
  store %struct.ieee80211_rx_status* %13, %struct.ieee80211_rx_status** %5, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = load i32, i32* @ATH10K_DBG_DATA, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %21 = call i32 @ieee80211_get_SA(%struct.ieee80211_hdr* %20)
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %24 = call i32 @ath10k_get_tid(%struct.ieee80211_hdr* %22, i8* %23, i32 32)
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %26 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %25)
  %27 = call i64 @is_multicast_ether_addr(i32 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__le16_to_cpu(i32 %33)
  %35 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %36 = and i32 %34, %35
  %37 = ashr i32 %36, 4
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RX_ENC_LEGACY, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RX_ENC_HT, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %52 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RX_ENC_VHT, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %59 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RATE_INFO_BW_40, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %66 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RATE_INFO_BW_80, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %73 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RATE_INFO_BW_160, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %80 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %88 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %101 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %122 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RX_FLAG_AMSDU_MORE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @ath10k_dbg(%struct.ath10k* %14, i32 %15, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %16, i32 %19, i32 %21, i32 %24, i8* %30, i32 %37, i8* %44, i8* %51, i8* %58, i8* %65, i8* %72, i8* %79, i8* %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %111, i32 %120, i32 %129)
  %131 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %132 = load i32, i32* @ATH10K_DBG_HTT_DUMP, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ath10k_dbg_dump(%struct.ath10k* %131, i32 %132, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 %135, i32 %138)
  %140 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @trace_ath10k_rx_hdr(%struct.ath10k* %140, i64 %143, i32 %146)
  %148 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @trace_ath10k_rx_payload(%struct.ath10k* %148, i64 %151, i32 %154)
  %156 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %157 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %160 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %161 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %160, i32 0, i32 0
  %162 = call i32 @ieee80211_rx_napi(i32 %158, i32* null, %struct.sk_buff* %159, i32* %161)
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, %struct.sk_buff*, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_get_SA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ath10k_get_tid(%struct.ieee80211_hdr*, i8*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, i64, i32) #1

declare dso_local i32 @trace_ath10k_rx_hdr(%struct.ath10k*, i64, i32) #1

declare dso_local i32 @trace_ath10k_rx_payload(%struct.ath10k*, i64, i32) #1

declare dso_local i32 @ieee80211_rx_napi(i32, i32*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
