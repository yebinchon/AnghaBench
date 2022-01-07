; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_cmdfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_cmdfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32, i32, i32 }
%struct.cafe_priv = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cmdfunc %02x, 0x%x, 0x%x\0A\00", align 1
@NAND_CTRL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Continue command, ctl1 %08x, #data %d\0A\00", align 1
@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_ADDR1 = common dso_local global i32 0, align 4
@NAND_ADDR2 = common dso_local global i32 0, align 4
@CTRL1_CHIPSELECT = common dso_local global i32 0, align 4
@NAND_CMD_READID = common dso_local global i32 0, align 4
@NAND_CMD_READ1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Setup for delayed command, ctl1 %08x, dlen %x\0A\00", align 1
@NAND_CMD_RNDOUTSTART = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"dlen %x, ctl1 %x, ctl2 %x\0A\00", align 1
@NAND_DATA_LEN = common dso_local global i32 0, align 4
@NAND_IRQ = common dso_local global i32 0, align 4
@NAND_DMA_CTRL = common dso_local global i32 0, align 4
@regdebug = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"About to write command %08x to register 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Register %x: %08x\0A\00", align 1
@NAND_CTRL1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Wait for ready, IRQ %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Command %x completed after %d usec, irqs %x (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @cafe_nand_cmdfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_nand_cmdfunc(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.cafe_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %18)
  store %struct.mtd_info* %19, %struct.mtd_info** %9, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = call %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip* %20)
  store %struct.cafe_priv* %21, %struct.cafe_priv** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 -2147483648, i32* %13, align 4
  %22 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %23 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 133
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 132
  br i1 %34, label %35, label %63

35:                                               ; preds = %32, %4
  %36 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %37 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %38 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, 256
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @NAND_CTRL2, align 4
  %44 = call i32 @cafe_writel(%struct.cafe_priv* %36, i32 %42, i32 %43)
  %45 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %46 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %49 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, -1073741825
  store i32 %51, i32* %49, align 8
  %52 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %53 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %57 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %60 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61)
  br label %251

63:                                               ; preds = %32
  %64 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %65 = load i32, i32* @NAND_CTRL2, align 4
  %66 = call i32 @cafe_writel(%struct.cafe_priv* %64, i32 0, i32 %65)
  %67 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 512
  br i1 %70, label %71, label %82

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @NAND_CMD_READOOB, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @NAND_CMD_READ0, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %75, %71, %63
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @NAND_ADDR1, align 4
  %89 = call i32 @cafe_writel(%struct.cafe_priv* %86, i32 %87, i32 %88)
  store i32 2, i32* %11, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %105

93:                                               ; preds = %85
  br label %125

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %124

97:                                               ; preds = %94
  %98 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 65535
  %101 = load i32, i32* @NAND_ADDR1, align 4
  %102 = call i32 @cafe_writel(%struct.cafe_priv* %98, i32 %100, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = ashr i32 %103, 16
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %97, %92
  %106 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @NAND_ADDR2, align 4
  %109 = call i32 @cafe_writel(%struct.cafe_priv* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %11, align 4
  %112 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %113 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %116 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 16
  %119 = icmp sgt i32 %114, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %120, %105
  br label %124

124:                                              ; preds = %123, %94
  br label %125

125:                                              ; preds = %124, %93
  %126 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %127 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %126, i32 0, i32 3
  store i32 0, i32* %127, align 4
  %128 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %129 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %128, i32 0, i32 2
  store i32 0, i32* %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = or i32 -2147483648, %130
  %132 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %133 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CTRL1_CHIPSELECT, align 4
  %136 = and i32 %134, %135
  %137 = or i32 %131, %136
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @NAND_CMD_READID, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %125
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 128
  br i1 %143, label %144, label %149

144:                                              ; preds = %141, %125
  %145 = load i32, i32* %12, align 4
  %146 = or i32 %145, 67108864
  store i32 %146, i32* %12, align 4
  %147 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %148 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %147, i32 0, i32 3
  store i32 4, i32* %148, align 4
  store i32 1, i32* %11, align 4
  br label %186

149:                                              ; preds = %141
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @NAND_CMD_READ0, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %164, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @NAND_CMD_READ1, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @NAND_CMD_READOOB, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %162, 130
  br i1 %163, label %164, label %178

164:                                              ; preds = %161, %157, %153, %149
  %165 = load i32, i32* %12, align 4
  %166 = or i32 %165, 67108864
  store i32 %166, i32* %12, align 4
  %167 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %168 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %171 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %177 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  br label %185

178:                                              ; preds = %161
  %179 = load i32, i32* %6, align 4
  %180 = icmp eq i32 %179, 129
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = or i32 %182, 33554432
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %164
  br label %186

186:                                              ; preds = %185, %144
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load i32, i32* %11, align 4
  %191 = sub nsw i32 %190, 1
  %192 = or i32 %191, 8
  %193 = shl i32 %192, 27
  %194 = load i32, i32* %12, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %189, %186
  %197 = load i32, i32* %6, align 4
  %198 = icmp eq i32 %197, 129
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = icmp eq i32 %200, 134
  br i1 %201, label %202, label %217

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %205 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %207 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %206, i32 0, i32 4
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %211 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %214 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %209, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %212, i32 %215)
  br label %397

217:                                              ; preds = %199
  %218 = load i32, i32* %6, align 4
  %219 = icmp eq i32 %218, 130
  br i1 %219, label %220, label %230

220:                                              ; preds = %217
  %221 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %222 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %223 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, 256
  %226 = load i32, i32* @NAND_CMD_RNDOUTSTART, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @NAND_CTRL2, align 4
  %229 = call i32 @cafe_writel(%struct.cafe_priv* %221, i32 %227, i32 %228)
  br label %250

230:                                              ; preds = %217
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @NAND_CMD_READ0, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %230
  %235 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %236 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp sgt i32 %237, 512
  br i1 %238, label %239, label %249

239:                                              ; preds = %234
  %240 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %241 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %242 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, 256
  %245 = load i32, i32* @NAND_CMD_READSTART, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @NAND_CTRL2, align 4
  %248 = call i32 @cafe_writel(%struct.cafe_priv* %240, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %239, %234, %230
  br label %250

250:                                              ; preds = %249, %220
  br label %251

251:                                              ; preds = %250, %35
  %252 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %253 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %252, i32 0, i32 4
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %257 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %261 = load i32, i32* @NAND_CTRL2, align 4
  %262 = call i32 @cafe_readl(%struct.cafe_priv* %260, i32 %261)
  %263 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %258, i32 %259, i32 %262)
  %264 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %265 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %266 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @NAND_DATA_LEN, align 4
  %269 = call i32 @cafe_writel(%struct.cafe_priv* %264, i32 %267, i32 %268)
  %270 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %271 = load i32, i32* @NAND_IRQ, align 4
  %272 = call i32 @cafe_writel(%struct.cafe_priv* %270, i32 -1879048192, i32 %271)
  %273 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %274 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %297

277:                                              ; preds = %251
  %278 = load i32, i32* %12, align 4
  %279 = and i32 %278, 100663296
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %277
  %282 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %283 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = add i32 -1073741824, %284
  store i32 %285, i32* %14, align 4
  %286 = load i32, i32* %12, align 4
  %287 = and i32 %286, 67108864
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = load i32, i32* %14, align 4
  %291 = or i32 %290, 536870912
  store i32 %291, i32* %14, align 4
  store i32 268435456, i32* %13, align 4
  br label %292

292:                                              ; preds = %289, %281
  %293 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %294 = load i32, i32* %14, align 4
  %295 = load i32, i32* @NAND_DMA_CTRL, align 4
  %296 = call i32 @cafe_writel(%struct.cafe_priv* %293, i32 %294, i32 %295)
  br label %297

297:                                              ; preds = %292, %277, %251
  %298 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %299 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %298, i32 0, i32 3
  store i32 0, i32* %299, align 4
  %300 = load i32, i32* @regdebug, align 4
  %301 = call i64 @unlikely(i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %323

303:                                              ; preds = %297
  %304 = load i32, i32* %12, align 4
  %305 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %304)
  store i32 4, i32* %15, align 4
  br label %306

306:                                              ; preds = %319, %303
  %307 = load i32, i32* %15, align 4
  %308 = icmp slt i32 %307, 92
  br i1 %308, label %309, label %322

309:                                              ; preds = %306
  %310 = load i32, i32* %15, align 4
  %311 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %312 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %311, i32 0, i32 5
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* %15, align 4
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %313, %315
  %317 = call i32 @readl(i64 %316)
  %318 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %310, i32 %317)
  br label %319

319:                                              ; preds = %309
  %320 = load i32, i32* %15, align 4
  %321 = add nsw i32 %320, 4
  store i32 %321, i32* %15, align 4
  br label %306

322:                                              ; preds = %306
  br label %323

323:                                              ; preds = %322, %297
  %324 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %325 = load i32, i32* %12, align 4
  %326 = load i32, i32* @NAND_CTRL1, align 4
  %327 = call i32 @cafe_writel(%struct.cafe_priv* %324, i32 %325, i32 %326)
  %328 = call i32 @ndelay(i32 100)
  store i32 500000, i32* %16, align 4
  br label %329

329:                                              ; preds = %355, %323
  %330 = load i32, i32* %16, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %358

332:                                              ; preds = %329
  %333 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %334 = load i32, i32* @NAND_IRQ, align 4
  %335 = call i32 @cafe_readl(%struct.cafe_priv* %333, i32 %334)
  store i32 %335, i32* %17, align 4
  %336 = load i32, i32* %17, align 4
  %337 = load i32, i32* %13, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %332
  br label %358

341:                                              ; preds = %332
  %342 = call i32 @udelay(i32 1)
  %343 = load i32, i32* %16, align 4
  %344 = srem i32 %343, 100000
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %353, label %346

346:                                              ; preds = %341
  %347 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %348 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %347, i32 0, i32 4
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load i32, i32* %17, align 4
  %352 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %350, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %351)
  br label %353

353:                                              ; preds = %346, %341
  %354 = call i32 (...) @cpu_relax()
  br label %355

355:                                              ; preds = %353
  %356 = load i32, i32* %16, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %16, align 4
  br label %329

358:                                              ; preds = %340, %329
  %359 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %360 = load i32, i32* %13, align 4
  %361 = load i32, i32* @NAND_IRQ, align 4
  %362 = call i32 @cafe_writel(%struct.cafe_priv* %359, i32 %360, i32 %361)
  %363 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %364 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %363, i32 0, i32 4
  %365 = load %struct.TYPE_2__*, %struct.TYPE_2__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 0
  %367 = load i32, i32* %6, align 4
  %368 = load i32, i32* %16, align 4
  %369 = sub nsw i32 500000, %368
  %370 = load i32, i32* %17, align 4
  %371 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %372 = load i32, i32* @NAND_IRQ, align 4
  %373 = call i32 @cafe_readl(%struct.cafe_priv* %371, i32 %372)
  %374 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %366, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %367, i32 %369, i32 %370, i32 %373)
  %375 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %376 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = and i32 %377, 1073741824
  %379 = call i32 @WARN_ON(i32 %378)
  %380 = load i32, i32* %6, align 4
  switch i32 %380, label %388 [
    i32 135, label %381
    i32 132, label %381
    i32 134, label %381
    i32 133, label %381
    i32 129, label %381
    i32 131, label %381
    i32 128, label %381
    i32 130, label %381
  ]

381:                                              ; preds = %358, %358, %358, %358, %358, %358, %358, %358
  %382 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %383 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %384 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @NAND_CTRL2, align 4
  %387 = call i32 @cafe_writel(%struct.cafe_priv* %382, i32 %385, i32 %386)
  br label %397

388:                                              ; preds = %358
  %389 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %390 = call i32 @nand_wait_ready(%struct.nand_chip* %389)
  %391 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %392 = load %struct.cafe_priv*, %struct.cafe_priv** %10, align 8
  %393 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @NAND_CTRL2, align 4
  %396 = call i32 @cafe_writel(%struct.cafe_priv* %391, i32 %394, i32 %395)
  br label %397

397:                                              ; preds = %388, %381, %202
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nand_wait_ready(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
