; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32 }
%struct.ifmap = type { i32, i32, i32 }
%struct.frad_local = type { i32, i32, i8 }

@EINVAL = common dso_local global i32 0, align 4
@valid_port = common dso_local global i32* null, align 8
@SDLA_IO_EXTENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"io-port 0x%04lx in use\0A\00", align 1
@SDLA_UNKNOWN = common dso_local global i32 0, align 4
@SDLA_HALT = common dso_local global i8 0, align 1
@SDLA_REG_Z80_CONTROL = common dso_local global i64 0, align 8
@SDLA_S502_STS = common dso_local global i32 0, align 4
@SDLA_S502E_INTACK = common dso_local global i8 0, align 1
@SDLA_REG_CONTROL = common dso_local global i64 0, align 8
@SDLA_S507_ENABLE = common dso_local global i8 0, align 1
@SDLA_S508_STS = common dso_local global i32 0, align 4
@SDLA_S508_INTEN = common dso_local global i8 0, align 1
@SDLA_S502A_HALT = common dso_local global i8 0, align 1
@SDLA_S502A_START = common dso_local global i8 0, align 1
@SDLA_S502A_INTEN = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown card type\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@sdla_isr = common dso_local global i32 0, align 4
@SDLA_S507_IRQ3 = common dso_local global i8 0, align 1
@SDLA_S507_IRQ4 = common dso_local global i8 0, align 1
@SDLA_S507_IRQ5 = common dso_local global i8 0, align 1
@SDLA_S507_IRQ7 = common dso_local global i8 0, align 1
@SDLA_S507_IRQ10 = common dso_local global i8 0, align 1
@SDLA_S507_IRQ11 = common dso_local global i8 0, align 1
@SDLA_S507_IRQ12 = common dso_local global i8 0, align 1
@SDLA_S507_IRQ15 = common dso_local global i8 0, align 1
@valid_mem = common dso_local global i32* null, align 8
@SDLA_8K_WINDOW = common dso_local global i8 0, align 1
@SDLA_S502_SEG_A = common dso_local global i8 0, align 1
@SDLA_S502_SEG_C = common dso_local global i8 0, align 1
@SDLA_S502_SEG_D = common dso_local global i8 0, align 1
@SDLA_S502_SEG_E = common dso_local global i8 0, align 1
@SDLA_S507_SEG_A = common dso_local global i8 0, align 1
@SDLA_S507_SEG_B = common dso_local global i8 0, align 1
@SDLA_S507_SEG_C = common dso_local global i8 0, align 1
@SDLA_S507_SEG_E = common dso_local global i8 0, align 1
@SDLA_S508_SEG_A = common dso_local global i8 0, align 1
@SDLA_S508_SEG_C = common dso_local global i8 0, align 1
@SDLA_S508_SEG_D = common dso_local global i8 0, align 1
@SDLA_S508_SEG_E = common dso_local global i8 0, align 1
@SDLA_REG_PC_WINDOW = common dso_local global i64 0, align 8
@SDLA_S502E_ENABLE = common dso_local global i8 0, align 1
@SDLA_MEMEN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifmap*)* @sdla_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_set_config(%struct.net_device* %0, %struct.ifmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifmap*, align 8
  %6 = alloca %struct.frad_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifmap* %1, %struct.ifmap** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.frad_local* @netdev_priv(%struct.net_device* %13)
  store %struct.frad_local* %14, %struct.frad_local** %6, align 8
  %15 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %16 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %651

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** @valid_port, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i32*, i32** @valid_port, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %35 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %43

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %23

43:                                               ; preds = %38, %23
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** @valid_port, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %651

51:                                               ; preds = %43
  %52 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %53 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SDLA_IO_EXTENTS, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @request_region(i32 %54, i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %51
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %651

68:                                               ; preds = %51
  %69 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %70 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @SDLA_UNKNOWN, align 4
  %73 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %74 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %76 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %75, i32 0, i32 2
  store i8 0, i8* %76, align 4
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %89, %68
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SDLA_IO_EXTENTS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %82, %83
  %85 = call i32 @inb(i32 %84)
  %86 = icmp ne i32 %85, 255
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %92

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %77

92:                                               ; preds = %87, %77
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SDLA_IO_EXTENTS, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %92
  %97 = load i8, i8* @SDLA_HALT, align 1
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* @SDLA_REG_Z80_CONTROL, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i8 signext %97, i64 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @SDLA_S502_STS, align 4
  %105 = add i32 %103, %104
  %106 = call i32 @inb(i32 %105)
  %107 = and i32 %106, 15
  %108 = icmp eq i32 %107, 8
  br i1 %108, label %109, label %132

109:                                              ; preds = %96
  %110 = load i8, i8* @SDLA_S502E_INTACK, align 1
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @outb(i8 signext %110, i64 %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @SDLA_S502_STS, align 4
  %118 = add i32 %116, %117
  %119 = call i32 @inb(i32 %118)
  %120 = and i32 %119, 15
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %131

122:                                              ; preds = %109
  %123 = load i8, i8* @SDLA_HALT, align 1
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @outb(i8 signext %123, i64 %127)
  %129 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %130 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %129, i32 0, i32 1
  store i32 130, i32* %130, align 4
  br label %283

131:                                              ; preds = %109
  br label %132

132:                                              ; preds = %131, %96
  br label %133

133:                                              ; preds = %132, %92
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @inb(i32 %134)
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %8, align 1
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %151, %133
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @SDLA_IO_EXTENTS, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %142, %143
  %145 = call i32 @inb(i32 %144)
  %146 = load i8, i8* %8, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %154

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %137

154:                                              ; preds = %149, %137
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @SDLA_IO_EXTENTS, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %195

158:                                              ; preds = %154
  %159 = load i8, i8* @SDLA_HALT, align 1
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @outb(i8 signext %159, i64 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @SDLA_S502_STS, align 4
  %167 = add i32 %165, %166
  %168 = call i32 @inb(i32 %167)
  %169 = and i32 %168, 126
  %170 = icmp eq i32 %169, 48
  br i1 %170, label %171, label %194

171:                                              ; preds = %158
  %172 = load i8, i8* @SDLA_S507_ENABLE, align 1
  %173 = load i32, i32* %9, align 4
  %174 = zext i32 %173 to i64
  %175 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @outb(i8 signext %172, i64 %176)
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @SDLA_S502_STS, align 4
  %180 = add i32 %178, %179
  %181 = call i32 @inb(i32 %180)
  %182 = and i32 %181, 126
  %183 = icmp eq i32 %182, 50
  br i1 %183, label %184, label %193

184:                                              ; preds = %171
  %185 = load i8, i8* @SDLA_HALT, align 1
  %186 = load i32, i32* %9, align 4
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @outb(i8 signext %185, i64 %189)
  %191 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %192 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %191, i32 0, i32 1
  store i32 129, i32* %192, align 4
  br label %283

193:                                              ; preds = %171
  br label %194

194:                                              ; preds = %193, %158
  br label %195

195:                                              ; preds = %194, %154
  %196 = load i8, i8* @SDLA_HALT, align 1
  %197 = load i32, i32* %9, align 4
  %198 = zext i32 %197 to i64
  %199 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @outb(i8 signext %196, i64 %200)
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @SDLA_S508_STS, align 4
  %204 = add i32 %202, %203
  %205 = call i32 @inb(i32 %204)
  %206 = and i32 %205, 63
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %231

208:                                              ; preds = %195
  %209 = load i8, i8* @SDLA_S508_INTEN, align 1
  %210 = load i32, i32* %9, align 4
  %211 = zext i32 %210 to i64
  %212 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @outb(i8 signext %209, i64 %213)
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @SDLA_S508_STS, align 4
  %217 = add i32 %215, %216
  %218 = call i32 @inb(i32 %217)
  %219 = and i32 %218, 63
  %220 = icmp eq i32 %219, 16
  br i1 %220, label %221, label %230

221:                                              ; preds = %208
  %222 = load i8, i8* @SDLA_HALT, align 1
  %223 = load i32, i32* %9, align 4
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @outb(i8 signext %222, i64 %226)
  %228 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %229 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %228, i32 0, i32 1
  store i32 128, i32* %229, align 4
  br label %283

230:                                              ; preds = %208
  br label %231

231:                                              ; preds = %230, %195
  %232 = load i8, i8* @SDLA_S502A_HALT, align 1
  %233 = load i32, i32* %9, align 4
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @outb(i8 signext %232, i64 %236)
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @SDLA_S502_STS, align 4
  %240 = add i32 %238, %239
  %241 = call i32 @inb(i32 %240)
  %242 = icmp eq i32 %241, 64
  br i1 %242, label %243, label %278

243:                                              ; preds = %231
  %244 = load i8, i8* @SDLA_S502A_START, align 1
  %245 = load i32, i32* %9, align 4
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @outb(i8 signext %244, i64 %248)
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* @SDLA_S502_STS, align 4
  %252 = add i32 %250, %251
  %253 = call i32 @inb(i32 %252)
  %254 = icmp eq i32 %253, 64
  br i1 %254, label %255, label %277

255:                                              ; preds = %243
  %256 = load i8, i8* @SDLA_S502A_INTEN, align 1
  %257 = load i32, i32* %9, align 4
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %260 = add nsw i64 %258, %259
  %261 = call i32 @outb(i8 signext %256, i64 %260)
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @SDLA_S502_STS, align 4
  %264 = add i32 %262, %263
  %265 = call i32 @inb(i32 %264)
  %266 = icmp eq i32 %265, 68
  br i1 %266, label %267, label %276

267:                                              ; preds = %255
  %268 = load i8, i8* @SDLA_S502A_START, align 1
  %269 = load i32, i32* %9, align 4
  %270 = zext i32 %269 to i64
  %271 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @outb(i8 signext %268, i64 %272)
  %274 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %275 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %274, i32 0, i32 1
  store i32 131, i32* %275, align 4
  br label %283

276:                                              ; preds = %255
  br label %277

277:                                              ; preds = %276, %243
  br label %278

278:                                              ; preds = %277, %231
  %279 = load %struct.net_device*, %struct.net_device** %4, align 8
  %280 = call i32 @netdev_notice(%struct.net_device* %279, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %281 = load i32, i32* @ENODEV, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %10, align 4
  br label %646

283:                                              ; preds = %267, %221, %184, %122
  %284 = load i32, i32* %9, align 4
  switch i32 %284, label %297 [
    i32 624, label %285
    i32 640, label %285
    i32 896, label %285
    i32 912, label %285
  ]

285:                                              ; preds = %283, %283, %283, %283
  %286 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %287 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 128
  br i1 %289, label %290, label %296

290:                                              ; preds = %285
  %291 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %292 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 129
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %646

296:                                              ; preds = %290, %285
  br label %297

297:                                              ; preds = %296, %283
  %298 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %299 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  switch i32 %300, label %327 [
    i32 2, label %301
    i32 10, label %308
    i32 11, label %308
    i32 12, label %308
    i32 15, label %308
    i32 4, label %308
    i32 3, label %320
    i32 5, label %320
    i32 7, label %320
  ]

301:                                              ; preds = %297
  %302 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %303 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 130
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  br label %646

307:                                              ; preds = %301
  br label %328

308:                                              ; preds = %297, %297, %297, %297, %297
  %309 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %310 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 128
  br i1 %312, label %313, label %319

313:                                              ; preds = %308
  %314 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %315 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 129
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  br label %646

319:                                              ; preds = %313, %308
  br label %328

320:                                              ; preds = %297, %297, %297
  %321 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %322 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %323, 131
  br i1 %324, label %325, label %326

325:                                              ; preds = %320
  br label %646

326:                                              ; preds = %320
  br label %328

327:                                              ; preds = %297
  br label %646

328:                                              ; preds = %326, %319, %307
  %329 = load i32, i32* @EAGAIN, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %10, align 4
  %331 = load %struct.net_device*, %struct.net_device** %4, align 8
  %332 = getelementptr inbounds %struct.net_device, %struct.net_device* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @sdla_isr, align 4
  %335 = load %struct.net_device*, %struct.net_device** %4, align 8
  %336 = getelementptr inbounds %struct.net_device, %struct.net_device* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.net_device*, %struct.net_device** %4, align 8
  %339 = call i64 @request_irq(i32 %333, i32 %334, i32 0, i32 %337, %struct.net_device* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %328
  br label %646

342:                                              ; preds = %328
  %343 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %344 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 129
  br i1 %346, label %347, label %384

347:                                              ; preds = %342
  %348 = load %struct.net_device*, %struct.net_device** %4, align 8
  %349 = getelementptr inbounds %struct.net_device, %struct.net_device* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  switch i32 %350, label %383 [
    i32 3, label %351
    i32 4, label %355
    i32 5, label %359
    i32 7, label %363
    i32 10, label %367
    i32 11, label %371
    i32 12, label %375
    i32 15, label %379
  ]

351:                                              ; preds = %347
  %352 = load i8, i8* @SDLA_S507_IRQ3, align 1
  %353 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %354 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %353, i32 0, i32 2
  store i8 %352, i8* %354, align 4
  br label %383

355:                                              ; preds = %347
  %356 = load i8, i8* @SDLA_S507_IRQ4, align 1
  %357 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %358 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %357, i32 0, i32 2
  store i8 %356, i8* %358, align 4
  br label %383

359:                                              ; preds = %347
  %360 = load i8, i8* @SDLA_S507_IRQ5, align 1
  %361 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %362 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %361, i32 0, i32 2
  store i8 %360, i8* %362, align 4
  br label %383

363:                                              ; preds = %347
  %364 = load i8, i8* @SDLA_S507_IRQ7, align 1
  %365 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %366 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %365, i32 0, i32 2
  store i8 %364, i8* %366, align 4
  br label %383

367:                                              ; preds = %347
  %368 = load i8, i8* @SDLA_S507_IRQ10, align 1
  %369 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %370 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %369, i32 0, i32 2
  store i8 %368, i8* %370, align 4
  br label %383

371:                                              ; preds = %347
  %372 = load i8, i8* @SDLA_S507_IRQ11, align 1
  %373 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %374 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %373, i32 0, i32 2
  store i8 %372, i8* %374, align 4
  br label %383

375:                                              ; preds = %347
  %376 = load i8, i8* @SDLA_S507_IRQ12, align 1
  %377 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %378 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %377, i32 0, i32 2
  store i8 %376, i8* %378, align 4
  br label %383

379:                                              ; preds = %347
  %380 = load i8, i8* @SDLA_S507_IRQ15, align 1
  %381 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %382 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %381, i32 0, i32 2
  store i8 %380, i8* %382, align 4
  br label %383

383:                                              ; preds = %347, %379, %375, %371, %367, %363, %359, %355, %351
  br label %384

384:                                              ; preds = %383, %342
  store i32 0, i32* %7, align 4
  br label %385

385:                                              ; preds = %402, %384
  %386 = load i32, i32* %7, align 4
  %387 = load i32*, i32** @valid_mem, align 8
  %388 = call i32 @ARRAY_SIZE(i32* %387)
  %389 = icmp slt i32 %386, %388
  br i1 %389, label %390, label %405

390:                                              ; preds = %385
  %391 = load i32*, i32** @valid_mem, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %397 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %395, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %390
  br label %405

401:                                              ; preds = %390
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %7, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %7, align 4
  br label %385

405:                                              ; preds = %400, %385
  %406 = load i32, i32* @EINVAL, align 4
  %407 = sub nsw i32 0, %406
  store i32 %407, i32* %10, align 4
  %408 = load i32, i32* %7, align 4
  %409 = load i32*, i32** @valid_mem, align 8
  %410 = call i32 @ARRAY_SIZE(i32* %409)
  %411 = icmp eq i32 %408, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %405
  br label %640

413:                                              ; preds = %405
  %414 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %415 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %416, 131
  br i1 %417, label %418, label %426

418:                                              ; preds = %413
  %419 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %420 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = and i32 %421, 61440
  %423 = lshr i32 %422, 12
  %424 = icmp eq i32 %423, 14
  br i1 %424, label %425, label %426

425:                                              ; preds = %418
  br label %640

426:                                              ; preds = %418, %413
  %427 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %428 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 129
  br i1 %430, label %431, label %438

431:                                              ; preds = %426
  %432 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %433 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = lshr i32 %434, 16
  %436 = icmp eq i32 %435, 11
  br i1 %436, label %437, label %438

437:                                              ; preds = %431
  br label %640

438:                                              ; preds = %431, %426
  %439 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %440 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %441, 129
  br i1 %442, label %443, label %450

443:                                              ; preds = %438
  %444 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %445 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = lshr i32 %446, 16
  %448 = icmp eq i32 %447, 13
  br i1 %448, label %449, label %450

449:                                              ; preds = %443
  br label %640

450:                                              ; preds = %443, %438
  %451 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %452 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = icmp ne i32 %453, 128
  br i1 %454, label %455, label %458

455:                                              ; preds = %450
  %456 = load i8, i8* @SDLA_8K_WINDOW, align 1
  %457 = sext i8 %456 to i32
  br label %459

458:                                              ; preds = %450
  br label %459

459:                                              ; preds = %458, %455
  %460 = phi i32 [ %457, %455 ], [ 0, %458 ]
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %8, align 1
  %462 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %463 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 4
  %465 = and i32 %464, 61440
  %466 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %467 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = icmp eq i32 %468, 128
  %470 = zext i1 %469 to i64
  %471 = select i1 %469, i32 1, i32 0
  %472 = add nsw i32 12, %471
  %473 = lshr i32 %465, %472
  %474 = load i8, i8* %8, align 1
  %475 = sext i8 %474 to i32
  %476 = or i32 %475, %473
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %8, align 1
  %478 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %479 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  switch i32 %480, label %583 [
    i32 131, label %481
    i32 130, label %481
    i32 129, label %515
    i32 128, label %549
  ]

481:                                              ; preds = %459, %459
  %482 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %483 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %482, i32 0, i32 2
  %484 = load i32, i32* %483, align 4
  %485 = lshr i32 %484, 16
  switch i32 %485, label %514 [
    i32 10, label %486
    i32 12, label %493
    i32 13, label %500
    i32 14, label %507
  ]

486:                                              ; preds = %481
  %487 = load i8, i8* @SDLA_S502_SEG_A, align 1
  %488 = sext i8 %487 to i32
  %489 = load i8, i8* %8, align 1
  %490 = sext i8 %489 to i32
  %491 = or i32 %490, %488
  %492 = trunc i32 %491 to i8
  store i8 %492, i8* %8, align 1
  br label %514

493:                                              ; preds = %481
  %494 = load i8, i8* @SDLA_S502_SEG_C, align 1
  %495 = sext i8 %494 to i32
  %496 = load i8, i8* %8, align 1
  %497 = sext i8 %496 to i32
  %498 = or i32 %497, %495
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %8, align 1
  br label %514

500:                                              ; preds = %481
  %501 = load i8, i8* @SDLA_S502_SEG_D, align 1
  %502 = sext i8 %501 to i32
  %503 = load i8, i8* %8, align 1
  %504 = sext i8 %503 to i32
  %505 = or i32 %504, %502
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %8, align 1
  br label %514

507:                                              ; preds = %481
  %508 = load i8, i8* @SDLA_S502_SEG_E, align 1
  %509 = sext i8 %508 to i32
  %510 = load i8, i8* %8, align 1
  %511 = sext i8 %510 to i32
  %512 = or i32 %511, %509
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %8, align 1
  br label %514

514:                                              ; preds = %481, %507, %500, %493, %486
  br label %583

515:                                              ; preds = %459
  %516 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %517 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 4
  %519 = lshr i32 %518, 16
  switch i32 %519, label %548 [
    i32 10, label %520
    i32 11, label %527
    i32 12, label %534
    i32 14, label %541
  ]

520:                                              ; preds = %515
  %521 = load i8, i8* @SDLA_S507_SEG_A, align 1
  %522 = sext i8 %521 to i32
  %523 = load i8, i8* %8, align 1
  %524 = sext i8 %523 to i32
  %525 = or i32 %524, %522
  %526 = trunc i32 %525 to i8
  store i8 %526, i8* %8, align 1
  br label %548

527:                                              ; preds = %515
  %528 = load i8, i8* @SDLA_S507_SEG_B, align 1
  %529 = sext i8 %528 to i32
  %530 = load i8, i8* %8, align 1
  %531 = sext i8 %530 to i32
  %532 = or i32 %531, %529
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %8, align 1
  br label %548

534:                                              ; preds = %515
  %535 = load i8, i8* @SDLA_S507_SEG_C, align 1
  %536 = sext i8 %535 to i32
  %537 = load i8, i8* %8, align 1
  %538 = sext i8 %537 to i32
  %539 = or i32 %538, %536
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %8, align 1
  br label %548

541:                                              ; preds = %515
  %542 = load i8, i8* @SDLA_S507_SEG_E, align 1
  %543 = sext i8 %542 to i32
  %544 = load i8, i8* %8, align 1
  %545 = sext i8 %544 to i32
  %546 = or i32 %545, %543
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %8, align 1
  br label %548

548:                                              ; preds = %515, %541, %534, %527, %520
  br label %583

549:                                              ; preds = %459
  %550 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %551 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %550, i32 0, i32 2
  %552 = load i32, i32* %551, align 4
  %553 = lshr i32 %552, 16
  switch i32 %553, label %582 [
    i32 10, label %554
    i32 12, label %561
    i32 13, label %568
    i32 14, label %575
  ]

554:                                              ; preds = %549
  %555 = load i8, i8* @SDLA_S508_SEG_A, align 1
  %556 = sext i8 %555 to i32
  %557 = load i8, i8* %8, align 1
  %558 = sext i8 %557 to i32
  %559 = or i32 %558, %556
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %8, align 1
  br label %582

561:                                              ; preds = %549
  %562 = load i8, i8* @SDLA_S508_SEG_C, align 1
  %563 = sext i8 %562 to i32
  %564 = load i8, i8* %8, align 1
  %565 = sext i8 %564 to i32
  %566 = or i32 %565, %563
  %567 = trunc i32 %566 to i8
  store i8 %567, i8* %8, align 1
  br label %582

568:                                              ; preds = %549
  %569 = load i8, i8* @SDLA_S508_SEG_D, align 1
  %570 = sext i8 %569 to i32
  %571 = load i8, i8* %8, align 1
  %572 = sext i8 %571 to i32
  %573 = or i32 %572, %570
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %8, align 1
  br label %582

575:                                              ; preds = %549
  %576 = load i8, i8* @SDLA_S508_SEG_E, align 1
  %577 = sext i8 %576 to i32
  %578 = load i8, i8* %8, align 1
  %579 = sext i8 %578 to i32
  %580 = or i32 %579, %577
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %8, align 1
  br label %582

582:                                              ; preds = %549, %575, %568, %561, %554
  br label %583

583:                                              ; preds = %459, %582, %548, %514
  %584 = load i8, i8* %8, align 1
  %585 = load i32, i32* %9, align 4
  %586 = zext i32 %585 to i64
  %587 = load i64, i64* @SDLA_REG_PC_WINDOW, align 8
  %588 = add nsw i64 %586, %587
  %589 = call i32 @outb(i8 signext %584, i64 %588)
  %590 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %591 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  switch i32 %592, label %610 [
    i32 130, label %593
    i32 129, label %597
    i32 128, label %606
  ]

593:                                              ; preds = %583
  %594 = load i8, i8* @SDLA_S502E_ENABLE, align 1
  %595 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %596 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %595, i32 0, i32 2
  store i8 %594, i8* %596, align 4
  br label %610

597:                                              ; preds = %583
  %598 = load i8, i8* @SDLA_MEMEN, align 1
  %599 = sext i8 %598 to i32
  %600 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %601 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %600, i32 0, i32 2
  %602 = load i8, i8* %601, align 4
  %603 = sext i8 %602 to i32
  %604 = or i32 %603, %599
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %601, align 4
  br label %610

606:                                              ; preds = %583
  %607 = load i8, i8* @SDLA_MEMEN, align 1
  %608 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %609 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %608, i32 0, i32 2
  store i8 %607, i8* %609, align 4
  br label %610

610:                                              ; preds = %583, %606, %597, %593
  %611 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %612 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %611, i32 0, i32 2
  %613 = load i8, i8* %612, align 4
  %614 = load i32, i32* %9, align 4
  %615 = zext i32 %614 to i64
  %616 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %617 = add nsw i64 %615, %616
  %618 = call i32 @outb(i8 signext %613, i64 %617)
  %619 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %620 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.net_device*, %struct.net_device** %4, align 8
  %623 = getelementptr inbounds %struct.net_device, %struct.net_device* %622, i32 0, i32 1
  store i32 %621, i32* %623, align 4
  %624 = load i32, i32* %9, align 4
  %625 = load %struct.net_device*, %struct.net_device** %4, align 8
  %626 = getelementptr inbounds %struct.net_device, %struct.net_device* %625, i32 0, i32 0
  store i32 %624, i32* %626, align 4
  %627 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %628 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %627, i32 0, i32 2
  %629 = load i32, i32* %628, align 4
  %630 = load %struct.net_device*, %struct.net_device** %4, align 8
  %631 = getelementptr inbounds %struct.net_device, %struct.net_device* %630, i32 0, i32 2
  store i32 %629, i32* %631, align 4
  %632 = load %struct.net_device*, %struct.net_device** %4, align 8
  %633 = getelementptr inbounds %struct.net_device, %struct.net_device* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 4
  %635 = add nsw i32 %634, 8192
  %636 = load %struct.net_device*, %struct.net_device** %4, align 8
  %637 = getelementptr inbounds %struct.net_device, %struct.net_device* %636, i32 0, i32 3
  store i32 %635, i32* %637, align 4
  %638 = load %struct.frad_local*, %struct.frad_local** %6, align 8
  %639 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %638, i32 0, i32 0
  store i32 1, i32* %639, align 4
  store i32 0, i32* %3, align 4
  br label %651

640:                                              ; preds = %449, %437, %425, %412
  %641 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %642 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 4
  %644 = load %struct.net_device*, %struct.net_device** %4, align 8
  %645 = call i32 @free_irq(i32 %643, %struct.net_device* %644)
  br label %646

646:                                              ; preds = %640, %341, %327, %325, %318, %306, %295, %278
  %647 = load i32, i32* %9, align 4
  %648 = load i32, i32* @SDLA_IO_EXTENTS, align 4
  %649 = call i32 @release_region(i32 %647, i32 %648)
  %650 = load i32, i32* %10, align 4
  store i32 %650, i32* %3, align 4
  br label %651

651:                                              ; preds = %646, %610, %61, %48, %19
  %652 = load i32, i32* %3, align 4
  ret i32 %652
}

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i8 signext, i64) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
