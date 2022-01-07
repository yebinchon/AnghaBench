; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_configpcipowersave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_configpcipowersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@AR_PCIE_SERDES = common dso_local global i32 0, align 4
@AR_PCIE_SERDES2 = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_D3_L1_DISABLE = common dso_local global i32 0, align 4
@AR9285_WA_DEFAULT = common dso_local global i32 0, align 4
@AR9280_WA_DEFAULT = common dso_local global i32 0, align 4
@AR_WA_BIT6 = common dso_local global i32 0, align 4
@AR_WA_BIT7 = common dso_local global i32 0, align 4
@AR_WA_BIT22 = common dso_local global i32 0, align 4
@AR_WA_BIT23 = common dso_local global i32 0, align 4
@AR_WA_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9002_hw_configpcipowersave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_configpcipowersave(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %73, label %9

9:                                                ; preds = %2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @INI_RA(%struct.TYPE_4__* %24, i64 %25, i32 0)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 1
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @INI_RA(%struct.TYPE_4__* %28, i64 %29, i32 1)
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %22, i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %21
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %14

35:                                               ; preds = %14
  br label %71

36:                                               ; preds = %9
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = load i32, i32* @AR_PCIE_SERDES, align 4
  %41 = call i32 @REG_WRITE(%struct.ath_hw* %39, i32 %40, i32 -1840710656)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i32, i32* @AR_PCIE_SERDES, align 4
  %44 = call i32 @REG_WRITE(%struct.ath_hw* %42, i32 %43, i32 613566756)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = load i32, i32* @AR_PCIE_SERDES, align 4
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %45, i32 %46, i32 671088697)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = load i32, i32* @AR_PCIE_SERDES, align 4
  %50 = call i32 @REG_WRITE(%struct.ath_hw* %48, i32 %49, i32 1393952804)
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i32, i32* @AR_PCIE_SERDES, align 4
  %53 = call i32 @REG_WRITE(%struct.ath_hw* %51, i32 %52, i32 -443021959)
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = load i32, i32* @AR_PCIE_SERDES, align 4
  %56 = call i32 @REG_WRITE(%struct.ath_hw* %54, i32 %55, i32 1961983)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* @AR_PCIE_SERDES, align 4
  %59 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %58, i32 447397440)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = load i32, i32* @AR_PCIE_SERDES, align 4
  %62 = call i32 @REG_WRITE(%struct.ath_hw* %60, i32 %61, i32 -1106225836)
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = load i32, i32* @AR_PCIE_SERDES, align 4
  %65 = call i32 @REG_WRITE(%struct.ath_hw* %63, i32 %64, i32 929799)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load i32, i32* @AR_PCIE_SERDES2, align 4
  %68 = call i32 @REG_WRITE(%struct.ath_hw* %66, i32 %67, i32 0)
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %69)
  br label %71

71:                                               ; preds = %36, %35
  %72 = call i32 @udelay(i32 1000)
  br label %73

73:                                               ; preds = %71, %2
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %180

76:                                               ; preds = %73
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %79 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %80 = call i32 @REG_CLR_BIT(%struct.ath_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = load i32, i32* @AR_WA, align 4
  %83 = call i32 @REG_READ(%struct.ath_hw* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %76
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %89
  br label %140

102:                                              ; preds = %76
  %103 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %104 = call i64 @AR_SREV_9285(%struct.ath_hw* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %108 = call i64 @AR_SREV_9271(%struct.ath_hw* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %112 = call i64 @AR_SREV_9287(%struct.ath_hw* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110, %106, %102
  %115 = load i32, i32* @AR9285_WA_DEFAULT, align 4
  %116 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %114
  br label %139

124:                                              ; preds = %110
  %125 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %126 = call i64 @AR_SREV_9280(%struct.ath_hw* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load i32, i32* @AR9280_WA_DEFAULT, align 4
  %130 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %133, %128
  br label %138

138:                                              ; preds = %137, %124
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %139, %101
  %141 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %142 = call i64 @AR_SREV_9280(%struct.ath_hw* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %146 = call i64 @AR_SREV_9285(%struct.ath_hw* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %150 = call i64 @AR_SREV_9287(%struct.ath_hw* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %148, %144, %140
  %153 = load i32, i32* @AR_WA_BIT6, align 4
  %154 = load i32, i32* @AR_WA_BIT7, align 4
  %155 = or i32 %153, %154
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %152, %148
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = call i64 @AR_SREV_9280(%struct.ath_hw* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, i32* @AR_WA_BIT22, align 4
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %169 = call i64 @AR_SREV_9285E_20(%struct.ath_hw* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* @AR_WA_BIT23, align 4
  %173 = load i32, i32* %6, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %171, %167
  %176 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %177 = load i32, i32* @AR_WA, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @REG_WRITE(%struct.ath_hw* %176, i32 %177, i32 %178)
  br label %258

180:                                              ; preds = %73
  %181 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %188 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %6, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %6, align 4
  br label %227

195:                                              ; preds = %180
  %196 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %197 = call i64 @AR_SREV_9285(%struct.ath_hw* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %195
  %200 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %201 = call i64 @AR_SREV_9271(%struct.ath_hw* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %205 = call i64 @AR_SREV_9287(%struct.ath_hw* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203, %199, %195
  %208 = load i32, i32* @AR9285_WA_DEFAULT, align 4
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %6, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %6, align 4
  br label %226

213:                                              ; preds = %203
  %214 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %215 = call i64 @AR_SREV_9280(%struct.ath_hw* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32, i32* @AR9280_WA_DEFAULT, align 4
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %6, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %6, align 4
  br label %225

223:                                              ; preds = %213
  %224 = load i32, i32* @AR_WA_DEFAULT, align 4
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %223, %217
  br label %226

226:                                              ; preds = %225, %207
  br label %227

227:                                              ; preds = %226, %186
  %228 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %229 = call i64 @AR_SREV_9285(%struct.ath_hw* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %233 = call i64 @AR_SREV_9287(%struct.ath_hw* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %231, %227
  %236 = load i32, i32* @AR_WA_BIT6, align 4
  %237 = load i32, i32* @AR_WA_BIT7, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* %6, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %235, %231
  %242 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %243 = call i64 @AR_SREV_9285E_20(%struct.ath_hw* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i32, i32* @AR_WA_BIT23, align 4
  %247 = load i32, i32* %6, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %6, align 4
  br label %249

249:                                              ; preds = %245, %241
  %250 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %251 = load i32, i32* @AR_WA, align 4
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @REG_WRITE(%struct.ath_hw* %250, i32 %251, i32 %252)
  %254 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %255 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %256 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %257 = call i32 @REG_SET_BIT(%struct.ath_hw* %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %249, %175
  ret void
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @INI_RA(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285E_20(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
