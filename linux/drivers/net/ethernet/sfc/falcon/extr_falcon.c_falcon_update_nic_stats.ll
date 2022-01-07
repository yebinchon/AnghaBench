; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_update_nic_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_update_nic_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.TYPE_2__, %struct.falcon_nic_data* }
%struct.TYPE_2__ = type { i32 }
%struct.falcon_nic_data = type { i32*, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FR_AZ_RX_NODESC_DROP = common dso_local global i32 0, align 4
@FRF_AB_RX_NODESC_DROP_CNT = common dso_local global i32 0, align 4
@FALCON_STAT_rx_nodesc_drop_cnt = common dso_local global i64 0, align 8
@falcon_stat_desc = common dso_local global i32 0, align 4
@FALCON_STAT_COUNT = common dso_local global i32 0, align 4
@falcon_stat_mask = common dso_local global i32 0, align 4
@FALCON_STAT_rx_bad_bytes = common dso_local global i64 0, align 8
@FALCON_STAT_rx_bytes = common dso_local global i64 0, align 8
@FALCON_STAT_rx_good_bytes = common dso_local global i64 0, align 8
@FALCON_STAT_rx_control = common dso_local global i64 0, align 8
@FALCON_STAT_rx_packets = common dso_local global i64 0, align 8
@FALCON_STAT_tx_packets = common dso_local global i64 0, align 8
@FALCON_STAT_tx_bytes = common dso_local global i64 0, align 8
@GENERIC_STAT_rx_nodesc_trunc = common dso_local global i64 0, align 8
@GENERIC_STAT_rx_noskb_drops = common dso_local global i64 0, align 8
@FALCON_STAT_rx_multicast = common dso_local global i64 0, align 8
@FALCON_STAT_rx_gtjumbo = common dso_local global i64 0, align 8
@FALCON_STAT_rx_length_error = common dso_local global i64 0, align 8
@FALCON_STAT_rx_bad = common dso_local global i64 0, align 8
@FALCON_STAT_rx_align_error = common dso_local global i64 0, align 8
@FALCON_STAT_rx_overflow = common dso_local global i64 0, align 8
@FALCON_STAT_rx_symbol_error = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ef4_nic*, i32*, %struct.rtnl_link_stats64*)* @falcon_update_nic_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @falcon_update_nic_stats(%struct.ef4_nic* %0, i32* %1, %struct.rtnl_link_stats64* %2) #0 {
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtnl_link_stats64*, align 8
  %7 = alloca %struct.falcon_nic_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.rtnl_link_stats64* %2, %struct.rtnl_link_stats64** %6, align 8
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 1
  %12 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %11, align 8
  store %struct.falcon_nic_data* %12, %struct.falcon_nic_data** %7, align 8
  %13 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %7, align 8
  %14 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %7, align 8
  %17 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %78, label %20

20:                                               ; preds = %3
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %22 = load i32, i32* @FR_AZ_RX_NODESC_DROP, align 4
  %23 = call i32 @ef4_reado(%struct.ef4_nic* %21, i32* %9, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @FRF_AB_RX_NODESC_DROP_CNT, align 4
  %26 = call i64 @EF4_OWORD_FIELD(i32 %24, i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* @FALCON_STAT_rx_nodesc_drop_cnt, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %26
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %7, align 8
  %35 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %20
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %40 = call i64 @FALCON_XMAC_STATS_DMA_FLAG(%struct.ef4_nic* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %7, align 8
  %44 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = call i32 (...) @rmb()
  %46 = load i32, i32* @falcon_stat_desc, align 4
  %47 = load i32, i32* @FALCON_STAT_COUNT, align 4
  %48 = load i32, i32* @falcon_stat_mask, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %51 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ef4_nic_update_stats(i32 %46, i32 %47, i32 %48, i32* %49, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %42, %38, %20
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* @FALCON_STAT_rx_bad_bytes, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* @FALCON_STAT_rx_bytes, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* @FALCON_STAT_rx_good_bytes, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %62, %66
  %68 = load i32*, i32** %8, align 8
  %69 = load i64, i64* @FALCON_STAT_rx_control, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 64
  %73 = sub nsw i32 %67, %72
  %74 = call i32 @ef4_update_diff_stat(i32* %58, i32 %73)
  %75 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @ef4_update_sw_stats(%struct.ef4_nic* %75, i32* %76)
  br label %78

78:                                               ; preds = %55, %3
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* @FALCON_STAT_COUNT, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32* %82, i32* %83, i32 %87)
  br label %89

89:                                               ; preds = %81, %78
  %90 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %91 = icmp ne %struct.rtnl_link_stats64* %90, null
  br i1 %91, label %92, label %186

92:                                               ; preds = %89
  %93 = load i32*, i32** %8, align 8
  %94 = load i64, i64* @FALCON_STAT_rx_packets, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %98 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i64, i64* @FALCON_STAT_tx_packets, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %104 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i64, i64* @FALCON_STAT_rx_bytes, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %110 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i64, i64* @FALCON_STAT_tx_bytes, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %116 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i64, i64* @FALCON_STAT_rx_nodesc_drop_cnt, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i64, i64* @GENERIC_STAT_rx_nodesc_trunc, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %120, %124
  %126 = load i32*, i32** %8, align 8
  %127 = load i64, i64* @GENERIC_STAT_rx_noskb_drops, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %125, %129
  %131 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %132 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i64, i64* @FALCON_STAT_rx_multicast, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %138 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i64, i64* @FALCON_STAT_rx_gtjumbo, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i64, i64* @FALCON_STAT_rx_length_error, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %142, %146
  %148 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %149 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load i64, i64* @FALCON_STAT_rx_bad, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %155 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = load i64, i64* @FALCON_STAT_rx_align_error, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %161 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = load i64, i64* @FALCON_STAT_rx_overflow, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %167 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %166, i32 0, i32 9
  store i32 %165, i32* %167, align 4
  %168 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %169 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %172 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %170, %173
  %175 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %176 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %174, %177
  %179 = load i32*, i32** %8, align 8
  %180 = load i64, i64* @FALCON_STAT_rx_symbol_error, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %178, %182
  %184 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %185 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %184, i32 0, i32 10
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %92, %89
  %187 = load i32, i32* @FALCON_STAT_COUNT, align 4
  %188 = sext i32 %187 to i64
  ret i64 %188
}

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i64 @EF4_OWORD_FIELD(i32, i32) #1

declare dso_local i64 @FALCON_XMAC_STATS_DMA_FLAG(%struct.ef4_nic*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ef4_nic_update_stats(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ef4_update_diff_stat(i32*, i32) #1

declare dso_local i32 @ef4_update_sw_stats(%struct.ef4_nic*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
