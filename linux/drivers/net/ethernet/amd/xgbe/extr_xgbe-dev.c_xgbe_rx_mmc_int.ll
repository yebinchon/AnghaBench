; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_rx_mmc_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_rx_mmc_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_mmc_stats }
%struct.xgbe_mmc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MMC_RISR = common dso_local global i32 0, align 4
@RXFRAMECOUNT_GB = common dso_local global i32 0, align 4
@MMC_RXFRAMECOUNT_GB_LO = common dso_local global i32 0, align 4
@RXOCTETCOUNT_GB = common dso_local global i32 0, align 4
@MMC_RXOCTETCOUNT_GB_LO = common dso_local global i32 0, align 4
@RXOCTETCOUNT_G = common dso_local global i32 0, align 4
@MMC_RXOCTETCOUNT_G_LO = common dso_local global i32 0, align 4
@RXBROADCASTFRAMES_G = common dso_local global i32 0, align 4
@MMC_RXBROADCASTFRAMES_G_LO = common dso_local global i32 0, align 4
@RXMULTICASTFRAMES_G = common dso_local global i32 0, align 4
@MMC_RXMULTICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@RXCRCERROR = common dso_local global i32 0, align 4
@MMC_RXCRCERROR_LO = common dso_local global i32 0, align 4
@RXRUNTERROR = common dso_local global i32 0, align 4
@MMC_RXRUNTERROR = common dso_local global i32 0, align 4
@RXJABBERERROR = common dso_local global i32 0, align 4
@MMC_RXJABBERERROR = common dso_local global i32 0, align 4
@RXUNDERSIZE_G = common dso_local global i32 0, align 4
@MMC_RXUNDERSIZE_G = common dso_local global i32 0, align 4
@RXOVERSIZE_G = common dso_local global i32 0, align 4
@MMC_RXOVERSIZE_G = common dso_local global i32 0, align 4
@RX64OCTETS_GB = common dso_local global i32 0, align 4
@MMC_RX64OCTETS_GB_LO = common dso_local global i32 0, align 4
@RX65TO127OCTETS_GB = common dso_local global i32 0, align 4
@MMC_RX65TO127OCTETS_GB_LO = common dso_local global i32 0, align 4
@RX128TO255OCTETS_GB = common dso_local global i32 0, align 4
@MMC_RX128TO255OCTETS_GB_LO = common dso_local global i32 0, align 4
@RX256TO511OCTETS_GB = common dso_local global i32 0, align 4
@MMC_RX256TO511OCTETS_GB_LO = common dso_local global i32 0, align 4
@RX512TO1023OCTETS_GB = common dso_local global i32 0, align 4
@MMC_RX512TO1023OCTETS_GB_LO = common dso_local global i32 0, align 4
@RX1024TOMAXOCTETS_GB = common dso_local global i32 0, align 4
@MMC_RX1024TOMAXOCTETS_GB_LO = common dso_local global i32 0, align 4
@RXUNICASTFRAMES_G = common dso_local global i32 0, align 4
@MMC_RXUNICASTFRAMES_G_LO = common dso_local global i32 0, align 4
@RXLENGTHERROR = common dso_local global i32 0, align 4
@MMC_RXLENGTHERROR_LO = common dso_local global i32 0, align 4
@RXOUTOFRANGETYPE = common dso_local global i32 0, align 4
@MMC_RXOUTOFRANGETYPE_LO = common dso_local global i32 0, align 4
@RXPAUSEFRAMES = common dso_local global i32 0, align 4
@MMC_RXPAUSEFRAMES_LO = common dso_local global i32 0, align 4
@RXFIFOOVERFLOW = common dso_local global i32 0, align 4
@MMC_RXFIFOOVERFLOW_LO = common dso_local global i32 0, align 4
@RXVLANFRAMES_GB = common dso_local global i32 0, align 4
@MMC_RXVLANFRAMES_GB_LO = common dso_local global i32 0, align 4
@RXWATCHDOGERROR = common dso_local global i32 0, align 4
@MMC_RXWATCHDOGERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_rx_mmc_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_rx_mmc_int(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_mmc_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 0
  store %struct.xgbe_mmc_stats* %6, %struct.xgbe_mmc_stats** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = load i32, i32* @MMC_RISR, align 4
  %9 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MMC_RISR, align 4
  %12 = load i32, i32* @RXFRAMECOUNT_GB, align 4
  %13 = call i64 @XGMAC_GET_BITS(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = load i32, i32* @MMC_RXFRAMECOUNT_GB_LO, align 4
  %18 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %16, i32 %17)
  %19 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %20 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %19, i32 0, i32 22
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  br label %25

25:                                               ; preds = %15, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MMC_RISR, align 4
  %28 = load i32, i32* @RXOCTETCOUNT_GB, align 4
  %29 = call i64 @XGMAC_GET_BITS(i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %33 = load i32, i32* @MMC_RXOCTETCOUNT_GB_LO, align 4
  %34 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %32, i32 %33)
  %35 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %35, i32 0, i32 21
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  br label %41

41:                                               ; preds = %31, %25
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MMC_RISR, align 4
  %44 = load i32, i32* @RXOCTETCOUNT_G, align 4
  %45 = call i64 @XGMAC_GET_BITS(i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %49 = load i32, i32* @MMC_RXOCTETCOUNT_G_LO, align 4
  %50 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %48, i32 %49)
  %51 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %52 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %51, i32 0, i32 20
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  br label %57

57:                                               ; preds = %47, %41
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @MMC_RISR, align 4
  %60 = load i32, i32* @RXBROADCASTFRAMES_G, align 4
  %61 = call i64 @XGMAC_GET_BITS(i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = load i32, i32* @MMC_RXBROADCASTFRAMES_G_LO, align 4
  %66 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %64, i32 %65)
  %67 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %68 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %67, i32 0, i32 19
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  br label %73

73:                                               ; preds = %63, %57
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @MMC_RISR, align 4
  %76 = load i32, i32* @RXMULTICASTFRAMES_G, align 4
  %77 = call i64 @XGMAC_GET_BITS(i32 %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %81 = load i32, i32* @MMC_RXMULTICASTFRAMES_G_LO, align 4
  %82 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %80, i32 %81)
  %83 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %84 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %83, i32 0, i32 18
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  br label %89

89:                                               ; preds = %79, %73
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @MMC_RISR, align 4
  %92 = load i32, i32* @RXCRCERROR, align 4
  %93 = call i64 @XGMAC_GET_BITS(i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %97 = load i32, i32* @MMC_RXCRCERROR_LO, align 4
  %98 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %96, i32 %97)
  %99 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %100 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %99, i32 0, i32 17
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  br label %105

105:                                              ; preds = %95, %89
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @MMC_RISR, align 4
  %108 = load i32, i32* @RXRUNTERROR, align 4
  %109 = call i64 @XGMAC_GET_BITS(i32 %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %113 = load i32, i32* @MMC_RXRUNTERROR, align 4
  %114 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %112, i32 %113)
  %115 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %116 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %115, i32 0, i32 16
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  br label %121

121:                                              ; preds = %111, %105
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @MMC_RISR, align 4
  %124 = load i32, i32* @RXJABBERERROR, align 4
  %125 = call i64 @XGMAC_GET_BITS(i32 %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %129 = load i32, i32* @MMC_RXJABBERERROR, align 4
  %130 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %128, i32 %129)
  %131 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %132 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %131, i32 0, i32 15
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  br label %137

137:                                              ; preds = %127, %121
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @MMC_RISR, align 4
  %140 = load i32, i32* @RXUNDERSIZE_G, align 4
  %141 = call i64 @XGMAC_GET_BITS(i32 %138, i32 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %145 = load i32, i32* @MMC_RXUNDERSIZE_G, align 4
  %146 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %144, i32 %145)
  %147 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %148 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %147, i32 0, i32 14
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  br label %153

153:                                              ; preds = %143, %137
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @MMC_RISR, align 4
  %156 = load i32, i32* @RXOVERSIZE_G, align 4
  %157 = call i64 @XGMAC_GET_BITS(i32 %154, i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %161 = load i32, i32* @MMC_RXOVERSIZE_G, align 4
  %162 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %160, i32 %161)
  %163 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %164 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %163, i32 0, i32 13
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %162
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  br label %169

169:                                              ; preds = %159, %153
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @MMC_RISR, align 4
  %172 = load i32, i32* @RX64OCTETS_GB, align 4
  %173 = call i64 @XGMAC_GET_BITS(i32 %170, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %169
  %176 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %177 = load i32, i32* @MMC_RX64OCTETS_GB_LO, align 4
  %178 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %176, i32 %177)
  %179 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %180 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 4
  br label %185

185:                                              ; preds = %175, %169
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @MMC_RISR, align 4
  %188 = load i32, i32* @RX65TO127OCTETS_GB, align 4
  %189 = call i64 @XGMAC_GET_BITS(i32 %186, i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %193 = load i32, i32* @MMC_RX65TO127OCTETS_GB_LO, align 4
  %194 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %192, i32 %193)
  %195 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %196 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %194
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  br label %201

201:                                              ; preds = %191, %185
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @MMC_RISR, align 4
  %204 = load i32, i32* @RX128TO255OCTETS_GB, align 4
  %205 = call i64 @XGMAC_GET_BITS(i32 %202, i32 %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %201
  %208 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %209 = load i32, i32* @MMC_RX128TO255OCTETS_GB_LO, align 4
  %210 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %208, i32 %209)
  %211 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %212 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %210
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 4
  br label %217

217:                                              ; preds = %207, %201
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @MMC_RISR, align 4
  %220 = load i32, i32* @RX256TO511OCTETS_GB, align 4
  %221 = call i64 @XGMAC_GET_BITS(i32 %218, i32 %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %217
  %224 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %225 = load i32, i32* @MMC_RX256TO511OCTETS_GB_LO, align 4
  %226 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %224, i32 %225)
  %227 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %228 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %226
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %228, align 4
  br label %233

233:                                              ; preds = %223, %217
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @MMC_RISR, align 4
  %236 = load i32, i32* @RX512TO1023OCTETS_GB, align 4
  %237 = call i64 @XGMAC_GET_BITS(i32 %234, i32 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %233
  %240 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %241 = load i32, i32* @MMC_RX512TO1023OCTETS_GB_LO, align 4
  %242 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %240, i32 %241)
  %243 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %244 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %242
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 4
  br label %249

249:                                              ; preds = %239, %233
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @MMC_RISR, align 4
  %252 = load i32, i32* @RX1024TOMAXOCTETS_GB, align 4
  %253 = call i64 @XGMAC_GET_BITS(i32 %250, i32 %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %249
  %256 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %257 = load i32, i32* @MMC_RX1024TOMAXOCTETS_GB_LO, align 4
  %258 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %256, i32 %257)
  %259 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %260 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %258
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %260, align 4
  br label %265

265:                                              ; preds = %255, %249
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @MMC_RISR, align 4
  %268 = load i32, i32* @RXUNICASTFRAMES_G, align 4
  %269 = call i64 @XGMAC_GET_BITS(i32 %266, i32 %267, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %265
  %272 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %273 = load i32, i32* @MMC_RXUNICASTFRAMES_G_LO, align 4
  %274 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %272, i32 %273)
  %275 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %276 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %278, %274
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 4
  br label %281

281:                                              ; preds = %271, %265
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* @MMC_RISR, align 4
  %284 = load i32, i32* @RXLENGTHERROR, align 4
  %285 = call i64 @XGMAC_GET_BITS(i32 %282, i32 %283, i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %281
  %288 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %289 = load i32, i32* @MMC_RXLENGTHERROR_LO, align 4
  %290 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %288, i32 %289)
  %291 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %292 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = add nsw i64 %294, %290
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %292, align 4
  br label %297

297:                                              ; preds = %287, %281
  %298 = load i32, i32* %4, align 4
  %299 = load i32, i32* @MMC_RISR, align 4
  %300 = load i32, i32* @RXOUTOFRANGETYPE, align 4
  %301 = call i64 @XGMAC_GET_BITS(i32 %298, i32 %299, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %297
  %304 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %305 = load i32, i32* @MMC_RXOUTOFRANGETYPE_LO, align 4
  %306 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %304, i32 %305)
  %307 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %308 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = add nsw i64 %310, %306
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %308, align 4
  br label %313

313:                                              ; preds = %303, %297
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* @MMC_RISR, align 4
  %316 = load i32, i32* @RXPAUSEFRAMES, align 4
  %317 = call i64 @XGMAC_GET_BITS(i32 %314, i32 %315, i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %313
  %320 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %321 = load i32, i32* @MMC_RXPAUSEFRAMES_LO, align 4
  %322 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %320, i32 %321)
  %323 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %324 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = add nsw i64 %326, %322
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %324, align 4
  br label %329

329:                                              ; preds = %319, %313
  %330 = load i32, i32* %4, align 4
  %331 = load i32, i32* @MMC_RISR, align 4
  %332 = load i32, i32* @RXFIFOOVERFLOW, align 4
  %333 = call i64 @XGMAC_GET_BITS(i32 %330, i32 %331, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %329
  %336 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %337 = load i32, i32* @MMC_RXFIFOOVERFLOW_LO, align 4
  %338 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %336, i32 %337)
  %339 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %340 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = add nsw i64 %342, %338
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %340, align 4
  br label %345

345:                                              ; preds = %335, %329
  %346 = load i32, i32* %4, align 4
  %347 = load i32, i32* @MMC_RISR, align 4
  %348 = load i32, i32* @RXVLANFRAMES_GB, align 4
  %349 = call i64 @XGMAC_GET_BITS(i32 %346, i32 %347, i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %345
  %352 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %353 = load i32, i32* @MMC_RXVLANFRAMES_GB_LO, align 4
  %354 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %352, i32 %353)
  %355 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %356 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %358, %354
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %356, align 4
  br label %361

361:                                              ; preds = %351, %345
  %362 = load i32, i32* %4, align 4
  %363 = load i32, i32* @MMC_RISR, align 4
  %364 = load i32, i32* @RXWATCHDOGERROR, align 4
  %365 = call i64 @XGMAC_GET_BITS(i32 %362, i32 %363, i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %377

367:                                              ; preds = %361
  %368 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %369 = load i32, i32* @MMC_RXWATCHDOGERROR, align 4
  %370 = call i64 @xgbe_mmc_read(%struct.xgbe_prv_data* %368, i32 %369)
  %371 = load %struct.xgbe_mmc_stats*, %struct.xgbe_mmc_stats** %3, align 8
  %372 = getelementptr inbounds %struct.xgbe_mmc_stats, %struct.xgbe_mmc_stats* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = add nsw i64 %374, %370
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %372, align 4
  br label %377

377:                                              ; preds = %367, %361
  ret void
}

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i64 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i64 @xgbe_mmc_read(%struct.xgbe_prv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
