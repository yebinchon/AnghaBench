; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mmc_ios = type { i32, i64, i64, i32, i32 }
%struct.dw_mci_slot = type { i32, i64, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i32, %struct.dw_mci_drv_data* }
%struct.dw_mci_drv_data = type { i32 (%struct.TYPE_7__*, %struct.mmc_ios*)* }

@SDMMC_CTYPE_4BIT = common dso_local global i32 0, align 4
@SDMMC_CTYPE_8BIT = common dso_local global i32 0, align 4
@SDMMC_CTYPE_1BIT = common dso_local global i32 0, align 4
@UHS_REG = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to enable vmmc regulator\0A\00", align 1
@DW_MMC_CARD_NEED_INIT = common dso_local global i32 0, align 4
@PWREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to enable vqmmc\0A\00", align 1
@SDMMC_CTRL_ALL_RESET_FLAGS = common dso_local global i32 0, align 4
@STATE_WAITING_CMD11_DONE = common dso_local global i64 0, align 8
@STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @dw_mci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.dw_mci_drv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %9)
  store %struct.dw_mci_slot* %10, %struct.dw_mci_slot** %5, align 8
  %11 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %12 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %14, align 8
  store %struct.dw_mci_drv_data* %15, %struct.dw_mci_drv_data** %6, align 8
  %16 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %27 [
    i32 132, label %19
    i32 131, label %23
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @SDMMC_CTYPE_4BIT, align 4
  %21 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %22 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  br label %31

23:                                               ; preds = %2
  %24 = load i32, i32* @SDMMC_CTYPE_8BIT, align 4
  %25 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %26 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @SDMMC_CTYPE_1BIT, align 4
  %29 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %30 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23, %19
  %32 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %33 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* @UHS_REG, align 4
  %36 = call i32 @mci_readl(%struct.TYPE_7__* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %31
  %43 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48, %42, %31
  %55 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %56 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 1, %57
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %71

62:                                               ; preds = %48
  %63 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %64 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 1, %65
  %67 = shl i32 %66, 16
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %62, %54
  %72 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %73 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* @UHS_REG, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @mci_writel(%struct.TYPE_7__* %74, i32 %75, i32 %76)
  %78 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %82 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %81, i32 0, i32 2
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i64 %80, i64* %84, align 8
  %85 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %86 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %89 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %6, align 8
  %91 = icmp ne %struct.dw_mci_drv_data* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %71
  %93 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %6, align 8
  %94 = getelementptr inbounds %struct.dw_mci_drv_data, %struct.dw_mci_drv_data* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_7__*, %struct.mmc_ios*)*, i32 (%struct.TYPE_7__*, %struct.mmc_ios*)** %94, align 8
  %96 = icmp ne i32 (%struct.TYPE_7__*, %struct.mmc_ios*)* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %6, align 8
  %99 = getelementptr inbounds %struct.dw_mci_drv_data, %struct.dw_mci_drv_data* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_7__*, %struct.mmc_ios*)*, i32 (%struct.TYPE_7__*, %struct.mmc_ios*)** %99, align 8
  %101 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %102 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %105 = call i32 %100(%struct.TYPE_7__* %103, %struct.mmc_ios* %104)
  br label %106

106:                                              ; preds = %97, %92, %71
  %107 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %108 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %267 [
    i32 128, label %110
    i32 129, label %159
    i32 130, label %208
  ]

110:                                              ; preds = %106
  %111 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %112 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @IS_ERR(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %110
  %118 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %119 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %120 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %124 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %118, i32 %122, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %117
  %130 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %131 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %287

136:                                              ; preds = %117
  br label %137

137:                                              ; preds = %136, %110
  %138 = load i32, i32* @DW_MMC_CARD_NEED_INIT, align 4
  %139 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %140 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %139, i32 0, i32 3
  %141 = call i32 @set_bit(i32 %138, i32* %140)
  %142 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %143 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* @PWREN, align 4
  %146 = call i32 @mci_readl(%struct.TYPE_7__* %144, i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %148 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = shl i32 1, %149
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %154 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %153, i32 0, i32 2
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* @PWREN, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @mci_writel(%struct.TYPE_7__* %155, i32 %156, i32 %157)
  br label %268

159:                                              ; preds = %106
  %160 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %161 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %205, label %166

166:                                              ; preds = %159
  %167 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %168 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @IS_ERR(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %194, label %173

173:                                              ; preds = %166
  %174 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %175 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @regulator_enable(i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %173
  %182 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %183 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dev_err(i32 %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %193

188:                                              ; preds = %173
  %189 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %190 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %189, i32 0, i32 2
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %188, %181
  br label %199

194:                                              ; preds = %166
  %195 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %196 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %195, i32 0, i32 2
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  store i32 1, i32* %198, align 8
  br label %199

199:                                              ; preds = %194, %193
  %200 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %201 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %200, i32 0, i32 2
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = load i32, i32* @SDMMC_CTRL_ALL_RESET_FLAGS, align 4
  %204 = call i32 @dw_mci_ctrl_reset(%struct.TYPE_7__* %202, i32 %203)
  br label %205

205:                                              ; preds = %199, %159
  %206 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %207 = call i32 @dw_mci_setup_bus(%struct.dw_mci_slot* %206, i32 0)
  br label %268

208:                                              ; preds = %106
  %209 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %210 = call i32 @dw_mci_setup_bus(%struct.dw_mci_slot* %209, i32 0)
  %211 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %212 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @IS_ERR(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %208
  %218 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %219 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %220 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %218, i32 %222, i32 0)
  br label %224

224:                                              ; preds = %217, %208
  %225 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %226 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @IS_ERR(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %244, label %231

231:                                              ; preds = %224
  %232 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %233 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %232, i32 0, i32 2
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %240 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @regulator_disable(i32 %242)
  br label %244

244:                                              ; preds = %238, %231, %224
  %245 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %246 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %245, i32 0, i32 2
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  store i32 0, i32* %248, align 8
  %249 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %250 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %249, i32 0, i32 2
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* @PWREN, align 4
  %253 = call i32 @mci_readl(%struct.TYPE_7__* %251, i32 %252)
  store i32 %253, i32* %7, align 4
  %254 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %255 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = shl i32 1, %256
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %7, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %7, align 4
  %261 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %262 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %261, i32 0, i32 2
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = load i32, i32* @PWREN, align 4
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @mci_writel(%struct.TYPE_7__* %263, i32 %264, i32 %265)
  br label %268

267:                                              ; preds = %106
  br label %268

268:                                              ; preds = %267, %244, %205, %137
  %269 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %270 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %269, i32 0, i32 2
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @STATE_WAITING_CMD11_DONE, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %287

276:                                              ; preds = %268
  %277 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %278 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load i64, i64* @STATE_IDLE, align 8
  %283 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %284 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %283, i32 0, i32 2
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  store i64 %282, i64* %286, align 8
  br label %287

287:                                              ; preds = %129, %281, %276, %268
  ret void
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mci_readl(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mci_writel(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dw_mci_ctrl_reset(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dw_mci_setup_bus(%struct.dw_mci_slot*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
