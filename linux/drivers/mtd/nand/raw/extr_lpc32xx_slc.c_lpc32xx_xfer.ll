; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.lpc32xx_nand_host = type { i32*, i32*, i32, i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@high_memory = common dso_local global i8* null, align 8
@SLCCFG_DMA_DIR = common dso_local global i32 0, align 4
@SLCCFG_ECC_EN = common dso_local global i32 0, align 4
@SLCCFG_DMA_ECC = common dso_local global i32 0, align 4
@SLCCFG_DMA_BURST = common dso_local global i32 0, align 4
@SLCCTRL_ECC_CLEAR = common dso_local global i32 0, align 4
@SLCCTRL_DMA_START = common dso_local global i32 0, align 4
@SLCSTAT_DMA_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FIFO not empty!\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@LPC32XX_DMA_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"FIFO held data too long\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"DMA FIFO failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32, i32)* @lpc32xx_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_xfer(%struct.mtd_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.lpc32xx_nand_host*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %20 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %19)
  store %struct.nand_chip* %20, %struct.nand_chip** %10, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %22 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %21)
  store %struct.lpc32xx_nand_host* %22, %struct.lpc32xx_nand_host** %11, align 8
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %16, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i8*, i8** @high_memory, align 8
  %34 = icmp ule i8* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %17, align 8
  store i32 1, i32* %18, align 4
  br label %53

37:                                               ; preds = %29
  %38 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %39 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %45 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32* %46, i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %58 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SLC_CFG(i32 %59)
  %61 = call i32 @readl(i32 %60)
  %62 = load i32, i32* @SLCCFG_DMA_DIR, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SLCCFG_ECC_EN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SLCCFG_DMA_ECC, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SLCCFG_DMA_BURST, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %71 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @SLC_CFG(i32 %72)
  %74 = call i32 @writel(i32 %69, i32 %73)
  br label %95

75:                                               ; preds = %53
  %76 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %77 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @SLC_CFG(i32 %78)
  %80 = call i32 @readl(i32 %79)
  %81 = load i32, i32* @SLCCFG_ECC_EN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SLCCFG_DMA_ECC, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SLCCFG_DMA_BURST, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @SLCCFG_DMA_DIR, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %91 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @SLC_CFG(i32 %92)
  %94 = call i32 @writel(i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %75, %56
  %96 = load i32, i32* @SLCCTRL_ECC_CLEAR, align 4
  %97 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %98 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @SLC_CTRL(i32 %99)
  %101 = call i32 @writel(i32 %96, i32 %100)
  %102 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %103 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %106 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @SLC_TC(i32 %107)
  %109 = call i32 @writel(i32 %104, i32 %108)
  %110 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %111 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @SLC_CTRL(i32 %112)
  %114 = call i32 @readl(i32 %113)
  %115 = load i32, i32* @SLCCTRL_DMA_START, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %118 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @SLC_CTRL(i32 %119)
  %121 = call i32 @writel(i32 %116, i32 %120)
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %191, %95
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %125 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %129, label %194

129:                                              ; preds = %122
  %130 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %131 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %132 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @SLC_DMA_DATA(i32 %133)
  %135 = load i32*, i32** %17, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %138 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %136, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %135, i64 %142
  %144 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %145 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %148 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %146, %150
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @lpc32xx_xmit_dma(%struct.mtd_info* %130, i32 %134, i32* %143, i32 %151, i32 %152)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %129
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %5, align 4
  br label %342

158:                                              ; preds = %129
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %161 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp eq i32 %159, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %194

167:                                              ; preds = %158
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = call i32 @udelay(i32 10)
  br label %172

172:                                              ; preds = %170, %167
  %173 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %174 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %175 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @SLC_ECC(i32 %176)
  %178 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %179 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %185 = call i32 @lpc32xx_xmit_dma(%struct.mtd_info* %173, i32 %177, i32* %183, i32 4, i32 %184)
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %172
  %189 = load i32, i32* %15, align 4
  store i32 %189, i32* %5, align 4
  br label %342

190:                                              ; preds = %172
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %122

194:                                              ; preds = %166, %122
  %195 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %196 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @SLC_STAT(i32 %197)
  %199 = call i32 @readl(i32 %198)
  %200 = load i32, i32* @SLCSTAT_DMA_FIFO, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %245

203:                                              ; preds = %194
  %204 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %205 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @dev_warn(i32 %207, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %209 = load i64, i64* @jiffies, align 8
  %210 = load i32, i32* @LPC32XX_DMA_TIMEOUT, align 4
  %211 = call i64 @msecs_to_jiffies(i32 %210)
  %212 = add i64 %209, %211
  store i64 %212, i64* %14, align 8
  br label %213

213:                                              ; preds = %229, %203
  %214 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %215 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @SLC_STAT(i32 %216)
  %218 = call i32 @readl(i32 %217)
  %219 = load i32, i32* @SLCSTAT_DMA_FIFO, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %213
  %223 = load i64, i64* @jiffies, align 8
  %224 = load i64, i64* %14, align 8
  %225 = call i64 @time_before(i64 %223, i64 %224)
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %222, %213
  %228 = phi i1 [ false, %213 ], [ %226, %222 ]
  br i1 %228, label %229, label %231

229:                                              ; preds = %227
  %230 = call i32 (...) @cpu_relax()
  br label %213

231:                                              ; preds = %227
  %232 = load i64, i64* @jiffies, align 8
  %233 = load i64, i64* %14, align 8
  %234 = call i64 @time_before(i64 %232, i64 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %231
  %237 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %238 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @dev_err(i32 %240, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %242 = load i32, i32* @EIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %236, %231
  br label %245

245:                                              ; preds = %244, %194
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  %249 = call i32 @udelay(i32 10)
  br label %250

250:                                              ; preds = %248, %245
  %251 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %252 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @SLC_ECC(i32 %253)
  %255 = call i32 @readl(i32 %254)
  %256 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %257 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %260 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %258, i64 %264
  store i32 %255, i32* %265, align 4
  %266 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %267 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @dmaengine_terminate_all(i32 %268)
  %270 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %271 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @SLC_STAT(i32 %272)
  %274 = call i32 @readl(i32 %273)
  %275 = load i32, i32* @SLCSTAT_DMA_FIFO, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %250
  %279 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %280 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @SLC_TC(i32 %281)
  %283 = call i32 @readl(i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %278, %250
  %286 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %287 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @dev_err(i32 %289, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %291 = load i32, i32* @EIO, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %13, align 4
  br label %293

293:                                              ; preds = %285, %278
  %294 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %295 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @SLC_CTRL(i32 %296)
  %298 = call i32 @readl(i32 %297)
  %299 = load i32, i32* @SLCCTRL_DMA_START, align 4
  %300 = xor i32 %299, -1
  %301 = and i32 %298, %300
  %302 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %303 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @SLC_CTRL(i32 %304)
  %306 = call i32 @writel(i32 %301, i32 %305)
  %307 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %308 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @SLC_CFG(i32 %309)
  %311 = call i32 @readl(i32 %310)
  %312 = load i32, i32* @SLCCFG_DMA_DIR, align 4
  %313 = load i32, i32* @SLCCFG_ECC_EN, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @SLCCFG_DMA_ECC, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @SLCCFG_DMA_BURST, align 4
  %318 = or i32 %316, %317
  %319 = xor i32 %318, -1
  %320 = and i32 %311, %319
  %321 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %322 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @SLC_CFG(i32 %323)
  %325 = call i32 @writel(i32 %320, i32 %324)
  %326 = load i32, i32* %18, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %340, label %328

328:                                              ; preds = %293
  %329 = load i32, i32* %9, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %340

331:                                              ; preds = %328
  %332 = load i32*, i32** %7, align 8
  %333 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %334 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %337 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @memcpy(i32* %332, i32* %335, i32 %338)
  br label %340

340:                                              ; preds = %331, %328, %293
  %341 = load i32, i32* %13, align 4
  store i32 %341, i32* %5, align 4
  br label %342

342:                                              ; preds = %340, %188, %156
  %343 = load i32, i32* %5, align 4
  ret i32 %343
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @SLC_CFG(i32) #1

declare dso_local i32 @SLC_CTRL(i32) #1

declare dso_local i32 @SLC_TC(i32) #1

declare dso_local i32 @lpc32xx_xmit_dma(%struct.mtd_info*, i32, i32*, i32, i32) #1

declare dso_local i32 @SLC_DMA_DATA(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @SLC_ECC(i32) #1

declare dso_local i32 @SLC_STAT(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
