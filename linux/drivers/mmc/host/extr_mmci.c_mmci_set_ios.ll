; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mmc_ios = type { i32, i64, i64, i64, i32 }
%struct.mmci_host = type { i32, i32, i64, i32, %struct.TYPE_6__*, i32, i32, %struct.mmc_host*, %struct.variant_data*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.mmci_host*, i32)*, i32 (%struct.mmci_host*, i64)* }
%struct.variant_data = type { i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 (i32, %struct.mmc_ios*)* }

@.str = private unnamed_addr constant [29 x i8] c"platform ios_handler failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to enable vqmmc regulator\0A\00", align 1
@MCI_PWR_ON = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@MCI_ST_DATA74DIREN = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i64 0, align 8
@MCI_ST_DATA31DIREN = common dso_local global i32 0, align 4
@MCI_ST_DATA2DIREN = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Error setting clock rate (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mmci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mmci_host*, align 8
  %6 = alloca %struct.variant_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.mmci_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.mmci_host* %11, %struct.mmci_host** %5, align 8
  %12 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %13 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %12, i32 0, i32 8
  %14 = load %struct.variant_data*, %struct.variant_data** %13, align 8
  store %struct.variant_data* %14, %struct.variant_data** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %16 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %15, i32 0, i32 12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64 (i32, %struct.mmc_ios*)*, i64 (i32, %struct.mmc_ios*)** %18, align 8
  %20 = icmp ne i64 (i32, %struct.mmc_ios*)* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %23 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %22, i32 0, i32 12
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64 (i32, %struct.mmc_ios*)*, i64 (i32, %struct.mmc_ios*)** %25, align 8
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = call i32 @mmc_dev(%struct.mmc_host* %27)
  %29 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %30 = call i64 %26(i32 %28, %struct.mmc_ios* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = call i32 @mmc_dev(%struct.mmc_host* %33)
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %21, %2
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %130 [
    i32 130, label %40
    i32 128, label %75
    i32 129, label %98
  ]

40:                                               ; preds = %36
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IS_ERR(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %48, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %56 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @IS_ERR(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %54
  %62 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %63 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @regulator_disable(i32 %70)
  %72 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %73 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %61, %54
  br label %130

75:                                               ; preds = %36
  %76 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %77 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IS_ERR(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %75
  %83 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %84 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %83, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %82, %75
  %93 = load %struct.variant_data*, %struct.variant_data** %6, align 8
  %94 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %130

98:                                               ; preds = %36
  %99 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %100 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @IS_ERR(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %98
  %106 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %107 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %105
  %111 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %112 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @regulator_enable(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %120 = call i32 @mmc_dev(%struct.mmc_host* %119)
  %121 = call i32 (i32, i8*, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %125

122:                                              ; preds = %110
  %123 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %124 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %118
  br label %126

126:                                              ; preds = %125, %105, %98
  %127 = load i32, i32* @MCI_PWR_ON, align 4
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %36, %126, %92, %74
  %131 = load %struct.variant_data*, %struct.variant_data** %6, align 8
  %132 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %175

135:                                              ; preds = %130
  %136 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %137 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 130
  br i1 %139, label %140, label %175

140:                                              ; preds = %135
  %141 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %142 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %7, align 4
  %146 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %147 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %140
  %152 = load i32, i32* @MCI_ST_DATA74DIREN, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %7, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %174

156:                                              ; preds = %140
  %157 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %158 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @MMC_BUS_WIDTH_1, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load i32, i32* @MCI_ST_DATA74DIREN, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* @MCI_ST_DATA31DIREN, align 4
  %166 = xor i32 %165, -1
  %167 = and i32 %164, %166
  %168 = load i32, i32* @MCI_ST_DATA2DIREN, align 4
  %169 = xor i32 %168, -1
  %170 = and i32 %167, %169
  %171 = load i32, i32* %7, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %162, %156
  br label %174

174:                                              ; preds = %173, %151
  br label %175

175:                                              ; preds = %174, %135, %130
  %176 = load %struct.variant_data*, %struct.variant_data** %6, align 8
  %177 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %175
  %181 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %182 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load %struct.variant_data*, %struct.variant_data** %6, align 8
  %188 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %7, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %186, %180
  br label %216

193:                                              ; preds = %175
  %194 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %195 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %193
  %200 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %201 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %204 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %203, i32 0, i32 11
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @pinctrl_select_state(i32 %202, i32 %205)
  br label %215

207:                                              ; preds = %193
  %208 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %209 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %208, i32 0, i32 10
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %212 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @pinctrl_select_state(i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %207, %199
  br label %216

216:                                              ; preds = %215, %192
  %217 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %218 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %231, label %221

221:                                              ; preds = %216
  %222 = load %struct.variant_data*, %struct.variant_data** %6, align 8
  %223 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load i32, i32* @MCI_PWR_ON, align 4
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %7, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %7, align 4
  br label %231

231:                                              ; preds = %226, %221, %216
  %232 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %233 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %232, i32 0, i32 8
  %234 = load %struct.variant_data*, %struct.variant_data** %233, align 8
  %235 = getelementptr inbounds %struct.variant_data, %struct.variant_data* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %271

238:                                              ; preds = %231
  %239 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %240 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %243 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %241, %244
  br i1 %245, label %246, label %271

246:                                              ; preds = %238
  %247 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %248 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %251 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @clk_set_rate(i32 %249, i64 %252)
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %246
  %257 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %258 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %257, i32 0, i32 7
  %259 = load %struct.mmc_host*, %struct.mmc_host** %258, align 8
  %260 = call i32 @mmc_dev(%struct.mmc_host* %259)
  %261 = load i32, i32* %9, align 4
  %262 = call i32 (i32, i8*, ...) @dev_err(i32 %260, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %261)
  br label %270

263:                                              ; preds = %246
  %264 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %265 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @clk_get_rate(i32 %266)
  %268 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %269 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %268, i32 0, i32 6
  store i32 %267, i32* %269, align 4
  br label %270

270:                                              ; preds = %263, %256
  br label %271

271:                                              ; preds = %270, %238, %231
  %272 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %273 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %276 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %275, i32 0, i32 2
  store i64 %274, i64* %276, align 8
  %277 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %278 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %277, i32 0, i32 3
  %279 = load i64, i64* %8, align 8
  %280 = call i32 @spin_lock_irqsave(i32* %278, i64 %279)
  %281 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %282 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %281, i32 0, i32 4
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = icmp ne %struct.TYPE_6__* %283, null
  br i1 %284, label %285, label %303

285:                                              ; preds = %271
  %286 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %287 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %286, i32 0, i32 4
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  %290 = load i32 (%struct.mmci_host*, i64)*, i32 (%struct.mmci_host*, i64)** %289, align 8
  %291 = icmp ne i32 (%struct.mmci_host*, i64)* %290, null
  br i1 %291, label %292, label %303

292:                                              ; preds = %285
  %293 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %294 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %293, i32 0, i32 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 1
  %297 = load i32 (%struct.mmci_host*, i64)*, i32 (%struct.mmci_host*, i64)** %296, align 8
  %298 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %299 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %300 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = call i32 %297(%struct.mmci_host* %298, i64 %301)
  br label %309

303:                                              ; preds = %285, %271
  %304 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %305 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %306 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @mmci_set_clkreg(%struct.mmci_host* %304, i64 %307)
  br label %309

309:                                              ; preds = %303, %292
  %310 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %311 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %310, i32 0, i32 4
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = icmp ne %struct.TYPE_6__* %312, null
  br i1 %313, label %314, label %330

314:                                              ; preds = %309
  %315 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %316 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %315, i32 0, i32 4
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load i32 (%struct.mmci_host*, i32)*, i32 (%struct.mmci_host*, i32)** %318, align 8
  %320 = icmp ne i32 (%struct.mmci_host*, i32)* %319, null
  br i1 %320, label %321, label %330

321:                                              ; preds = %314
  %322 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %323 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %322, i32 0, i32 4
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = load i32 (%struct.mmci_host*, i32)*, i32 (%struct.mmci_host*, i32)** %325, align 8
  %327 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %328 = load i32, i32* %7, align 4
  %329 = call i32 %326(%struct.mmci_host* %327, i32 %328)
  br label %334

330:                                              ; preds = %314, %309
  %331 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %332 = load i32, i32* %7, align 4
  %333 = call i32 @mmci_write_pwrreg(%struct.mmci_host* %331, i32 %332)
  br label %334

334:                                              ; preds = %330, %321
  %335 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %336 = call i32 @mmci_reg_delay(%struct.mmci_host* %335)
  %337 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %338 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %337, i32 0, i32 3
  %339 = load i64, i64* %8, align 8
  %340 = call i32 @spin_unlock_irqrestore(i32* %338, i64 %339)
  ret void
}

declare dso_local %struct.mmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmci_set_clkreg(%struct.mmci_host*, i64) #1

declare dso_local i32 @mmci_write_pwrreg(%struct.mmci_host*, i32) #1

declare dso_local i32 @mmci_reg_delay(%struct.mmci_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
