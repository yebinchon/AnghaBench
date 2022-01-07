; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_tx_mmc_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_tx_mmc_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { %struct.xlgmac_stats, i64 }
%struct.xlgmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MMC_TISR = common dso_local global i64 0, align 8
@MMC_TISR_TXOCTETCOUNT_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXOCTETCOUNT_GB_LEN = common dso_local global i32 0, align 4
@MMC_TXOCTETCOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXFRAMECOUNT_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXFRAMECOUNT_GB_LEN = common dso_local global i32 0, align 4
@MMC_TXFRAMECOUNT_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXBROADCASTFRAMES_G_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXBROADCASTFRAMES_G_LEN = common dso_local global i32 0, align 4
@MMC_TXBROADCASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXMULTICASTFRAMES_G_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXMULTICASTFRAMES_G_LEN = common dso_local global i32 0, align 4
@MMC_TXMULTICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@MMC_TISR_TX64OCTETS_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TX64OCTETS_GB_LEN = common dso_local global i32 0, align 4
@MMC_TX64OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TX65TO127OCTETS_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TX65TO127OCTETS_GB_LEN = common dso_local global i32 0, align 4
@MMC_TX65TO127OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TX128TO255OCTETS_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TX128TO255OCTETS_GB_LEN = common dso_local global i32 0, align 4
@MMC_TX128TO255OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TX256TO511OCTETS_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TX256TO511OCTETS_GB_LEN = common dso_local global i32 0, align 4
@MMC_TX256TO511OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TX512TO1023OCTETS_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TX512TO1023OCTETS_GB_LEN = common dso_local global i32 0, align 4
@MMC_TX512TO1023OCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TX1024TOMAXOCTETS_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TX1024TOMAXOCTETS_GB_LEN = common dso_local global i32 0, align 4
@MMC_TX1024TOMAXOCTETS_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXUNICASTFRAMES_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXUNICASTFRAMES_GB_LEN = common dso_local global i32 0, align 4
@MMC_TXUNICASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXMULTICASTFRAMES_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXMULTICASTFRAMES_GB_LEN = common dso_local global i32 0, align 4
@MMC_TXMULTICASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXBROADCASTFRAMES_GB_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXBROADCASTFRAMES_GB_LEN = common dso_local global i32 0, align 4
@MMC_TXBROADCASTFRAMES_GB_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXUNDERFLOWERROR_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXUNDERFLOWERROR_LEN = common dso_local global i32 0, align 4
@MMC_TXUNDERFLOWERROR_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXOCTETCOUNT_G_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXOCTETCOUNT_G_LEN = common dso_local global i32 0, align 4
@MMC_TXOCTETCOUNT_G_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXFRAMECOUNT_G_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXFRAMECOUNT_G_LEN = common dso_local global i32 0, align 4
@MMC_TXFRAMECOUNT_G_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXPAUSEFRAMES_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXPAUSEFRAMES_LEN = common dso_local global i32 0, align 4
@MMC_TXPAUSEFRAMES_LO = common dso_local global i32 0, align 4
@MMC_TISR_TXVLANFRAMES_G_POS = common dso_local global i32 0, align 4
@MMC_TISR_TXVLANFRAMES_G_LEN = common dso_local global i32 0, align 4
@MMC_TXVLANFRAMES_G_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_tx_mmc_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_tx_mmc_int(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlgmac_stats*, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %5 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMC_TISR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 0
  store %struct.xlgmac_stats* %12, %struct.xlgmac_stats** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MMC_TISR_TXOCTETCOUNT_GB_POS, align 4
  %15 = load i32, i32* @MMC_TISR_TXOCTETCOUNT_GB_LEN, align 4
  %16 = call i64 @XLGMAC_GET_REG_BITS(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %20 = load i32, i32* @MMC_TXOCTETCOUNT_GB_LO, align 4
  %21 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %19, i32 %20)
  %22 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %23 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %22, i32 0, i32 16
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  br label %28

28:                                               ; preds = %18, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MMC_TISR_TXFRAMECOUNT_GB_POS, align 4
  %31 = load i32, i32* @MMC_TISR_TXFRAMECOUNT_GB_LEN, align 4
  %32 = call i64 @XLGMAC_GET_REG_BITS(i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %36 = load i32, i32* @MMC_TXFRAMECOUNT_GB_LO, align 4
  %37 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %35, i32 %36)
  %38 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %39 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  br label %44

44:                                               ; preds = %34, %28
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @MMC_TISR_TXBROADCASTFRAMES_G_POS, align 4
  %47 = load i32, i32* @MMC_TISR_TXBROADCASTFRAMES_G_LEN, align 4
  %48 = call i64 @XLGMAC_GET_REG_BITS(i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %52 = load i32, i32* @MMC_TXBROADCASTFRAMES_G_LO, align 4
  %53 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %51, i32 %52)
  %54 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %55 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %60

60:                                               ; preds = %50, %44
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @MMC_TISR_TXMULTICASTFRAMES_G_POS, align 4
  %63 = load i32, i32* @MMC_TISR_TXMULTICASTFRAMES_G_LEN, align 4
  %64 = call i64 @XLGMAC_GET_REG_BITS(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %68 = load i32, i32* @MMC_TXMULTICASTFRAMES_G_LO, align 4
  %69 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %67, i32 %68)
  %70 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %71 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  br label %76

76:                                               ; preds = %66, %60
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @MMC_TISR_TX64OCTETS_GB_POS, align 4
  %79 = load i32, i32* @MMC_TISR_TX64OCTETS_GB_LEN, align 4
  %80 = call i64 @XLGMAC_GET_REG_BITS(i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %84 = load i32, i32* @MMC_TX64OCTETS_GB_LO, align 4
  %85 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %83, i32 %84)
  %86 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %87 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %86, i32 0, i32 13
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  br label %92

92:                                               ; preds = %82, %76
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @MMC_TISR_TX65TO127OCTETS_GB_POS, align 4
  %95 = load i32, i32* @MMC_TISR_TX65TO127OCTETS_GB_LEN, align 4
  %96 = call i64 @XLGMAC_GET_REG_BITS(i32 %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %100 = load i32, i32* @MMC_TX65TO127OCTETS_GB_LO, align 4
  %101 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %99, i32 %100)
  %102 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %103 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  br label %108

108:                                              ; preds = %98, %92
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @MMC_TISR_TX128TO255OCTETS_GB_POS, align 4
  %111 = load i32, i32* @MMC_TISR_TX128TO255OCTETS_GB_LEN, align 4
  %112 = call i64 @XLGMAC_GET_REG_BITS(i32 %109, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %116 = load i32, i32* @MMC_TX128TO255OCTETS_GB_LO, align 4
  %117 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %115, i32 %116)
  %118 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %119 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  br label %124

124:                                              ; preds = %114, %108
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @MMC_TISR_TX256TO511OCTETS_GB_POS, align 4
  %127 = load i32, i32* @MMC_TISR_TX256TO511OCTETS_GB_LEN, align 4
  %128 = call i64 @XLGMAC_GET_REG_BITS(i32 %125, i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %132 = load i32, i32* @MMC_TX256TO511OCTETS_GB_LO, align 4
  %133 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %131, i32 %132)
  %134 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %135 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 4
  br label %140

140:                                              ; preds = %130, %124
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @MMC_TISR_TX512TO1023OCTETS_GB_POS, align 4
  %143 = load i32, i32* @MMC_TISR_TX512TO1023OCTETS_GB_LEN, align 4
  %144 = call i64 @XLGMAC_GET_REG_BITS(i32 %141, i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %148 = load i32, i32* @MMC_TX512TO1023OCTETS_GB_LO, align 4
  %149 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %147, i32 %148)
  %150 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %151 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  br label %156

156:                                              ; preds = %146, %140
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @MMC_TISR_TX1024TOMAXOCTETS_GB_POS, align 4
  %159 = load i32, i32* @MMC_TISR_TX1024TOMAXOCTETS_GB_LEN, align 4
  %160 = call i64 @XLGMAC_GET_REG_BITS(i32 %157, i32 %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %156
  %163 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %164 = load i32, i32* @MMC_TX1024TOMAXOCTETS_GB_LO, align 4
  %165 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %163, i32 %164)
  %166 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %167 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 4
  br label %172

172:                                              ; preds = %162, %156
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @MMC_TISR_TXUNICASTFRAMES_GB_POS, align 4
  %175 = load i32, i32* @MMC_TISR_TXUNICASTFRAMES_GB_LEN, align 4
  %176 = call i64 @XLGMAC_GET_REG_BITS(i32 %173, i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %172
  %179 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %180 = load i32, i32* @MMC_TXUNICASTFRAMES_GB_LO, align 4
  %181 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %179, i32 %180)
  %182 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %183 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %181
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  br label %188

188:                                              ; preds = %178, %172
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* @MMC_TISR_TXMULTICASTFRAMES_GB_POS, align 4
  %191 = load i32, i32* @MMC_TISR_TXMULTICASTFRAMES_GB_LEN, align 4
  %192 = call i64 @XLGMAC_GET_REG_BITS(i32 %189, i32 %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %188
  %195 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %196 = load i32, i32* @MMC_TXMULTICASTFRAMES_GB_LO, align 4
  %197 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %195, i32 %196)
  %198 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %199 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %197
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %199, align 4
  br label %204

204:                                              ; preds = %194, %188
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @MMC_TISR_TXBROADCASTFRAMES_GB_POS, align 4
  %207 = load i32, i32* @MMC_TISR_TXBROADCASTFRAMES_GB_LEN, align 4
  %208 = call i64 @XLGMAC_GET_REG_BITS(i32 %205, i32 %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %204
  %211 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %212 = load i32, i32* @MMC_TXBROADCASTFRAMES_GB_LO, align 4
  %213 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %211, i32 %212)
  %214 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %215 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %213
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %215, align 4
  br label %220

220:                                              ; preds = %210, %204
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* @MMC_TISR_TXUNDERFLOWERROR_POS, align 4
  %223 = load i32, i32* @MMC_TISR_TXUNDERFLOWERROR_LEN, align 4
  %224 = call i64 @XLGMAC_GET_REG_BITS(i32 %221, i32 %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %220
  %227 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %228 = load i32, i32* @MMC_TXUNDERFLOWERROR_LO, align 4
  %229 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %227, i32 %228)
  %230 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %231 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %229
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 4
  br label %236

236:                                              ; preds = %226, %220
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* @MMC_TISR_TXOCTETCOUNT_G_POS, align 4
  %239 = load i32, i32* @MMC_TISR_TXOCTETCOUNT_G_LEN, align 4
  %240 = call i64 @XLGMAC_GET_REG_BITS(i32 %237, i32 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %236
  %243 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %244 = load i32, i32* @MMC_TXOCTETCOUNT_G_LO, align 4
  %245 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %243, i32 %244)
  %246 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %247 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %245
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %247, align 4
  br label %252

252:                                              ; preds = %242, %236
  %253 = load i32, i32* %3, align 4
  %254 = load i32, i32* @MMC_TISR_TXFRAMECOUNT_G_POS, align 4
  %255 = load i32, i32* @MMC_TISR_TXFRAMECOUNT_G_LEN, align 4
  %256 = call i64 @XLGMAC_GET_REG_BITS(i32 %253, i32 %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %252
  %259 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %260 = load i32, i32* @MMC_TXFRAMECOUNT_G_LO, align 4
  %261 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %259, i32 %260)
  %262 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %263 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %261
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %263, align 4
  br label %268

268:                                              ; preds = %258, %252
  %269 = load i32, i32* %3, align 4
  %270 = load i32, i32* @MMC_TISR_TXPAUSEFRAMES_POS, align 4
  %271 = load i32, i32* @MMC_TISR_TXPAUSEFRAMES_LEN, align 4
  %272 = call i64 @XLGMAC_GET_REG_BITS(i32 %269, i32 %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %268
  %275 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %276 = load i32, i32* @MMC_TXPAUSEFRAMES_LO, align 4
  %277 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %275, i32 %276)
  %278 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %279 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %277
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %279, align 4
  br label %284

284:                                              ; preds = %274, %268
  %285 = load i32, i32* %3, align 4
  %286 = load i32, i32* @MMC_TISR_TXVLANFRAMES_G_POS, align 4
  %287 = load i32, i32* @MMC_TISR_TXVLANFRAMES_G_LEN, align 4
  %288 = call i64 @XLGMAC_GET_REG_BITS(i32 %285, i32 %286, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %284
  %291 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %292 = load i32, i32* @MMC_TXVLANFRAMES_G_LO, align 4
  %293 = call i64 @xlgmac_mmc_read(%struct.xlgmac_pdata* %291, i32 %292)
  %294 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %4, align 8
  %295 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %297, %293
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %295, align 4
  br label %300

300:                                              ; preds = %290, %284
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

declare dso_local i64 @xlgmac_mmc_read(%struct.xlgmac_pdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
