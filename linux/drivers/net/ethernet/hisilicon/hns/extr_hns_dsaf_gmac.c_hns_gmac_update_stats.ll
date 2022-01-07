; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mac_hw_stats }

@GMAC_RX_OCTETS_TOTAL_OK_REG = common dso_local global i32 0, align 4
@GMAC_RX_OCTETS_BAD_REG = common dso_local global i32 0, align 4
@GMAC_RX_UC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_RX_MC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_RX_BC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_64OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_65TO127OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_128TO255OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_255TO511OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_512TO1023OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_1024TO1518OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PKTS_1519TOMAXOCTETS_REG = common dso_local global i32 0, align 4
@GMAC_RX_FCS_ERRORS_REG = common dso_local global i32 0, align 4
@GMAC_RX_TAGGED_REG = common dso_local global i32 0, align 4
@GMAC_RX_DATA_ERR_REG = common dso_local global i32 0, align 4
@GMAC_RX_ALIGN_ERRORS_REG = common dso_local global i32 0, align 4
@GMAC_RX_LONG_ERRORS_REG = common dso_local global i32 0, align 4
@GMAC_RX_JABBER_ERRORS_REG = common dso_local global i32 0, align 4
@GMAC_RX_PAUSE_MACCTRL_FRAM_REG = common dso_local global i32 0, align 4
@GMAC_RX_UNKNOWN_MACCTRL_FRAM_REG = common dso_local global i32 0, align 4
@GMAC_RX_VERY_LONG_ERR_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_RUNT_ERR_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_SHORT_ERR_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_FILT_PKT_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_OCTETS_TOTAL_FILT_REG = common dso_local global i32 0, align 4
@GMAC_RX_OVERRUN_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_LENGTHFIELD_ERR_CNT_REG = common dso_local global i32 0, align 4
@GMAC_RX_FAIL_COMMA_CNT_REG = common dso_local global i32 0, align 4
@GMAC_OCTETS_TRANSMITTED_OK_REG = common dso_local global i32 0, align 4
@GMAC_OCTETS_TRANSMITTED_BAD_REG = common dso_local global i32 0, align 4
@GMAC_TX_UC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_TX_MC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_TX_BC_PKTS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_64OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_65TO127OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_128TO255OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_255TO511OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_512TO1023OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_1024TO1518OCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_PKTS_1519TOMAXOCTETS_REG = common dso_local global i32 0, align 4
@GMAC_TX_EXCESSIVE_LENGTH_DROP_REG = common dso_local global i32 0, align 4
@GMAC_TX_UNDERRUN_REG = common dso_local global i32 0, align 4
@GMAC_TX_TAGGED_REG = common dso_local global i32 0, align 4
@GMAC_TX_CRC_ERROR_REG = common dso_local global i32 0, align 4
@GMAC_TX_PAUSE_FRAMES_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hns_gmac_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_gmac_update_stats(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mac_hw_stats*, align 8
  %4 = alloca %struct.mac_driver*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.mac_hw_stats* null, %struct.mac_hw_stats** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mac_driver*
  store %struct.mac_driver* %6, %struct.mac_driver** %4, align 8
  %7 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %8 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mac_hw_stats* %10, %struct.mac_hw_stats** %3, align 8
  %11 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %12 = load i32, i32* @GMAC_RX_OCTETS_TOTAL_OK_REG, align 4
  %13 = call i64 @dsaf_read_dev(%struct.mac_driver* %11, i32 %12)
  %14 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %15 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %14, i32 0, i32 44
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %21 = load i32, i32* @GMAC_RX_OCTETS_BAD_REG, align 4
  %22 = call i64 @dsaf_read_dev(%struct.mac_driver* %20, i32 %21)
  %23 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %24 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %23, i32 0, i32 43
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %30 = load i32, i32* @GMAC_RX_UC_PKTS_REG, align 4
  %31 = call i64 @dsaf_read_dev(%struct.mac_driver* %29, i32 %30)
  %32 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %33 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %32, i32 0, i32 42
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %39 = load i32, i32* @GMAC_RX_MC_PKTS_REG, align 4
  %40 = call i64 @dsaf_read_dev(%struct.mac_driver* %38, i32 %39)
  %41 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %42 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %41, i32 0, i32 41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %48 = load i32, i32* @GMAC_RX_BC_PKTS_REG, align 4
  %49 = call i64 @dsaf_read_dev(%struct.mac_driver* %47, i32 %48)
  %50 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %51 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %50, i32 0, i32 40
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %57 = load i32, i32* @GMAC_RX_PKTS_64OCTETS_REG, align 4
  %58 = call i64 @dsaf_read_dev(%struct.mac_driver* %56, i32 %57)
  %59 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %60 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %59, i32 0, i32 39
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %66 = load i32, i32* @GMAC_RX_PKTS_65TO127OCTETS_REG, align 4
  %67 = call i64 @dsaf_read_dev(%struct.mac_driver* %65, i32 %66)
  %68 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %69 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %68, i32 0, i32 38
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %75 = load i32, i32* @GMAC_RX_PKTS_128TO255OCTETS_REG, align 4
  %76 = call i64 @dsaf_read_dev(%struct.mac_driver* %74, i32 %75)
  %77 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %78 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %77, i32 0, i32 37
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %84 = load i32, i32* @GMAC_RX_PKTS_255TO511OCTETS_REG, align 4
  %85 = call i64 @dsaf_read_dev(%struct.mac_driver* %83, i32 %84)
  %86 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %87 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %86, i32 0, i32 36
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %93 = load i32, i32* @GMAC_RX_PKTS_512TO1023OCTETS_REG, align 4
  %94 = call i64 @dsaf_read_dev(%struct.mac_driver* %92, i32 %93)
  %95 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %96 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %95, i32 0, i32 35
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %102 = load i32, i32* @GMAC_RX_PKTS_1024TO1518OCTETS_REG, align 4
  %103 = call i64 @dsaf_read_dev(%struct.mac_driver* %101, i32 %102)
  %104 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %105 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %104, i32 0, i32 34
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %111 = load i32, i32* @GMAC_RX_PKTS_1519TOMAXOCTETS_REG, align 4
  %112 = call i64 @dsaf_read_dev(%struct.mac_driver* %110, i32 %111)
  %113 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %114 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %113, i32 0, i32 33
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %120 = load i32, i32* @GMAC_RX_FCS_ERRORS_REG, align 4
  %121 = call i64 @dsaf_read_dev(%struct.mac_driver* %119, i32 %120)
  %122 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %123 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %122, i32 0, i32 32
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  %128 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %129 = load i32, i32* @GMAC_RX_TAGGED_REG, align 4
  %130 = call i64 @dsaf_read_dev(%struct.mac_driver* %128, i32 %129)
  %131 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %132 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %131, i32 0, i32 31
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %138 = load i32, i32* @GMAC_RX_DATA_ERR_REG, align 4
  %139 = call i64 @dsaf_read_dev(%struct.mac_driver* %137, i32 %138)
  %140 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %141 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %140, i32 0, i32 30
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  %146 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %147 = load i32, i32* @GMAC_RX_ALIGN_ERRORS_REG, align 4
  %148 = call i64 @dsaf_read_dev(%struct.mac_driver* %146, i32 %147)
  %149 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %150 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %149, i32 0, i32 29
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  %155 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %156 = load i32, i32* @GMAC_RX_LONG_ERRORS_REG, align 4
  %157 = call i64 @dsaf_read_dev(%struct.mac_driver* %155, i32 %156)
  %158 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %159 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %158, i32 0, i32 28
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  %164 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %165 = load i32, i32* @GMAC_RX_JABBER_ERRORS_REG, align 4
  %166 = call i64 @dsaf_read_dev(%struct.mac_driver* %164, i32 %165)
  %167 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %168 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %167, i32 0, i32 27
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %166
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %168, align 4
  %173 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %174 = load i32, i32* @GMAC_RX_PAUSE_MACCTRL_FRAM_REG, align 4
  %175 = call i64 @dsaf_read_dev(%struct.mac_driver* %173, i32 %174)
  %176 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %177 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %176, i32 0, i32 26
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %175
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  %182 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %183 = load i32, i32* @GMAC_RX_UNKNOWN_MACCTRL_FRAM_REG, align 4
  %184 = call i64 @dsaf_read_dev(%struct.mac_driver* %182, i32 %183)
  %185 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %186 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %185, i32 0, i32 25
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %184
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 4
  %191 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %192 = load i32, i32* @GMAC_RX_VERY_LONG_ERR_CNT_REG, align 4
  %193 = call i64 @dsaf_read_dev(%struct.mac_driver* %191, i32 %192)
  %194 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %195 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %194, i32 0, i32 24
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %201 = load i32, i32* @GMAC_RX_RUNT_ERR_CNT_REG, align 4
  %202 = call i64 @dsaf_read_dev(%struct.mac_driver* %200, i32 %201)
  %203 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %204 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %203, i32 0, i32 23
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %202
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 4
  %209 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %210 = load i32, i32* @GMAC_RX_SHORT_ERR_CNT_REG, align 4
  %211 = call i64 @dsaf_read_dev(%struct.mac_driver* %209, i32 %210)
  %212 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %213 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %212, i32 0, i32 22
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %211
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 4
  %218 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %219 = load i32, i32* @GMAC_RX_FILT_PKT_CNT_REG, align 4
  %220 = call i64 @dsaf_read_dev(%struct.mac_driver* %218, i32 %219)
  %221 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %222 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %221, i32 0, i32 21
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %220
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 4
  %227 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %228 = load i32, i32* @GMAC_RX_OCTETS_TOTAL_FILT_REG, align 4
  %229 = call i64 @dsaf_read_dev(%struct.mac_driver* %227, i32 %228)
  %230 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %231 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %230, i32 0, i32 20
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %229
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 4
  %236 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %237 = load i32, i32* @GMAC_RX_OVERRUN_CNT_REG, align 4
  %238 = call i64 @dsaf_read_dev(%struct.mac_driver* %236, i32 %237)
  %239 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %240 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %239, i32 0, i32 19
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %238
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %240, align 4
  %245 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %246 = load i32, i32* @GMAC_RX_LENGTHFIELD_ERR_CNT_REG, align 4
  %247 = call i64 @dsaf_read_dev(%struct.mac_driver* %245, i32 %246)
  %248 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %249 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %248, i32 0, i32 18
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %247
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %249, align 4
  %254 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %255 = load i32, i32* @GMAC_RX_FAIL_COMMA_CNT_REG, align 4
  %256 = call i64 @dsaf_read_dev(%struct.mac_driver* %254, i32 %255)
  %257 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %258 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %257, i32 0, i32 17
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %256
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  %263 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %264 = load i32, i32* @GMAC_OCTETS_TRANSMITTED_OK_REG, align 4
  %265 = call i64 @dsaf_read_dev(%struct.mac_driver* %263, i32 %264)
  %266 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %267 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %266, i32 0, i32 16
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %265
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 4
  %272 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %273 = load i32, i32* @GMAC_OCTETS_TRANSMITTED_BAD_REG, align 4
  %274 = call i64 @dsaf_read_dev(%struct.mac_driver* %272, i32 %273)
  %275 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %276 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %275, i32 0, i32 15
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %278, %274
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 4
  %281 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %282 = load i32, i32* @GMAC_TX_UC_PKTS_REG, align 4
  %283 = call i64 @dsaf_read_dev(%struct.mac_driver* %281, i32 %282)
  %284 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %285 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %284, i32 0, i32 14
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, %283
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %285, align 4
  %290 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %291 = load i32, i32* @GMAC_TX_MC_PKTS_REG, align 4
  %292 = call i64 @dsaf_read_dev(%struct.mac_driver* %290, i32 %291)
  %293 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %294 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %293, i32 0, i32 13
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %296, %292
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %294, align 4
  %299 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %300 = load i32, i32* @GMAC_TX_BC_PKTS_REG, align 4
  %301 = call i64 @dsaf_read_dev(%struct.mac_driver* %299, i32 %300)
  %302 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %303 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %302, i32 0, i32 12
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, %301
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %303, align 4
  %308 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %309 = load i32, i32* @GMAC_TX_PKTS_64OCTETS_REG, align 4
  %310 = call i64 @dsaf_read_dev(%struct.mac_driver* %308, i32 %309)
  %311 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %312 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %311, i32 0, i32 11
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %314, %310
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %312, align 4
  %317 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %318 = load i32, i32* @GMAC_TX_PKTS_65TO127OCTETS_REG, align 4
  %319 = call i64 @dsaf_read_dev(%struct.mac_driver* %317, i32 %318)
  %320 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %321 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %320, i32 0, i32 10
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %323, %319
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %321, align 4
  %326 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %327 = load i32, i32* @GMAC_TX_PKTS_128TO255OCTETS_REG, align 4
  %328 = call i64 @dsaf_read_dev(%struct.mac_driver* %326, i32 %327)
  %329 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %330 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %329, i32 0, i32 9
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %332, %328
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %330, align 4
  %335 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %336 = load i32, i32* @GMAC_TX_PKTS_255TO511OCTETS_REG, align 4
  %337 = call i64 @dsaf_read_dev(%struct.mac_driver* %335, i32 %336)
  %338 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %339 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %338, i32 0, i32 8
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %341, %337
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %339, align 4
  %344 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %345 = load i32, i32* @GMAC_TX_PKTS_512TO1023OCTETS_REG, align 4
  %346 = call i64 @dsaf_read_dev(%struct.mac_driver* %344, i32 %345)
  %347 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %348 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = add nsw i64 %350, %346
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %348, align 4
  %353 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %354 = load i32, i32* @GMAC_TX_PKTS_1024TO1518OCTETS_REG, align 4
  %355 = call i64 @dsaf_read_dev(%struct.mac_driver* %353, i32 %354)
  %356 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %357 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = add nsw i64 %359, %355
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %357, align 4
  %362 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %363 = load i32, i32* @GMAC_TX_PKTS_1519TOMAXOCTETS_REG, align 4
  %364 = call i64 @dsaf_read_dev(%struct.mac_driver* %362, i32 %363)
  %365 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %366 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = add nsw i64 %368, %364
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %366, align 4
  %371 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %372 = load i32, i32* @GMAC_TX_EXCESSIVE_LENGTH_DROP_REG, align 4
  %373 = call i64 @dsaf_read_dev(%struct.mac_driver* %371, i32 %372)
  %374 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %375 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %377, %373
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %375, align 4
  %380 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %381 = load i32, i32* @GMAC_TX_UNDERRUN_REG, align 4
  %382 = call i64 @dsaf_read_dev(%struct.mac_driver* %380, i32 %381)
  %383 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %384 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = add nsw i64 %386, %382
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %384, align 4
  %389 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %390 = load i32, i32* @GMAC_TX_TAGGED_REG, align 4
  %391 = call i64 @dsaf_read_dev(%struct.mac_driver* %389, i32 %390)
  %392 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %393 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = add nsw i64 %395, %391
  %397 = trunc i64 %396 to i32
  store i32 %397, i32* %393, align 4
  %398 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %399 = load i32, i32* @GMAC_TX_CRC_ERROR_REG, align 4
  %400 = call i64 @dsaf_read_dev(%struct.mac_driver* %398, i32 %399)
  %401 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %402 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = add nsw i64 %404, %400
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %402, align 4
  %407 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %408 = load i32, i32* @GMAC_TX_PAUSE_FRAMES_REG, align 4
  %409 = call i64 @dsaf_read_dev(%struct.mac_driver* %407, i32 %408)
  %410 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %3, align 8
  %411 = getelementptr inbounds %struct.mac_hw_stats, %struct.mac_hw_stats* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  %414 = add nsw i64 %413, %409
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %411, align 4
  ret void
}

declare dso_local i64 @dsaf_read_dev(%struct.mac_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
