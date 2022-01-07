; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_set_bus_speed_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_set_bus_speed_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SDIO_SPEED_SDR12 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR104 = common dso_local global i32 0, align 4
@SDIO_SPEED_SDR104 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR104 = common dso_local global i32 0, align 4
@UHS_SDR104_MAX_DTR = common dso_local global i32 0, align 4
@UHS_SDR104_BUS_SPEED = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@SD_MODE_UHS_DDR50 = common dso_local global i32 0, align 4
@SDIO_SPEED_DDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i32 0, align 4
@UHS_DDR50_MAX_DTR = common dso_local global i32 0, align 4
@UHS_DDR50_BUS_SPEED = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR50 = common dso_local global i32 0, align 4
@SDIO_SPEED_SDR50 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i32 0, align 4
@UHS_SDR50_MAX_DTR = common dso_local global i32 0, align 4
@UHS_SDR50_BUS_SPEED = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR25 = common dso_local global i32 0, align 4
@SDIO_SPEED_SDR25 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR25 = common dso_local global i32 0, align 4
@UHS_SDR25_MAX_DTR = common dso_local global i32 0, align 4
@UHS_SDR25_BUS_SPEED = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR12 = common dso_local global i32 0, align 4
@UHS_SDR12_MAX_DTR = common dso_local global i32 0, align 4
@UHS_SDR12_BUS_SPEED = common dso_local global i32 0, align 4
@SDIO_CCCR_SPEED = common dso_local global i32 0, align 4
@SDIO_SPEED_BSS_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @sdio_set_bus_speed_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_set_bus_speed_mode(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %9 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call i32 @mmc_host_uhs(%struct.TYPE_6__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %220

15:                                               ; preds = %1
  %16 = load i32, i32* @SDIO_SPEED_SDR12, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @MMC_TIMING_UHS_SDR12, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %15
  %27 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SD_MODE_UHS_SDR104, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load i32, i32* @SDIO_SPEED_SDR104, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @MMC_TIMING_UHS_SDR104, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @UHS_SDR104_MAX_DTR, align 4
  %38 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @UHS_SDR104_BUS_SPEED, align 4
  %42 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %168

44:                                               ; preds = %26, %15
  %45 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SD_MODE_UHS_DDR50, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i32, i32* @SDIO_SPEED_DDR50, align 4
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @MMC_TIMING_UHS_DDR50, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @UHS_DDR50_MAX_DTR, align 4
  %65 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %66 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @UHS_DDR50_BUS_SPEED, align 4
  %69 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %167

71:                                               ; preds = %53, %44
  %72 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %73 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %78 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %71
  %83 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %84 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SD_MODE_UHS_SDR50, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load i32, i32* @SDIO_SPEED_SDR50, align 4
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @MMC_TIMING_UHS_SDR50, align 4
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @UHS_SDR50_MAX_DTR, align 4
  %94 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %95 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @UHS_SDR50_BUS_SPEED, align 4
  %98 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  br label %166

100:                                              ; preds = %82, %71
  %101 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %102 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %107 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %105, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %100
  %114 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %115 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SD_MODE_UHS_SDR25, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %113
  %122 = load i32, i32* @SDIO_SPEED_SDR25, align 4
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* @MMC_TIMING_UHS_SDR25, align 4
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* @UHS_SDR25_MAX_DTR, align 4
  %125 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %126 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* @UHS_SDR25_BUS_SPEED, align 4
  %129 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %130 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %165

131:                                              ; preds = %113, %100
  %132 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %133 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %138 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %136, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %131
  %147 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %148 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SD_MODE_UHS_SDR12, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %146
  %155 = load i32, i32* @SDIO_SPEED_SDR12, align 4
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* @MMC_TIMING_UHS_SDR12, align 4
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* @UHS_SDR12_MAX_DTR, align 4
  %158 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %159 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* @UHS_SDR12_BUS_SPEED, align 4
  %162 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %163 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %154, %146, %131
  br label %165

165:                                              ; preds = %164, %121
  br label %166

166:                                              ; preds = %165, %90
  br label %167

167:                                              ; preds = %166, %61
  br label %168

168:                                              ; preds = %167, %34
  %169 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %170 = load i32, i32* @SDIO_CCCR_SPEED, align 4
  %171 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %169, i32 0, i32 0, i32 %170, i8 zeroext 0, i8* %7)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %2, align 4
  br label %220

176:                                              ; preds = %168
  %177 = load i8, i8* @SDIO_SPEED_BSS_MASK, align 1
  %178 = zext i8 %177 to i32
  %179 = xor i32 %178, -1
  %180 = load i8, i8* %7, align 1
  %181 = zext i8 %180 to i32
  %182 = and i32 %181, %179
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %7, align 1
  %184 = load i32, i32* %4, align 4
  %185 = load i8, i8* %7, align 1
  %186 = zext i8 %185 to i32
  %187 = or i32 %186, %184
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %7, align 1
  %189 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %190 = load i32, i32* @SDIO_CCCR_SPEED, align 4
  %191 = load i8, i8* %7, align 1
  %192 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %189, i32 1, i32 0, i32 %190, i8 zeroext %191, i8* null)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %176
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* %2, align 4
  br label %220

197:                                              ; preds = %176
  %198 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %199 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %202 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @min_not_zero(i32 %200, i32 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %197
  %209 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %210 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %209, i32 0, i32 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @mmc_set_timing(%struct.TYPE_6__* %211, i32 %212)
  %214 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %215 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %214, i32 0, i32 0
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @mmc_set_clock(%struct.TYPE_6__* %216, i32 %217)
  br label %219

219:                                              ; preds = %208, %197
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %219, %195, %174, %14
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @mmc_host_uhs(%struct.TYPE_6__*) #1

declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i8 zeroext, i8*) #1

declare dso_local i32 @min_not_zero(i32, i32) #1

declare dso_local i32 @mmc_set_timing(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mmc_set_clock(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
