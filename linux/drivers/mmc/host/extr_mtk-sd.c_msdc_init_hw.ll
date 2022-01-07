; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i64, i64 }

@MSDC_CFG = common dso_local global i32 0, align 4
@MSDC_CFG_MODE = common dso_local global i32 0, align 4
@MSDC_CFG_CKPDN = common dso_local global i32 0, align 4
@MSDC_INTEN = common dso_local global i32 0, align 4
@MSDC_INT = common dso_local global i32 0, align 4
@MSDC_PS = common dso_local global i32 0, align 4
@MSDC_PS_CDDEBOUNCE = common dso_local global i32 0, align 4
@DEFAULT_DEBOUNCE = common dso_local global i32 0, align 4
@MSDC_PS_CDEN = common dso_local global i32 0, align 4
@MSDC_INTEN_CDSC = common dso_local global i32 0, align 4
@SDC_CFG = common dso_local global i32 0, align 4
@SDC_CFG_INSWKUP = common dso_local global i32 0, align 4
@EMMC_TOP_CONTROL = common dso_local global i32 0, align 4
@EMMC_TOP_CMD = common dso_local global i32 0, align 4
@MSDC_IOCON = common dso_local global i32 0, align 4
@MSDC_IOCON_DDLSEL = common dso_local global i32 0, align 4
@MSDC_PATCH_BIT = common dso_local global i32 0, align 4
@MSDC_CKGEN_MSDC_DLY_SEL = common dso_local global i32 0, align 4
@MSDC_PATCH_BIT1 = common dso_local global i32 0, align 4
@EMMC50_CFG0 = common dso_local global i32 0, align 4
@EMMC50_CFG_CFCSTS_SEL = common dso_local global i32 0, align 4
@MSDC_PATCH_BIT1_STOP_DLY = common dso_local global i32 0, align 4
@SDC_FIFO_CFG = common dso_local global i32 0, align 4
@SDC_FIFO_CFG_WRVALIDSEL = common dso_local global i32 0, align 4
@SDC_FIFO_CFG_RDVALIDSEL = common dso_local global i32 0, align 4
@MSDC_PATCH_BIT2 = common dso_local global i32 0, align 4
@MSDC_PB2_RESPWAIT = common dso_local global i32 0, align 4
@SDC_RX_ENH_EN = common dso_local global i32 0, align 4
@SDC_ADV_CFG0 = common dso_local global i32 0, align 4
@SDC_RX_ENHANCE_EN = common dso_local global i32 0, align 4
@MSDC_PB2_RESPSTSENSEL = common dso_local global i32 0, align 4
@MSDC_PB2_CRCSTSENSEL = common dso_local global i32 0, align 4
@MSDC_PATCH_BIT2_CFGRESP = common dso_local global i32 0, align 4
@MSDC_PATCH_BIT2_CFGCRCSTS = common dso_local global i32 0, align 4
@MSDC_PB2_SUPPORT_64G = common dso_local global i32 0, align 4
@PAD_DAT_RD_RXDLY_SEL = common dso_local global i32 0, align 4
@DATA_K_VALUE_SEL = common dso_local global i32 0, align 4
@PAD_CMD_RD_RXDLY_SEL = common dso_local global i32 0, align 4
@MSDC_PAD_TUNE_RD_SEL = common dso_local global i32 0, align 4
@MSDC_PAD_TUNE_CMD_SEL = common dso_local global i32 0, align 4
@PAD_RXDLY_SEL = common dso_local global i32 0, align 4
@MSDC_PAD_TUNE_RXDLYSEL = common dso_local global i32 0, align 4
@SDC_CFG_SDIO = common dso_local global i32 0, align 4
@SDC_CFG_SDIOIDE = common dso_local global i32 0, align 4
@SDC_DAT1_IRQ_TRIGGER = common dso_local global i32 0, align 4
@SDC_CFG_DTOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"init hardware done!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*)* @msdc_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_init_hw(%struct.msdc_host* %0) #0 {
  %2 = alloca %struct.msdc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %2, align 8
  %5 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %6 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %5, i32 0, i32 5
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %11 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MSDC_CFG, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @MSDC_CFG_MODE, align 4
  %16 = load i32, i32* @MSDC_CFG_CKPDN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @sdr_set_bits(i32 %14, i32 %17)
  %19 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %20 = call i32 @msdc_reset_hw(%struct.msdc_host* %19)
  %21 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %22 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MSDC_INTEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @writel(i32 0, i32 %25)
  %27 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %28 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MSDC_INT, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i8* @readl(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %36 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MSDC_INT, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @writel(i32 %34, i32 %39)
  %41 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %42 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %1
  %46 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %47 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MSDC_PS, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @MSDC_PS_CDDEBOUNCE, align 4
  %52 = load i32, i32* @DEFAULT_DEBOUNCE, align 4
  %53 = call i32 @sdr_set_field(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %55 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MSDC_PS, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @MSDC_PS_CDEN, align 4
  %60 = call i32 @sdr_set_bits(i32 %58, i32 %59)
  %61 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %62 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MSDC_INTEN, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @MSDC_INTEN_CDSC, align 4
  %67 = call i32 @sdr_set_bits(i32 %65, i32 %66)
  %68 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %69 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SDC_CFG, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @SDC_CFG_INSWKUP, align 4
  %74 = call i32 @sdr_set_bits(i32 %72, i32 %73)
  br label %97

75:                                               ; preds = %1
  %76 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %77 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SDC_CFG, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @SDC_CFG_INSWKUP, align 4
  %82 = call i32 @sdr_clr_bits(i32 %80, i32 %81)
  %83 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %84 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MSDC_PS, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* @MSDC_PS_CDEN, align 4
  %89 = call i32 @sdr_clr_bits(i32 %87, i32 %88)
  %90 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %91 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MSDC_INTEN, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* @MSDC_INTEN_CDSC, align 4
  %96 = call i32 @sdr_clr_bits(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %75, %45
  %98 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %99 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %104 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @writel(i32 0, i32 %107)
  %109 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %110 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EMMC_TOP_CMD, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @writel(i32 0, i32 %113)
  br label %122

115:                                              ; preds = %97
  %116 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %117 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @writel(i32 0, i32 %120)
  br label %122

122:                                              ; preds = %115, %102
  %123 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %124 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MSDC_IOCON, align 4
  %127 = add nsw i32 %125, %126
  %128 = call i32 @writel(i32 0, i32 %127)
  %129 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %130 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MSDC_IOCON, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* @MSDC_IOCON_DDLSEL, align 4
  %135 = call i32 @sdr_set_field(i32 %133, i32 %134, i32 0)
  %136 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %137 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MSDC_PATCH_BIT, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @writel(i32 1077674054, i32 %140)
  %142 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %143 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @MSDC_PATCH_BIT, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* @MSDC_CKGEN_MSDC_DLY_SEL, align 4
  %148 = call i32 @sdr_set_field(i32 %146, i32 %147, i32 1)
  %149 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %150 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @MSDC_PATCH_BIT1, align 4
  %153 = add nsw i32 %151, %152
  %154 = call i32 @writel(i32 -49015, i32 %153)
  %155 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %156 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @EMMC50_CFG0, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* @EMMC50_CFG_CFCSTS_SEL, align 4
  %161 = call i32 @sdr_set_bits(i32 %159, i32 %160)
  %162 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %163 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %162, i32 0, i32 5
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %122
  %169 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %170 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @MSDC_PATCH_BIT1, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* @MSDC_PATCH_BIT1_STOP_DLY, align 4
  %175 = call i32 @sdr_set_field(i32 %173, i32 %174, i32 3)
  %176 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %177 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @SDC_FIFO_CFG, align 4
  %180 = add nsw i32 %178, %179
  %181 = load i32, i32* @SDC_FIFO_CFG_WRVALIDSEL, align 4
  %182 = call i32 @sdr_clr_bits(i32 %180, i32 %181)
  %183 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %184 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SDC_FIFO_CFG, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* @SDC_FIFO_CFG_RDVALIDSEL, align 4
  %189 = call i32 @sdr_clr_bits(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %168, %122
  %191 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %192 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %191, i32 0, i32 5
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %190
  %198 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %199 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @MSDC_PATCH_BIT1, align 4
  %202 = add nsw i32 %200, %201
  %203 = call i32 @sdr_clr_bits(i32 %202, i32 128)
  br label %204

204:                                              ; preds = %197, %190
  %205 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %206 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %205, i32 0, i32 5
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %277

211:                                              ; preds = %204
  %212 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %213 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @MSDC_PATCH_BIT2, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* @MSDC_PB2_RESPWAIT, align 4
  %218 = call i32 @sdr_set_field(i32 %216, i32 %217, i32 3)
  %219 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %220 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %219, i32 0, i32 5
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %211
  %226 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %227 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %232 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* @SDC_RX_ENH_EN, align 4
  %237 = call i32 @sdr_set_bits(i32 %235, i32 %236)
  br label %246

238:                                              ; preds = %225
  %239 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %240 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @SDC_ADV_CFG0, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* @SDC_RX_ENHANCE_EN, align 4
  %245 = call i32 @sdr_set_bits(i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %238, %230
  br label %262

247:                                              ; preds = %211
  %248 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %249 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @MSDC_PATCH_BIT2, align 4
  %252 = add nsw i32 %250, %251
  %253 = load i32, i32* @MSDC_PB2_RESPSTSENSEL, align 4
  %254 = call i32 @sdr_set_field(i32 %252, i32 %253, i32 2)
  %255 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %256 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @MSDC_PATCH_BIT2, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32, i32* @MSDC_PB2_CRCSTSENSEL, align 4
  %261 = call i32 @sdr_set_field(i32 %259, i32 %260, i32 2)
  br label %262

262:                                              ; preds = %247, %246
  %263 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %264 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @MSDC_PATCH_BIT2, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* @MSDC_PATCH_BIT2_CFGRESP, align 4
  %269 = call i32 @sdr_clr_bits(i32 %267, i32 %268)
  %270 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %271 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @MSDC_PATCH_BIT2, align 4
  %274 = add nsw i32 %272, %273
  %275 = load i32, i32* @MSDC_PATCH_BIT2_CFGCRCSTS, align 4
  %276 = call i32 @sdr_set_bits(i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %262, %204
  %278 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %279 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %278, i32 0, i32 5
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %277
  %285 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %286 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @MSDC_PATCH_BIT2, align 4
  %289 = add nsw i32 %287, %288
  %290 = load i32, i32* @MSDC_PB2_SUPPORT_64G, align 4
  %291 = call i32 @sdr_set_bits(i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %284, %277
  %293 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %294 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %293, i32 0, i32 5
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %337

299:                                              ; preds = %292
  %300 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %301 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %326

304:                                              ; preds = %299
  %305 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %306 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %309 = add nsw i32 %307, %308
  %310 = load i32, i32* @PAD_DAT_RD_RXDLY_SEL, align 4
  %311 = call i32 @sdr_set_bits(i32 %309, i32 %310)
  %312 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %313 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %316 = add nsw i32 %314, %315
  %317 = load i32, i32* @DATA_K_VALUE_SEL, align 4
  %318 = call i32 @sdr_clr_bits(i32 %316, i32 %317)
  %319 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %320 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @EMMC_TOP_CMD, align 4
  %323 = add nsw i32 %321, %322
  %324 = load i32, i32* @PAD_CMD_RD_RXDLY_SEL, align 4
  %325 = call i32 @sdr_set_bits(i32 %323, i32 %324)
  br label %336

326:                                              ; preds = %299
  %327 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %328 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %4, align 4
  %331 = add nsw i32 %329, %330
  %332 = load i32, i32* @MSDC_PAD_TUNE_RD_SEL, align 4
  %333 = load i32, i32* @MSDC_PAD_TUNE_CMD_SEL, align 4
  %334 = or i32 %332, %333
  %335 = call i32 @sdr_set_bits(i32 %331, i32 %334)
  br label %336

336:                                              ; preds = %326, %304
  br label %359

337:                                              ; preds = %292
  %338 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %339 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %337
  %343 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %344 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %347 = add nsw i32 %345, %346
  %348 = load i32, i32* @PAD_RXDLY_SEL, align 4
  %349 = call i32 @sdr_set_bits(i32 %347, i32 %348)
  br label %358

350:                                              ; preds = %337
  %351 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %352 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* %4, align 4
  %355 = add nsw i32 %353, %354
  %356 = load i32, i32* @MSDC_PAD_TUNE_RXDLYSEL, align 4
  %357 = call i32 @sdr_set_bits(i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %350, %342
  br label %359

359:                                              ; preds = %358, %336
  %360 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %361 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @SDC_CFG, align 4
  %364 = add nsw i32 %362, %363
  %365 = load i32, i32* @SDC_CFG_SDIO, align 4
  %366 = call i32 @sdr_set_bits(i32 %364, i32 %365)
  %367 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %368 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @SDC_CFG, align 4
  %371 = add nsw i32 %369, %370
  %372 = load i32, i32* @SDC_CFG_SDIOIDE, align 4
  %373 = call i32 @sdr_clr_bits(i32 %371, i32 %372)
  %374 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %375 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @SDC_ADV_CFG0, align 4
  %378 = add nsw i32 %376, %377
  %379 = load i32, i32* @SDC_DAT1_IRQ_TRIGGER, align 4
  %380 = call i32 @sdr_set_bits(i32 %378, i32 %379)
  %381 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %382 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @SDC_CFG, align 4
  %385 = add nsw i32 %383, %384
  %386 = load i32, i32* @SDC_CFG_DTOC, align 4
  %387 = call i32 @sdr_set_field(i32 %385, i32 %386, i32 3)
  %388 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %389 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @MSDC_IOCON, align 4
  %392 = add nsw i32 %390, %391
  %393 = call i8* @readl(i32 %392)
  %394 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %395 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %394, i32 0, i32 4
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 3
  store i8* %393, i8** %396, align 8
  %397 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %398 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @MSDC_IOCON, align 4
  %401 = add nsw i32 %399, %400
  %402 = call i8* @readl(i32 %401)
  %403 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %404 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 3
  store i8* %402, i8** %405, align 8
  %406 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %407 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %447

410:                                              ; preds = %359
  %411 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %412 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %415 = add nsw i32 %413, %414
  %416 = call i8* @readl(i32 %415)
  %417 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %418 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %417, i32 0, i32 4
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 2
  store i8* %416, i8** %419, align 8
  %420 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %421 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @EMMC_TOP_CMD, align 4
  %424 = add nsw i32 %422, %423
  %425 = call i8* @readl(i32 %424)
  %426 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %427 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %426, i32 0, i32 4
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 1
  store i8* %425, i8** %428, align 8
  %429 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %430 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %433 = add nsw i32 %431, %432
  %434 = call i8* @readl(i32 %433)
  %435 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %436 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %435, i32 0, i32 3
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 2
  store i8* %434, i8** %437, align 8
  %438 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %439 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @EMMC_TOP_CMD, align 4
  %442 = add nsw i32 %440, %441
  %443 = call i8* @readl(i32 %442)
  %444 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %445 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %444, i32 0, i32 3
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 1
  store i8* %443, i8** %446, align 8
  br label %466

447:                                              ; preds = %359
  %448 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %449 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* %4, align 4
  %452 = add nsw i32 %450, %451
  %453 = call i8* @readl(i32 %452)
  %454 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %455 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %454, i32 0, i32 4
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 0
  store i8* %453, i8** %456, align 8
  %457 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %458 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* %4, align 4
  %461 = add nsw i32 %459, %460
  %462 = call i8* @readl(i32 %461)
  %463 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %464 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %463, i32 0, i32 3
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 0
  store i8* %462, i8** %465, align 8
  br label %466

466:                                              ; preds = %447, %410
  %467 = load %struct.msdc_host*, %struct.msdc_host** %2, align 8
  %468 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = call i32 @dev_dbg(i32 %469, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sdr_set_bits(i32, i32) #1

declare dso_local i32 @msdc_reset_hw(%struct.msdc_host*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @sdr_set_field(i32, i32, i32) #1

declare dso_local i32 @sdr_clr_bits(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
