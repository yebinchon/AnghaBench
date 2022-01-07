; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_of_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_of_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_esdhc = type { i64, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64* }

@VENDOR_V_23 = common dso_local global i64 0, align 8
@MMC_TIMING_LEGACY = common dso_local global i64 0, align 8
@ESDHC_SYSTEM_CONTROL = common dso_local global i32 0, align 4
@ESDHC_CLOCK_SDCLKEN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_IPGEN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_HCKEN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_PEREN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_MASK = common dso_local global i32 0, align 4
@MMC_HS200_MAX_DTR = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@SDHCI_HS400_TUNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: using unsupported clock division.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"desired SD clock: %d, actual: %d\0A\00", align 1
@ESDHC_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@ESDHC_PREDIV_SHIFT = common dso_local global i32 0, align 4
@ESDHC_TBCTL = common dso_local global i32 0, align 4
@ESDHC_HS400_MODE = common dso_local global i32 0, align 4
@ESDHC_SDCLKCTL = common dso_local global i32 0, align 4
@ESDHC_CMD_CLK_CTL = common dso_local global i32 0, align 4
@ESDHC_DLLCFG0 = common dso_local global i32 0, align 4
@ESDHC_DLL_ENABLE = common dso_local global i32 0, align 4
@ESDHC_DLL_FREQ_SEL = common dso_local global i32 0, align 4
@ESDHC_HS400_WNDW_ADJUST = common dso_local global i32 0, align 4
@ESDHC_DMA_SYSCTL = common dso_local global i32 0, align 4
@ESDHC_FLUSH_ASYNC_FIFO = common dso_local global i32 0, align 4
@ESDHC_PRSSTAT = common dso_local global i32 0, align 4
@ESDHC_CLOCK_STABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Internal clock never stabilised.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @esdhc_of_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_of_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_esdhc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %14)
  store %struct.sdhci_pltfm_host* %15, %struct.sdhci_pltfm_host** %5, align 8
  %16 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %17 = call %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %16)
  store %struct.sdhci_esdhc* %17, %struct.sdhci_esdhc** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %26 = call i32 @esdhc_clock_enable(%struct.sdhci_host* %25, i32 0)
  br label %373

27:                                               ; preds = %2
  %28 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VENDOR_V_23, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 2, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %43 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @mmc_card_sd(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %41
  %50 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %51 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %56 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MMC_TIMING_LEGACY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %65 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  br label %89

69:                                               ; preds = %54, %49, %41, %34
  %70 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %71 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = icmp ne %struct.TYPE_5__* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %76 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %79, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %74, %69
  br label %89

89:                                               ; preds = %88, %63
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %11, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i64, i64* %11, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %92, %89
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %102 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %103 = call i32 @sdhci_readl(%struct.sdhci_host* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* @ESDHC_CLOCK_SDCLKEN, align 4
  %105 = load i32, i32* @ESDHC_CLOCK_IPGEN, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @ESDHC_CLOCK_HCKEN, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @ESDHC_CLOCK_PEREN, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @ESDHC_CLOCK_MASK, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %12, align 4
  %116 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %119 = call i32 @sdhci_writel(%struct.sdhci_host* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %134, %100
  %121 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %122 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sdiv i32 %123, %124
  %126 = sdiv i32 %125, 16
  %127 = load i32, i32* %4, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 256
  br label %132

132:                                              ; preds = %129, %120
  %133 = phi i1 [ false, %120 ], [ %131, %129 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i32, i32* %7, align 4
  %136 = mul nsw i32 %135, 2
  store i32 %136, i32* %7, align 4
  br label %120

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %153, %137
  %139 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %140 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sdiv i32 %141, %142
  %144 = load i32, i32* %8, align 4
  %145 = sdiv i32 %143, %144
  %146 = load i32, i32* %4, align 4
  %147 = icmp ugt i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 16
  br label %151

151:                                              ; preds = %148, %138
  %152 = phi i1 [ false, %138 ], [ %150, %148 ]
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %138

156:                                              ; preds = %151
  %157 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %158 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %205

161:                                              ; preds = %156
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %205

165:                                              ; preds = %161
  %166 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %167 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %166, i32 0, i32 2
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %181, label %174

174:                                              ; preds = %165
  %175 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %176 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @SDHCI_HS400_TUNING, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %174, %165
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = mul nsw i32 %182, %183
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp sle i32 %185, 4
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i32 4, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %204

188:                                              ; preds = %181
  %189 = load i32, i32* %9, align 4
  %190 = icmp sle i32 %189, 8
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 4, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %203

192:                                              ; preds = %188
  %193 = load i32, i32* %9, align 4
  %194 = icmp sle i32 %193, 12
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 4, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %202

196:                                              ; preds = %192
  %197 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %198 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %197, i32 0, i32 2
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = call i32 @mmc_hostname(%struct.TYPE_7__* %199)
  %201 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %196, %195
  br label %203

203:                                              ; preds = %202, %191
  br label %204

204:                                              ; preds = %203, %187
  br label %205

205:                                              ; preds = %204, %174, %161, %156
  %206 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %207 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %206, i32 0, i32 2
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = call i32 @mmc_dev(%struct.TYPE_7__* %208)
  %210 = load i32, i32* %4, align 4
  %211 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %212 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sdiv i32 %213, %214
  %216 = load i32, i32* %8, align 4
  %217 = sdiv i32 %215, %216
  %218 = call i32 @dev_dbg(i32 %209, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %210, i32 %217)
  %219 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %220 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sdiv i32 %221, %222
  %224 = load i32, i32* %8, align 4
  %225 = sdiv i32 %223, %224
  %226 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %227 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %226, i32 0, i32 2
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  store i32 %225, i32* %229, align 8
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %8, align 4
  %232 = mul nsw i32 %230, %231
  %233 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %6, align 8
  %234 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* %7, align 4
  %236 = ashr i32 %235, 1
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %8, align 4
  %239 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %240 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %241 = call i32 @sdhci_readl(%struct.sdhci_host* %239, i32 %240)
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* @ESDHC_CLOCK_IPGEN, align 4
  %243 = load i32, i32* @ESDHC_CLOCK_HCKEN, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @ESDHC_CLOCK_PEREN, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @ESDHC_DIVIDER_SHIFT, align 4
  %249 = shl i32 %247, %248
  %250 = or i32 %246, %249
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @ESDHC_PREDIV_SHIFT, align 4
  %253 = shl i32 %251, %252
  %254 = or i32 %250, %253
  %255 = load i32, i32* %12, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %12, align 4
  %257 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %260 = call i32 @sdhci_writel(%struct.sdhci_host* %257, i32 %258, i32 %259)
  %261 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %262 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %261, i32 0, i32 2
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %337

269:                                              ; preds = %205
  %270 = load i32, i32* %4, align 4
  %271 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %337

273:                                              ; preds = %269
  %274 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %275 = load i32, i32* @ESDHC_TBCTL, align 4
  %276 = call i32 @sdhci_readl(%struct.sdhci_host* %274, i32 %275)
  store i32 %276, i32* %12, align 4
  %277 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* @ESDHC_HS400_MODE, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @ESDHC_TBCTL, align 4
  %282 = call i32 @sdhci_writel(%struct.sdhci_host* %277, i32 %280, i32 %281)
  %283 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %284 = load i32, i32* @ESDHC_SDCLKCTL, align 4
  %285 = call i32 @sdhci_readl(%struct.sdhci_host* %283, i32 %284)
  store i32 %285, i32* %12, align 4
  %286 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* @ESDHC_CMD_CLK_CTL, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @ESDHC_SDCLKCTL, align 4
  %291 = call i32 @sdhci_writel(%struct.sdhci_host* %286, i32 %289, i32 %290)
  %292 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %293 = call i32 @esdhc_clock_enable(%struct.sdhci_host* %292, i32 1)
  %294 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %295 = load i32, i32* @ESDHC_DLLCFG0, align 4
  %296 = call i32 @sdhci_readl(%struct.sdhci_host* %294, i32 %295)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* @ESDHC_DLL_ENABLE, align 4
  %298 = load i32, i32* %12, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %12, align 4
  %300 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %301 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %300, i32 0, i32 2
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %273
  %308 = load i32, i32* @ESDHC_DLL_FREQ_SEL, align 4
  %309 = load i32, i32* %12, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %12, align 4
  br label %311

311:                                              ; preds = %307, %273
  %312 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %313 = load i32, i32* %12, align 4
  %314 = load i32, i32* @ESDHC_DLLCFG0, align 4
  %315 = call i32 @sdhci_writel(%struct.sdhci_host* %312, i32 %313, i32 %314)
  %316 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %317 = load i32, i32* @ESDHC_TBCTL, align 4
  %318 = call i32 @sdhci_readl(%struct.sdhci_host* %316, i32 %317)
  store i32 %318, i32* %12, align 4
  %319 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* @ESDHC_HS400_WNDW_ADJUST, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @ESDHC_TBCTL, align 4
  %324 = call i32 @sdhci_writel(%struct.sdhci_host* %319, i32 %322, i32 %323)
  %325 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %326 = call i32 @esdhc_clock_enable(%struct.sdhci_host* %325, i32 0)
  %327 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %328 = load i32, i32* @ESDHC_DMA_SYSCTL, align 4
  %329 = call i32 @sdhci_readl(%struct.sdhci_host* %327, i32 %328)
  store i32 %329, i32* %12, align 4
  %330 = load i32, i32* @ESDHC_FLUSH_ASYNC_FIFO, align 4
  %331 = load i32, i32* %12, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %12, align 4
  %333 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* @ESDHC_DMA_SYSCTL, align 4
  %336 = call i32 @sdhci_writel(%struct.sdhci_host* %333, i32 %334, i32 %335)
  br label %337

337:                                              ; preds = %311, %269, %205
  %338 = call i32 (...) @ktime_get()
  %339 = call i32 @ktime_add_ms(i32 %338, i32 20)
  store i32 %339, i32* %10, align 4
  br label %340

340:                                              ; preds = %337, %360
  %341 = call i32 (...) @ktime_get()
  %342 = load i32, i32* %10, align 4
  %343 = call i32 @ktime_after(i32 %341, i32 %342)
  store i32 %343, i32* %13, align 4
  %344 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %345 = load i32, i32* @ESDHC_PRSSTAT, align 4
  %346 = call i32 @sdhci_readl(%struct.sdhci_host* %344, i32 %345)
  %347 = load i32, i32* @ESDHC_CLOCK_STABLE, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %340
  br label %362

351:                                              ; preds = %340
  %352 = load i32, i32* %13, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %351
  %355 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %356 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %355, i32 0, i32 2
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %356, align 8
  %358 = call i32 @mmc_hostname(%struct.TYPE_7__* %357)
  %359 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %358)
  br label %373

360:                                              ; preds = %351
  %361 = call i32 @udelay(i32 10)
  br label %340

362:                                              ; preds = %350
  %363 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %364 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %365 = call i32 @sdhci_readl(%struct.sdhci_host* %363, i32 %364)
  store i32 %365, i32* %12, align 4
  %366 = load i32, i32* @ESDHC_CLOCK_SDCLKEN, align 4
  %367 = load i32, i32* %12, align 4
  %368 = or i32 %367, %366
  store i32 %368, i32* %12, align 4
  %369 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %372 = call i32 @sdhci_writel(%struct.sdhci_host* %369, i32 %370, i32 %371)
  br label %373

373:                                              ; preds = %362, %354, %24
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @esdhc_clock_enable(%struct.sdhci_host*, i32) #1

declare dso_local i64 @mmc_card_sd(i64) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_7__*) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
