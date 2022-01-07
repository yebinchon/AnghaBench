; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sm501_devdata = type { i32, i32, i32, i64 }
%struct.sm501_clock = type { i32, i32, i32, i32, i32, i32 }

@SM501_POWER_MODE_CONTROL = common dso_local global i64 0, align 8
@SM501_CURRENT_GATE = common dso_local global i64 0, align 8
@SM501_CURRENT_CLOCK = common dso_local global i64 0, align 8
@SM501_POWER_MODE_0_GATE = common dso_local global i64 0, align 8
@SM501_POWER_MODE_0_CLOCK = common dso_local global i64 0, align 8
@SM501_POWER_MODE_1_GATE = common dso_local global i64 0, align 8
@SM501_POWER_MODE_1_CLOCK = common dso_local global i64 0, align 8
@SM501_PROGRAMMABLE_PLL_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"gate %08lx, clock %08lx, mode %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sm501_set_clock(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sm501_devdata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sm501_clock, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.sm501_devdata* @dev_get_drvdata(%struct.device* %16)
  store %struct.sm501_devdata* %17, %struct.sm501_devdata** %8, align 8
  %18 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %19 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SM501_POWER_MODE_CONTROL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @smc501_readl(i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %25 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SM501_CURRENT_GATE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @smc501_readl(i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %31 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SM501_CURRENT_CLOCK, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @smc501_readl(i64 %34)
  store i64 %35, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %156 [
    i32 129, label %37
    i32 128, label %112
    i32 130, label %135
    i32 131, label %135
  ]

37:                                               ; preds = %3
  %38 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %39 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 192
  br i1 %41, label %42, label %80

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = mul i64 2, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @sm501_calc_pll(i32 %45, %struct.sm501_clock* %15, i32 5)
  %47 = sdiv i32 %46, 2
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %13, align 8
  %49 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 7
  store i32 %51, i32* %14, align 4
  %52 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, 8
  store i32 %57, i32* %14, align 4
  br label %66

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = or i32 %63, 16
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, 64
  store i32 %68, i32* %14, align 4
  %69 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 15
  %72 = or i32 131072, %71
  %73 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %72, %75
  %77 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %76, %78
  store i32 %79, i32* %12, align 4
  br label %111

80:                                               ; preds = %37
  %81 = load i64, i64* %7, align 8
  %82 = mul i64 2, %81
  %83 = call i32 @sm501_select_clock(i64 %82, %struct.sm501_clock* %15, i32 5)
  %84 = sdiv i32 %83, 2
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %13, align 8
  %86 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 7
  store i32 %88, i32* %14, align 4
  %89 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i32, i32* %14, align 4
  %94 = or i32 %93, 8
  store i32 %94, i32* %14, align 4
  br label %103

95:                                               ; preds = %80
  %96 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, 16
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %92
  %104 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 288000000
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, 32
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110, %66
  br label %157

112:                                              ; preds = %3
  %113 = load i64, i64* %7, align 8
  %114 = mul i64 2, %113
  %115 = call i32 @sm501_select_clock(i64 %114, %struct.sm501_clock* %15, i32 3)
  %116 = sdiv i32 %115, 2
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %13, align 8
  %118 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 7
  store i32 %120, i32* %14, align 4
  %121 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %127

124:                                              ; preds = %112
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, 8
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %124, %112
  %128 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 288000000
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %14, align 4
  %133 = or i32 %132, 16
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %131, %127
  br label %157

135:                                              ; preds = %3, %3
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @sm501_select_clock(i64 %136, %struct.sm501_clock* %15, i32 3)
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %13, align 8
  %139 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 7
  store i32 %141, i32* %14, align 4
  %142 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load i32, i32* %14, align 4
  %147 = or i32 %146, 8
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %145, %135
  %149 = getelementptr inbounds %struct.sm501_clock, %struct.sm501_clock* %15, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 288000000
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %14, align 4
  %154 = or i32 %153, 16
  store i32 %154, i32* %14, align 4
  br label %155

155:                                              ; preds = %152, %148
  br label %157

156:                                              ; preds = %3
  store i64 0, i64* %4, align 8
  br label %269

157:                                              ; preds = %155, %134, %111
  %158 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %159 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %158, i32 0, i32 1
  %160 = call i32 @mutex_lock(i32* %159)
  %161 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %162 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SM501_POWER_MODE_CONTROL, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i64 @smc501_readl(i64 %165)
  store i64 %166, i64* %9, align 8
  %167 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %168 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SM501_CURRENT_GATE, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i64 @smc501_readl(i64 %171)
  store i64 %172, i64* %10, align 8
  %173 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %174 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @SM501_CURRENT_CLOCK, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i64 @smc501_readl(i64 %177)
  store i64 %178, i64* %11, align 8
  %179 = load i64, i64* %11, align 8
  %180 = load i32, i32* %6, align 4
  %181 = shl i32 255, %180
  %182 = xor i32 %181, -1
  %183 = sext i32 %182 to i64
  %184 = and i64 %179, %183
  store i64 %184, i64* %11, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %6, align 4
  %187 = shl i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %11, align 8
  %190 = or i64 %189, %188
  store i64 %190, i64* %11, align 8
  %191 = load i64, i64* %9, align 8
  %192 = and i64 %191, 3
  store i64 %192, i64* %9, align 8
  %193 = load i64, i64* %9, align 8
  switch i64 %193, label %228 [
    i64 1, label %194
    i64 2, label %211
    i64 0, label %211
  ]

194:                                              ; preds = %157
  %195 = load i64, i64* %10, align 8
  %196 = trunc i64 %195 to i32
  %197 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %198 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SM501_POWER_MODE_0_GATE, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @smc501_writel(i32 %196, i64 %201)
  %203 = load i64, i64* %11, align 8
  %204 = trunc i64 %203 to i32
  %205 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %206 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SM501_POWER_MODE_0_CLOCK, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @smc501_writel(i32 %204, i64 %209)
  store i64 0, i64* %9, align 8
  br label %232

211:                                              ; preds = %157, %157
  %212 = load i64, i64* %10, align 8
  %213 = trunc i64 %212 to i32
  %214 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %215 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @SM501_POWER_MODE_1_GATE, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @smc501_writel(i32 %213, i64 %218)
  %220 = load i64, i64* %11, align 8
  %221 = trunc i64 %220 to i32
  %222 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %223 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @SM501_POWER_MODE_1_CLOCK, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @smc501_writel(i32 %221, i64 %226)
  store i64 1, i64* %9, align 8
  br label %232

228:                                              ; preds = %157
  %229 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %230 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %229, i32 0, i32 1
  %231 = call i32 @mutex_unlock(i32* %230)
  store i64 -1, i64* %4, align 8
  br label %269

232:                                              ; preds = %211, %194
  %233 = load i64, i64* %9, align 8
  %234 = trunc i64 %233 to i32
  %235 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %236 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @SM501_POWER_MODE_CONTROL, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @smc501_writel(i32 %234, i64 %239)
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %232
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %246 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @SM501_PROGRAMMABLE_PLL_CONTROL, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @smc501_writel(i32 %244, i64 %249)
  br label %251

251:                                              ; preds = %243, %232
  %252 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %253 = call i32 @sm501_sync_regs(%struct.sm501_devdata* %252)
  %254 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %255 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i64, i64* %10, align 8
  %258 = load i64, i64* %11, align 8
  %259 = load i64, i64* %9, align 8
  %260 = call i32 @dev_dbg(i32 %256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %257, i64 %258, i64 %259)
  %261 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %262 = call i32 @sm501_mdelay(%struct.sm501_devdata* %261, i32 16)
  %263 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %264 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %263, i32 0, i32 1
  %265 = call i32 @mutex_unlock(i32* %264)
  %266 = load %struct.sm501_devdata*, %struct.sm501_devdata** %8, align 8
  %267 = call i32 @sm501_dump_clk(%struct.sm501_devdata* %266)
  %268 = load i64, i64* %13, align 8
  store i64 %268, i64* %4, align 8
  br label %269

269:                                              ; preds = %251, %228, %156
  %270 = load i64, i64* %4, align 8
  ret i64 %270
}

declare dso_local %struct.sm501_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @smc501_readl(i64) #1

declare dso_local i32 @sm501_calc_pll(i32, %struct.sm501_clock*, i32) #1

declare dso_local i32 @sm501_select_clock(i64, %struct.sm501_clock*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smc501_writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sm501_sync_regs(%struct.sm501_devdata*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @sm501_mdelay(%struct.sm501_devdata*, i32) #1

declare dso_local i32 @sm501_dump_clk(%struct.sm501_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
