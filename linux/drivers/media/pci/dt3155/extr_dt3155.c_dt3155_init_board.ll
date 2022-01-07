; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_init_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt3155_priv = type { i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ADDR_ERR_ODD = common dso_local global i32 0, align 4
@ADDR_ERR_EVEN = common dso_local global i32 0, align 4
@FLD_CRPT_ODD = common dso_local global i32 0, align 4
@FLD_CRPT_EVEN = common dso_local global i32 0, align 4
@FLD_DN_ODD = common dso_local global i32 0, align 4
@FLD_DN_EVEN = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i64 0, align 8
@FIFO_EN = common dso_local global i32 0, align 4
@SRST = common dso_local global i32 0, align 4
@EVEN_PIXEL_FMT = common dso_local global i64 0, align 8
@ODD_PIXEL_FMT = common dso_local global i64 0, align 8
@FIFO_TRIGER = common dso_local global i64 0, align 8
@XFER_MODE = common dso_local global i64 0, align 8
@RETRY_WAIT_CNT = common dso_local global i64 0, align 8
@INT_CSR = common dso_local global i64 0, align 8
@EVEN_FLD_MASK = common dso_local global i64 0, align 8
@ODD_FLD_MASK = common dso_local global i64 0, align 8
@MASK_LENGTH = common dso_local global i64 0, align 8
@FIFO_FLAG_CNT = common dso_local global i64 0, align 8
@IIC_CLK_DUR = common dso_local global i64 0, align 8
@DT_ID = common dso_local global i32 0, align 4
@DT3155_ID = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@AD_ADDR = common dso_local global i32 0, align 4
@AD_LUT = common dso_local global i32 0, align 4
@AD_CMD_REG = common dso_local global i32 0, align 4
@AD_CMD = common dso_local global i32 0, align 4
@VIDEO_CNL_1 = common dso_local global i32 0, align 4
@SYNC_CNL_1 = common dso_local global i32 0, align 4
@SYNC_LVL_3 = common dso_local global i32 0, align 4
@AD_POS_REF = common dso_local global i32 0, align 4
@AD_NEG_REF = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@PM_LUT_PGM = common dso_local global i32 0, align 4
@PM_LUT_ADDR = common dso_local global i32 0, align 4
@PM_LUT_DATA = common dso_local global i32 0, align 4
@PM_LUT_SEL = common dso_local global i32 0, align 4
@FLD_START = common dso_local global i32 0, align 4
@FLD_END_EVEN = common dso_local global i32 0, align 4
@FLD_END_ODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dt3155_priv*)* @dt3155_init_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3155_init_board(%struct.dt3155_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dt3155_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dt3155_priv* %0, %struct.dt3155_priv** %3, align 8
  %7 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %8 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_set_master(%struct.pci_dev* %10)
  %12 = load i32, i32* @ADDR_ERR_ODD, align 4
  %13 = load i32, i32* @ADDR_ERR_EVEN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FLD_CRPT_ODD, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FLD_CRPT_EVEN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FLD_DN_ODD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FLD_DN_EVEN, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %24 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CSR1, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @iowrite32(i32 %22, i64 %27)
  %29 = call i32 @msleep(i32 20)
  %30 = load i32, i32* @FIFO_EN, align 4
  %31 = load i32, i32* @SRST, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %34 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CSR1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @iowrite32(i32 %32, i64 %37)
  %39 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %40 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EVEN_PIXEL_FMT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite32(i32 -286331391, i64 %43)
  %45 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %46 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ODD_PIXEL_FMT, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @iowrite32(i32 -286331391, i64 %49)
  %51 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %52 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FIFO_TRIGER, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @iowrite32(i32 32, i64 %55)
  %57 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %58 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XFER_MODE, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @iowrite32(i32 259, i64 %61)
  %63 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %64 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RETRY_WAIT_CNT, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @iowrite32(i32 0, i64 %67)
  %69 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %70 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @INT_CSR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @iowrite32(i32 0, i64 %73)
  %75 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %76 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @EVEN_FLD_MASK, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @iowrite32(i32 1, i64 %79)
  %81 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %82 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ODD_FLD_MASK, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @iowrite32(i32 1, i64 %85)
  %87 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %88 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MASK_LENGTH, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @iowrite32(i32 0, i64 %91)
  %93 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %94 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FIFO_FLAG_CNT, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @iowrite32(i32 327804, i64 %97)
  %99 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %100 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IIC_CLK_DUR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @iowrite32(i32 16843009, i64 %103)
  %105 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %106 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @DT_ID, align 4
  %109 = call i32 @read_i2c_reg(i64 %107, i32 %108, i64* %6)
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @DT3155_ID, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %1
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %271

116:                                              ; preds = %1
  %117 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %118 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @AD_ADDR, align 4
  %121 = call i32 @write_i2c_reg(i64 %119, i32 %120, i32 0)
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %132, %116
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 256
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %127 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @AD_LUT, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @write_i2c_reg(i64 %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %122

135:                                              ; preds = %122
  %136 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %137 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @AD_ADDR, align 4
  %140 = load i32, i32* @AD_CMD_REG, align 4
  %141 = call i32 @write_i2c_reg(i64 %138, i32 %139, i32 %140)
  %142 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %143 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @AD_CMD, align 4
  %146 = load i32, i32* @VIDEO_CNL_1, align 4
  %147 = load i32, i32* @SYNC_CNL_1, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @SYNC_LVL_3, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @write_i2c_reg(i64 %144, i32 %145, i32 %150)
  %152 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %153 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @AD_ADDR, align 4
  %156 = load i32, i32* @AD_POS_REF, align 4
  %157 = call i32 @write_i2c_reg(i64 %154, i32 %155, i32 %156)
  %158 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %159 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @AD_CMD, align 4
  %162 = call i32 @write_i2c_reg(i64 %160, i32 %161, i32 34)
  %163 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %164 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @AD_ADDR, align 4
  %167 = load i32, i32* @AD_NEG_REF, align 4
  %168 = call i32 @write_i2c_reg(i64 %165, i32 %166, i32 %167)
  %169 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %170 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* @AD_CMD, align 4
  %173 = call i32 @write_i2c_reg(i64 %171, i32 %172, i32 0)
  %174 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %175 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* @CONFIG, align 4
  %178 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %179 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @PM_LUT_PGM, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @write_i2c_reg(i64 %176, i32 %177, i32 %182)
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %200, %135
  %185 = load i32, i32* %5, align 4
  %186 = icmp slt i32 %185, 256
  br i1 %186, label %187, label %203

187:                                              ; preds = %184
  %188 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %189 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* @PM_LUT_ADDR, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @write_i2c_reg(i64 %190, i32 %191, i32 %192)
  %194 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %195 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* @PM_LUT_DATA, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @write_i2c_reg(i64 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %187
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %184

203:                                              ; preds = %184
  %204 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %205 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @CONFIG, align 4
  %208 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %209 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @PM_LUT_PGM, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @PM_LUT_SEL, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @write_i2c_reg(i64 %206, i32 %207, i32 %214)
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %232, %203
  %217 = load i32, i32* %5, align 4
  %218 = icmp slt i32 %217, 256
  br i1 %218, label %219, label %235

219:                                              ; preds = %216
  %220 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %221 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* @PM_LUT_ADDR, align 4
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @write_i2c_reg(i64 %222, i32 %223, i32 %224)
  %226 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %227 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* @PM_LUT_DATA, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @write_i2c_reg(i64 %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %219
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %5, align 4
  br label %216

235:                                              ; preds = %216
  %236 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %237 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* @CONFIG, align 4
  %240 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %241 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @write_i2c_reg(i64 %238, i32 %239, i32 %242)
  %244 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %245 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* @AD_ADDR, align 4
  %248 = load i32, i32* @AD_CMD_REG, align 4
  %249 = call i32 @write_i2c_reg(i64 %246, i32 %247, i32 %248)
  %250 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %251 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* @AD_CMD, align 4
  %254 = load i32, i32* @VIDEO_CNL_1, align 4
  %255 = load i32, i32* @SYNC_CNL_1, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @SYNC_LVL_3, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @write_i2c_reg(i64 %252, i32 %253, i32 %258)
  %260 = load i32, i32* @FLD_START, align 4
  %261 = load i32, i32* @FLD_END_EVEN, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @FLD_END_ODD, align 4
  %264 = or i32 %262, %263
  %265 = load %struct.dt3155_priv*, %struct.dt3155_priv** %3, align 8
  %266 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @INT_CSR, align 8
  %269 = add nsw i64 %267, %268
  %270 = call i32 @iowrite32(i32 %264, i64 %269)
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %235, %113
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @read_i2c_reg(i64, i32, i64*) #1

declare dso_local i32 @write_i2c_reg(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
