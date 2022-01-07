; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_read_mmc_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_read_mmc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64, %struct.xlgmac_stats }
%struct.xlgmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MMC_CR = common dso_local global i64 0, align 8
@MMC_CR_MCF_POS = common dso_local global i32 0, align 4
@MMC_CR_MCF_LEN = common dso_local global i32 0, align 4
@MMC_TXOCTETCOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_TXFRAMECOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_TXBROADCASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_TXMULTICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_TX64OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX65TO127OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX128TO255OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX256TO511OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX512TO1023OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TX1024TOMAXOCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TXUNICASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TXMULTICASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TXBROADCASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TXUNDERFLOWERROR_LO = common dso_local global i32 0, align 4
@MMC_TXOCTETCOUNT_G_LO = common dso_local global i32 0, align 4
@MMC_TXFRAMECOUNT_G_LO = common dso_local global i32 0, align 4
@MMC_TXPAUSEFRAMES_LO = common dso_local global i32 0, align 4
@MMC_TXVLANFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_RXFRAMECOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_RXOCTETCOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_RXOCTETCOUNT_G_LO = common dso_local global i32 0, align 4
@MMC_RXBROADCASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_RXMULTICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_RXCRCERROR_LO = common dso_local global i32 0, align 4
@MMC_RXRUNTERROR = common dso_local global i32 0, align 4
@MMC_RXJABBERERROR = common dso_local global i32 0, align 4
@MMC_RXUNDERSIZE_G = common dso_local global i32 0, align 4
@MMC_RXOVERSIZE_G = common dso_local global i32 0, align 4
@MMC_RX64OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX65TO127OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX128TO255OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX256TO511OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX512TO1023OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RX1024TOMAXOCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_RXUNICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_RXLENGTHERROR_LO = common dso_local global i32 0, align 4
@MMC_RXOUTOFRANGETYPE_LO = common dso_local global i32 0, align 4
@MMC_RXPAUSEFRAMES_LO = common dso_local global i32 0, align 4
@MMC_RXFIFOOVERFLOW_LO = common dso_local global i32 0, align 4
@MMC_RXVLANFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_RXWATCHDOGERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_read_mmc_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_read_mmc_stats(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %5 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %5, i32 0, i32 1
  store %struct.xlgmac_stats* %6, %struct.xlgmac_stats** %3, align 8
  %7 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %8 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MMC_CR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MMC_CR_MCF_POS, align 4
  %15 = load i32, i32* @MMC_CR_MCF_LEN, align 4
  %16 = call i32 @XLGMAC_SET_REG_BITS(i32 %13, i32 %14, i32 %15, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %19 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MMC_CR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %25 = load i32, i32* @MMC_TXOCTETCOUNT_GB_LO, align 4
  %26 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %24, i32 %25)
  %27 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %28 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %27, i32 0, i32 39
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %34 = load i32, i32* @MMC_TXFRAMECOUNT_GB_LO, align 4
  %35 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %33, i32 %34)
  %36 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %37 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %36, i32 0, i32 38
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %43 = load i32, i32* @MMC_TXBROADCASTFRAMES_G_LO, align 4
  %44 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %42, i32 %43)
  %45 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %46 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %45, i32 0, i32 28
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %52 = load i32, i32* @MMC_TXMULTICASTFRAMES_G_LO, align 4
  %53 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %51, i32 %52)
  %54 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %55 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %54, i32 0, i32 37
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %61 = load i32, i32* @MMC_TX64OCTETS_GB_LO, align 4
  %62 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %60, i32 %61)
  %63 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %64 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %63, i32 0, i32 36
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %70 = load i32, i32* @MMC_TX65TO127OCTETS_GB_LO, align 4
  %71 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %69, i32 %70)
  %72 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %73 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %72, i32 0, i32 35
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %79 = load i32, i32* @MMC_TX128TO255OCTETS_GB_LO, align 4
  %80 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %78, i32 %79)
  %81 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %82 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %81, i32 0, i32 34
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %88 = load i32, i32* @MMC_TX256TO511OCTETS_GB_LO, align 4
  %89 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %87, i32 %88)
  %90 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %91 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %90, i32 0, i32 33
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %97 = load i32, i32* @MMC_TX512TO1023OCTETS_GB_LO, align 4
  %98 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %96, i32 %97)
  %99 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %100 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %99, i32 0, i32 32
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %106 = load i32, i32* @MMC_TX1024TOMAXOCTETS_GB_LO, align 4
  %107 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %105, i32 %106)
  %108 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %109 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %108, i32 0, i32 31
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %115 = load i32, i32* @MMC_TXUNICASTFRAMES_GB_LO, align 4
  %116 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %114, i32 %115)
  %117 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %118 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %117, i32 0, i32 30
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %124 = load i32, i32* @MMC_TXMULTICASTFRAMES_GB_LO, align 4
  %125 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %123, i32 %124)
  %126 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %127 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %126, i32 0, i32 29
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %133 = load i32, i32* @MMC_TXBROADCASTFRAMES_GB_LO, align 4
  %134 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %132, i32 %133)
  %135 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %136 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %135, i32 0, i32 28
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  %141 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %142 = load i32, i32* @MMC_TXUNDERFLOWERROR_LO, align 4
  %143 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %141, i32 %142)
  %144 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %145 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %144, i32 0, i32 27
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %143
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %151 = load i32, i32* @MMC_TXOCTETCOUNT_G_LO, align 4
  %152 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %150, i32 %151)
  %153 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %154 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %153, i32 0, i32 26
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %152
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %160 = load i32, i32* @MMC_TXFRAMECOUNT_G_LO, align 4
  %161 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %159, i32 %160)
  %162 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %163 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %162, i32 0, i32 25
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %161
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  %168 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %169 = load i32, i32* @MMC_TXPAUSEFRAMES_LO, align 4
  %170 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %168, i32 %169)
  %171 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %172 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %171, i32 0, i32 24
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %170
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 4
  %177 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %178 = load i32, i32* @MMC_TXVLANFRAMES_G_LO, align 4
  %179 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %177, i32 %178)
  %180 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %181 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %180, i32 0, i32 23
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %179
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %181, align 4
  %186 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %187 = load i32, i32* @MMC_RXFRAMECOUNT_GB_LO, align 4
  %188 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %186, i32 %187)
  %189 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %190 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %189, i32 0, i32 22
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 4
  %195 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %196 = load i32, i32* @MMC_RXOCTETCOUNT_GB_LO, align 4
  %197 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %195, i32 %196)
  %198 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %199 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %198, i32 0, i32 21
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %197
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %199, align 4
  %204 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %205 = load i32, i32* @MMC_RXOCTETCOUNT_G_LO, align 4
  %206 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %204, i32 %205)
  %207 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %208 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %207, i32 0, i32 20
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %206
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %208, align 4
  %213 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %214 = load i32, i32* @MMC_RXBROADCASTFRAMES_G_LO, align 4
  %215 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %213, i32 %214)
  %216 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %217 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %216, i32 0, i32 19
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %215
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %217, align 4
  %222 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %223 = load i32, i32* @MMC_RXMULTICASTFRAMES_G_LO, align 4
  %224 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %222, i32 %223)
  %225 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %226 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %225, i32 0, i32 18
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %224
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %226, align 4
  %231 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %232 = load i32, i32* @MMC_RXCRCERROR_LO, align 4
  %233 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %231, i32 %232)
  %234 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %235 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %234, i32 0, i32 17
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %237, %233
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %235, align 4
  %240 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %241 = load i32, i32* @MMC_RXRUNTERROR, align 4
  %242 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %240, i32 %241)
  %243 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %244 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %243, i32 0, i32 16
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %242
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 4
  %249 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %250 = load i32, i32* @MMC_RXJABBERERROR, align 4
  %251 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %249, i32 %250)
  %252 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %253 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %252, i32 0, i32 15
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 4
  %258 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %259 = load i32, i32* @MMC_RXUNDERSIZE_G, align 4
  %260 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %258, i32 %259)
  %261 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %262 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %261, i32 0, i32 14
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %260
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 4
  %267 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %268 = load i32, i32* @MMC_RXOVERSIZE_G, align 4
  %269 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %267, i32 %268)
  %270 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %271 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %270, i32 0, i32 13
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %269
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %271, align 4
  %276 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %277 = load i32, i32* @MMC_RX64OCTETS_GB_LO, align 4
  %278 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %276, i32 %277)
  %279 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %280 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %279, i32 0, i32 12
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %282, %278
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %280, align 4
  %285 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %286 = load i32, i32* @MMC_RX65TO127OCTETS_GB_LO, align 4
  %287 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %285, i32 %286)
  %288 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %289 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %288, i32 0, i32 11
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %287
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %289, align 4
  %294 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %295 = load i32, i32* @MMC_RX128TO255OCTETS_GB_LO, align 4
  %296 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %294, i32 %295)
  %297 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %298 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %297, i32 0, i32 10
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %300, %296
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %298, align 4
  %303 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %304 = load i32, i32* @MMC_RX256TO511OCTETS_GB_LO, align 4
  %305 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %303, i32 %304)
  %306 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %307 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %306, i32 0, i32 9
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %309, %305
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %307, align 4
  %312 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %313 = load i32, i32* @MMC_RX512TO1023OCTETS_GB_LO, align 4
  %314 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %312, i32 %313)
  %315 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %316 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %315, i32 0, i32 8
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = add nsw i64 %318, %314
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %316, align 4
  %321 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %322 = load i32, i32* @MMC_RX1024TOMAXOCTETS_GB_LO, align 4
  %323 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %321, i32 %322)
  %324 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %325 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = add nsw i64 %327, %323
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %325, align 4
  %330 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %331 = load i32, i32* @MMC_RXUNICASTFRAMES_G_LO, align 4
  %332 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %330, i32 %331)
  %333 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %334 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = add nsw i64 %336, %332
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %334, align 4
  %339 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %340 = load i32, i32* @MMC_RXLENGTHERROR_LO, align 4
  %341 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %339, i32 %340)
  %342 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %343 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = add nsw i64 %345, %341
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %343, align 4
  %348 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %349 = load i32, i32* @MMC_RXOUTOFRANGETYPE_LO, align 4
  %350 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %348, i32 %349)
  %351 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %352 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %351, i32 0, i32 4
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %354, %350
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %352, align 4
  %357 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %358 = load i32, i32* @MMC_RXPAUSEFRAMES_LO, align 4
  %359 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %357, i32 %358)
  %360 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %361 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %363, %359
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %361, align 4
  %366 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %367 = load i32, i32* @MMC_RXFIFOOVERFLOW_LO, align 4
  %368 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %366, i32 %367)
  %369 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %370 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %372, %368
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %370, align 4
  %375 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %376 = load i32, i32* @MMC_RXVLANFRAMES_GB_LO, align 4
  %377 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %375, i32 %376)
  %378 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %379 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %381, %377
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %379, align 4
  %384 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %385 = load i32, i32* @MMC_RXWATCHDOGERROR, align 4
  %386 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %384, i32 %385)
  %387 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %3, align 8
  %388 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %390, %386
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %388, align 4
  %393 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %394 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @MMC_CR, align 8
  %397 = add nsw i64 %395, %396
  %398 = call i32 @readl(i64 %397)
  store i32 %398, i32* %4, align 4
  %399 = load i32, i32* %4, align 4
  %400 = load i32, i32* @MMC_CR_MCF_POS, align 4
  %401 = load i32, i32* @MMC_CR_MCF_LEN, align 4
  %402 = call i32 @XLGMAC_SET_REG_BITS(i32 %399, i32 %400, i32 %401, i32 0)
  store i32 %402, i32* %4, align 4
  %403 = load i32, i32* %4, align 4
  %404 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %405 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @MMC_CR, align 8
  %408 = add nsw i64 %406, %407
  %409 = call i32 @writel(i32 %403, i64 %408)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @xlgmac_mmc_read(%struct.xlgmac_pdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
