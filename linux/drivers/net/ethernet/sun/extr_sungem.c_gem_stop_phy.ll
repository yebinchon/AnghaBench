; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_stop_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_stop_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, %struct.TYPE_8__, %struct.TYPE_5__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_5__ = type { i8* }

@MIF_CFG = common dso_local global i64 0, align 8
@MIF_CFG_POLL = common dso_local global i8 0, align 1
@MAC_RXCFG_HFE = common dso_local global i8 0, align 1
@MAC_RXCFG_SFCS = common dso_local global i8 0, align 1
@MAC_RXCFG_ENAB = common dso_local global i8 0, align 1
@MAC_RXCFG = common dso_local global i64 0, align 8
@WOL_MATCH0 = common dso_local global i64 0, align 8
@WOL_MATCH1 = common dso_local global i64 0, align 8
@WOL_MATCH2 = common dso_local global i64 0, align 8
@WOL_MCOUNT_N = common dso_local global i8 0, align 1
@WOL_MCOUNT_M = common dso_local global i8 0, align 1
@WOL_MCOUNT = common dso_local global i64 0, align 8
@WOL_WAKECSR_ENABLE = common dso_local global i8 0, align 1
@MAC_XIFCFG = common dso_local global i64 0, align 8
@MAC_XIFCFG_GMII = common dso_local global i8 0, align 1
@WOL_WAKECSR_MII = common dso_local global i8 0, align 1
@WOL_WAKECSR = common dso_local global i64 0, align 8
@MAC_TXCFG = common dso_local global i64 0, align 8
@TXDMA_CFG = common dso_local global i64 0, align 8
@RXDMA_CFG = common dso_local global i64 0, align 8
@MAC_TXRST_CMD = common dso_local global i8 0, align 1
@MAC_TXRST = common dso_local global i64 0, align 8
@MAC_RXRST_CMD = common dso_local global i8 0, align 1
@MAC_RXRST = common dso_local global i64 0, align 8
@MIF_CFG_BBMODE = common dso_local global i8 0, align 1
@MIF_BBCLK = common dso_local global i64 0, align 8
@MIF_BBDATA = common dso_local global i64 0, align 8
@MIF_BBOENAB = common dso_local global i64 0, align 8
@MAC_XIFCFG_LBCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*, i32)* @gem_stop_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_stop_phy(%struct.gem* %0, i32 %1) #0 {
  %3 = alloca %struct.gem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.gem* %0, %struct.gem** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @msleep(i32 10)
  %9 = load %struct.gem*, %struct.gem** %3, align 8
  %10 = getelementptr inbounds %struct.gem, %struct.gem* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MIF_CFG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call zeroext i8 @readl(i64 %13)
  store i8 %14, i8* %5, align 1
  %15 = load i8, i8* @MIF_CFG_POLL, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, -1
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %5, align 1
  %22 = load i8, i8* %5, align 1
  %23 = load %struct.gem*, %struct.gem** %3, align 8
  %24 = getelementptr inbounds %struct.gem, %struct.gem* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MIF_CFG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i8 zeroext %22, i64 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %148

31:                                               ; preds = %2
  %32 = load %struct.gem*, %struct.gem** %3, align 8
  %33 = getelementptr inbounds %struct.gem, %struct.gem* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %148

36:                                               ; preds = %31
  %37 = load %struct.gem*, %struct.gem** %3, align 8
  %38 = getelementptr inbounds %struct.gem, %struct.gem* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8* %42, i8** %6, align 8
  %43 = load i8, i8* @MAC_RXCFG_HFE, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @MAC_RXCFG_SFCS, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = load i8, i8* @MAC_RXCFG_ENAB, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = trunc i32 %50 to i8
  %52 = load %struct.gem*, %struct.gem** %3, align 8
  %53 = getelementptr inbounds %struct.gem, %struct.gem* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MAC_RXCFG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i8 zeroext %51, i64 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %62, %66
  %68 = trunc i32 %67 to i8
  %69 = load %struct.gem*, %struct.gem** %3, align 8
  %70 = getelementptr inbounds %struct.gem, %struct.gem* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @WOL_MATCH0, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i8 zeroext %68, i64 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %79, %83
  %85 = trunc i32 %84 to i8
  %86 = load %struct.gem*, %struct.gem** %3, align 8
  %87 = getelementptr inbounds %struct.gem, %struct.gem* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @WOL_MATCH1, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i8 zeroext %85, i64 %90)
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 8
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %96, %100
  %102 = trunc i32 %101 to i8
  %103 = load %struct.gem*, %struct.gem** %3, align 8
  %104 = getelementptr inbounds %struct.gem, %struct.gem* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @WOL_MATCH2, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i8 zeroext %102, i64 %107)
  %109 = load i8, i8* @WOL_MCOUNT_N, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @WOL_MCOUNT_M, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = trunc i32 %113 to i8
  %115 = load %struct.gem*, %struct.gem** %3, align 8
  %116 = getelementptr inbounds %struct.gem, %struct.gem* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @WOL_MCOUNT, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i8 zeroext %114, i64 %119)
  %121 = load i8, i8* @WOL_WAKECSR_ENABLE, align 1
  store i8 %121, i8* %7, align 1
  %122 = load %struct.gem*, %struct.gem** %3, align 8
  %123 = getelementptr inbounds %struct.gem, %struct.gem* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @MAC_XIFCFG, align 8
  %126 = add nsw i64 %124, %125
  %127 = call zeroext i8 @readl(i64 %126)
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @MAC_XIFCFG_GMII, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %128, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %36
  %134 = load i8, i8* @WOL_WAKECSR_MII, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* %7, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %137, %135
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %7, align 1
  br label %140

140:                                              ; preds = %133, %36
  %141 = load i8, i8* %7, align 1
  %142 = load %struct.gem*, %struct.gem** %3, align 8
  %143 = getelementptr inbounds %struct.gem, %struct.gem* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @WOL_WAKECSR, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i8 zeroext %141, i64 %146)
  br label %162

148:                                              ; preds = %31, %2
  %149 = load %struct.gem*, %struct.gem** %3, align 8
  %150 = getelementptr inbounds %struct.gem, %struct.gem* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @MAC_RXCFG, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel(i8 zeroext 0, i64 %153)
  %155 = load %struct.gem*, %struct.gem** %3, align 8
  %156 = getelementptr inbounds %struct.gem, %struct.gem* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MAC_RXCFG, align 8
  %159 = add nsw i64 %157, %158
  %160 = call zeroext i8 @readl(i64 %159)
  %161 = call i32 @msleep(i32 10)
  br label %162

162:                                              ; preds = %148, %140
  %163 = load %struct.gem*, %struct.gem** %3, align 8
  %164 = getelementptr inbounds %struct.gem, %struct.gem* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @MAC_TXCFG, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @writel(i8 zeroext 0, i64 %167)
  %169 = load %struct.gem*, %struct.gem** %3, align 8
  %170 = getelementptr inbounds %struct.gem, %struct.gem* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @MAC_XIFCFG, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @writel(i8 zeroext 0, i64 %173)
  %175 = load %struct.gem*, %struct.gem** %3, align 8
  %176 = getelementptr inbounds %struct.gem, %struct.gem* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TXDMA_CFG, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i8 zeroext 0, i64 %179)
  %181 = load %struct.gem*, %struct.gem** %3, align 8
  %182 = getelementptr inbounds %struct.gem, %struct.gem* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @RXDMA_CFG, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i8 zeroext 0, i64 %185)
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %280, label %189

189:                                              ; preds = %162
  %190 = load %struct.gem*, %struct.gem** %3, align 8
  %191 = call i32 @gem_reset(%struct.gem* %190)
  %192 = load i8, i8* @MAC_TXRST_CMD, align 1
  %193 = load %struct.gem*, %struct.gem** %3, align 8
  %194 = getelementptr inbounds %struct.gem, %struct.gem* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MAC_TXRST, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @writel(i8 zeroext %192, i64 %197)
  %199 = load i8, i8* @MAC_RXRST_CMD, align 1
  %200 = load %struct.gem*, %struct.gem** %3, align 8
  %201 = getelementptr inbounds %struct.gem, %struct.gem* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MAC_RXRST, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i8 zeroext %199, i64 %204)
  %206 = load %struct.gem*, %struct.gem** %3, align 8
  %207 = call i64 @found_mii_phy(%struct.gem* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %189
  %210 = load %struct.gem*, %struct.gem** %3, align 8
  %211 = getelementptr inbounds %struct.gem, %struct.gem* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %216, align 8
  %218 = icmp ne i32 (%struct.TYPE_8__*)* %217, null
  br i1 %218, label %219, label %231

219:                                              ; preds = %209
  %220 = load %struct.gem*, %struct.gem** %3, align 8
  %221 = getelementptr inbounds %struct.gem, %struct.gem* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %226, align 8
  %228 = load %struct.gem*, %struct.gem** %3, align 8
  %229 = getelementptr inbounds %struct.gem, %struct.gem* %228, i32 0, i32 1
  %230 = call i32 %227(%struct.TYPE_8__* %229)
  br label %231

231:                                              ; preds = %219, %209, %189
  %232 = load i8, i8* %5, align 1
  %233 = zext i8 %232 to i32
  %234 = load i8, i8* @MIF_CFG_BBMODE, align 1
  %235 = zext i8 %234 to i32
  %236 = or i32 %233, %235
  %237 = trunc i32 %236 to i8
  %238 = load %struct.gem*, %struct.gem** %3, align 8
  %239 = getelementptr inbounds %struct.gem, %struct.gem* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @MIF_CFG, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @writel(i8 zeroext %237, i64 %242)
  %244 = load %struct.gem*, %struct.gem** %3, align 8
  %245 = getelementptr inbounds %struct.gem, %struct.gem* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @MIF_BBCLK, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @writel(i8 zeroext 0, i64 %248)
  %250 = load %struct.gem*, %struct.gem** %3, align 8
  %251 = getelementptr inbounds %struct.gem, %struct.gem* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @MIF_BBDATA, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @writel(i8 zeroext 0, i64 %254)
  %256 = load %struct.gem*, %struct.gem** %3, align 8
  %257 = getelementptr inbounds %struct.gem, %struct.gem* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @MIF_BBOENAB, align 8
  %260 = add nsw i64 %258, %259
  %261 = call i32 @writel(i8 zeroext 0, i64 %260)
  %262 = load i8, i8* @MAC_XIFCFG_GMII, align 1
  %263 = zext i8 %262 to i32
  %264 = load i8, i8* @MAC_XIFCFG_LBCK, align 1
  %265 = zext i8 %264 to i32
  %266 = or i32 %263, %265
  %267 = trunc i32 %266 to i8
  %268 = load %struct.gem*, %struct.gem** %3, align 8
  %269 = getelementptr inbounds %struct.gem, %struct.gem* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @MAC_XIFCFG, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @writel(i8 zeroext %267, i64 %272)
  %274 = load %struct.gem*, %struct.gem** %3, align 8
  %275 = getelementptr inbounds %struct.gem, %struct.gem* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @MAC_XIFCFG, align 8
  %278 = add nsw i64 %276, %277
  %279 = call zeroext i8 @readl(i64 %278)
  br label %280

280:                                              ; preds = %231, %162
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local zeroext i8 @readl(i64) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i32 @gem_reset(%struct.gem*) #1

declare dso_local i64 @found_mii_phy(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
