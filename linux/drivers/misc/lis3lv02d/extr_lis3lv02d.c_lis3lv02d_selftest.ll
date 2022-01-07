; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i8, i64, i32*, i64 (%struct.lis3lv02d*, i32)*, i32, %struct.TYPE_2__*, i32 (%struct.lis3lv02d*, i8, i8)*, i32, i32 (%struct.lis3lv02d*, i8, i8*)* }
%struct.TYPE_2__ = type { i64*, i64* }

@WAI_8B = common dso_local global i64 0, align 8
@IRQ_LINE0 = common dso_local global i64 0, align 8
@IRQ_LINE1 = common dso_local global i64 0, align 8
@LIS3_IRQ1_DATA_READY = common dso_local global i8 0, align 1
@LIS3_IRQ2_DATA_READY = common dso_local global i8 0, align 1
@CTRL_REG3 = common dso_local global i8 0, align 1
@LIS3_IRQ1_MASK = common dso_local global i8 0, align 1
@LIS3_IRQ2_MASK = common dso_local global i8 0, align 1
@WAI_3DC = common dso_local global i64 0, align 8
@WAI_3DLH = common dso_local global i64 0, align 8
@CTRL_REG4 = common dso_local global i8 0, align 1
@CTRL4_ST0 = common dso_local global i8 0, align 1
@CTRL_REG1 = common dso_local global i8 0, align 1
@WAI_12B = common dso_local global i64 0, align 8
@CTRL1_ST = common dso_local global i8 0, align 1
@CTRL1_STP = common dso_local global i8 0, align 1
@OUTX = common dso_local global i32 0, align 4
@OUTY = common dso_local global i32 0, align 4
@OUTZ = common dso_local global i32 0, align 4
@SELFTEST_IRQ = common dso_local global i32 0, align 4
@SELFTEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lis3lv02d*, i64*)* @lis3lv02d_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_selftest(%struct.lis3lv02d* %0, i64* %1) #0 {
  %3 = alloca %struct.lis3lv02d*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %3, align 8
  store i64* %1, i64** %4, align 8
  %15 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %16 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %15, i32 0, i32 4
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %19 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  store i8 %20, i8* %13, align 1
  %21 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %22 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WAI_8B, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %2
  %27 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %28 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @IRQ_LINE0, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 0, i32* %31, align 4
  %32 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %33 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @IRQ_LINE1, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 0, i32* %36, align 4
  %37 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %38 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %37, i32 0, i32 7
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load i8, i8* @LIS3_IRQ1_DATA_READY, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @LIS3_IRQ2_DATA_READY, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = trunc i32 %44 to i8
  %46 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %47 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %46, i32 0, i32 0
  store i8 %45, i8* %47, align 8
  %48 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %49 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %48, i32 0, i32 8
  %50 = load i32 (%struct.lis3lv02d*, i8, i8*)*, i32 (%struct.lis3lv02d*, i8, i8*)** %49, align 8
  %51 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %52 = load i8, i8* @CTRL_REG3, align 1
  %53 = call i32 %50(%struct.lis3lv02d* %51, i8 zeroext %52, i8* %12)
  %54 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %55 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %54, i32 0, i32 6
  %56 = load i32 (%struct.lis3lv02d*, i8, i8)*, i32 (%struct.lis3lv02d*, i8, i8)** %55, align 8
  %57 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %58 = load i8, i8* @CTRL_REG3, align 1
  %59 = load i8, i8* %12, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @LIS3_IRQ1_MASK, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @LIS3_IRQ2_MASK, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %60, %66
  %68 = load i8, i8* @LIS3_IRQ1_DATA_READY, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @LIS3_IRQ2_DATA_READY, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %69, %71
  %73 = or i32 %67, %72
  %74 = trunc i32 %73 to i8
  %75 = call i32 %56(%struct.lis3lv02d* %57, i8 zeroext %58, i8 zeroext %74)
  br label %76

76:                                               ; preds = %26, %2
  %77 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %78 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @WAI_3DC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %84 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @WAI_3DLH, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %76
  %89 = load i8, i8* @CTRL_REG4, align 1
  store i8 %89, i8* %5, align 1
  %90 = load i8, i8* @CTRL4_ST0, align 1
  store i8 %90, i8* %10, align 1
  br label %103

91:                                               ; preds = %82
  %92 = load i8, i8* @CTRL_REG1, align 1
  store i8 %92, i8* %5, align 1
  %93 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %94 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @WAI_12B, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i8, i8* @CTRL1_ST, align 1
  store i8 %99, i8* %10, align 1
  br label %102

100:                                              ; preds = %91
  %101 = load i8, i8* @CTRL1_STP, align 1
  store i8 %101, i8* %10, align 1
  br label %102

102:                                              ; preds = %100, %98
  br label %103

103:                                              ; preds = %102, %88
  %104 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %105 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %104, i32 0, i32 8
  %106 = load i32 (%struct.lis3lv02d*, i8, i8*)*, i32 (%struct.lis3lv02d*, i8, i8*)** %105, align 8
  %107 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %108 = load i8, i8* %5, align 1
  %109 = call i32 %106(%struct.lis3lv02d* %107, i8 zeroext %108, i8* %6)
  %110 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %111 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %110, i32 0, i32 6
  %112 = load i32 (%struct.lis3lv02d*, i8, i8)*, i32 (%struct.lis3lv02d*, i8, i8)** %111, align 8
  %113 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %114 = load i8, i8* %5, align 1
  %115 = load i8, i8* %6, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* %10, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %116, %118
  %120 = trunc i32 %119 to i8
  %121 = call i32 %112(%struct.lis3lv02d* %113, i8 zeroext %114, i8 zeroext %120)
  %122 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %123 = call i32 @lis3lv02d_get_pwron_wait(%struct.lis3lv02d* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %103
  br label %291

127:                                              ; preds = %103
  %128 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %129 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %128, i32 0, i32 3
  %130 = load i64 (%struct.lis3lv02d*, i32)*, i64 (%struct.lis3lv02d*, i32)** %129, align 8
  %131 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %132 = load i32, i32* @OUTX, align 4
  %133 = call i64 %130(%struct.lis3lv02d* %131, i32 %132)
  store i64 %133, i64* %7, align 8
  %134 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %135 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %134, i32 0, i32 3
  %136 = load i64 (%struct.lis3lv02d*, i32)*, i64 (%struct.lis3lv02d*, i32)** %135, align 8
  %137 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %138 = load i32, i32* @OUTY, align 4
  %139 = call i64 %136(%struct.lis3lv02d* %137, i32 %138)
  store i64 %139, i64* %8, align 8
  %140 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %141 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %140, i32 0, i32 3
  %142 = load i64 (%struct.lis3lv02d*, i32)*, i64 (%struct.lis3lv02d*, i32)** %141, align 8
  %143 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %144 = load i32, i32* @OUTZ, align 4
  %145 = call i64 %142(%struct.lis3lv02d* %143, i32 %144)
  store i64 %145, i64* %9, align 8
  %146 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %147 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %146, i32 0, i32 6
  %148 = load i32 (%struct.lis3lv02d*, i8, i8)*, i32 (%struct.lis3lv02d*, i8, i8)** %147, align 8
  %149 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %150 = load i8, i8* %5, align 1
  %151 = load i8, i8* %6, align 1
  %152 = call i32 %148(%struct.lis3lv02d* %149, i8 zeroext %150, i8 zeroext %151)
  %153 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %154 = call i32 @lis3lv02d_get_pwron_wait(%struct.lis3lv02d* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %127
  br label %291

158:                                              ; preds = %127
  %159 = load i64, i64* %7, align 8
  %160 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %161 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %160, i32 0, i32 3
  %162 = load i64 (%struct.lis3lv02d*, i32)*, i64 (%struct.lis3lv02d*, i32)** %161, align 8
  %163 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %164 = load i32, i32* @OUTX, align 4
  %165 = call i64 %162(%struct.lis3lv02d* %163, i32 %164)
  %166 = sub nsw i64 %159, %165
  %167 = load i64*, i64** %4, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %171 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %170, i32 0, i32 3
  %172 = load i64 (%struct.lis3lv02d*, i32)*, i64 (%struct.lis3lv02d*, i32)** %171, align 8
  %173 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %174 = load i32, i32* @OUTY, align 4
  %175 = call i64 %172(%struct.lis3lv02d* %173, i32 %174)
  %176 = sub nsw i64 %169, %175
  %177 = load i64*, i64** %4, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 1
  store i64 %176, i64* %178, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %181 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %180, i32 0, i32 3
  %182 = load i64 (%struct.lis3lv02d*, i32)*, i64 (%struct.lis3lv02d*, i32)** %181, align 8
  %183 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %184 = load i32, i32* @OUTZ, align 4
  %185 = call i64 %182(%struct.lis3lv02d* %183, i32 %184)
  %186 = sub nsw i64 %179, %185
  %187 = load i64*, i64** %4, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 2
  store i64 %186, i64* %188, align 8
  store i32 0, i32* %11, align 4
  %189 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %190 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @WAI_8B, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %242

194:                                              ; preds = %158
  %195 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %196 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %195, i32 0, i32 7
  %197 = call i32 @atomic_dec(i32* %196)
  %198 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %199 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %198, i32 0, i32 6
  %200 = load i32 (%struct.lis3lv02d*, i8, i8)*, i32 (%struct.lis3lv02d*, i8, i8)** %199, align 8
  %201 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %202 = load i8, i8* @CTRL_REG3, align 1
  %203 = load i8, i8* %12, align 1
  %204 = call i32 %200(%struct.lis3lv02d* %201, i8 zeroext %202, i8 zeroext %203)
  %205 = load i8, i8* %13, align 1
  %206 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %207 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %206, i32 0, i32 0
  store i8 %205, i8* %207, align 8
  %208 = load i8, i8* %13, align 1
  %209 = zext i8 %208 to i32
  %210 = load i8, i8* @LIS3_IRQ1_MASK, align 1
  %211 = zext i8 %210 to i32
  %212 = and i32 %209, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %194
  %215 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %216 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @IRQ_LINE0, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %220, 2
  br i1 %221, label %222, label %224

222:                                              ; preds = %214
  %223 = load i32, i32* @SELFTEST_IRQ, align 4
  store i32 %223, i32* %11, align 4
  br label %291

224:                                              ; preds = %214, %194
  %225 = load i8, i8* %13, align 1
  %226 = zext i8 %225 to i32
  %227 = load i8, i8* @LIS3_IRQ2_MASK, align 1
  %228 = zext i8 %227 to i32
  %229 = and i32 %226, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %224
  %232 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %233 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @IRQ_LINE1, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %237, 2
  br i1 %238, label %239, label %241

239:                                              ; preds = %231
  %240 = load i32, i32* @SELFTEST_IRQ, align 4
  store i32 %240, i32* %11, align 4
  br label %291

241:                                              ; preds = %231, %224
  br label %242

242:                                              ; preds = %241, %158
  %243 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %244 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %243, i32 0, i32 5
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = icmp ne %struct.TYPE_2__* %245, null
  br i1 %246, label %247, label %290

247:                                              ; preds = %242
  store i32 0, i32* %14, align 4
  br label %248

248:                                              ; preds = %286, %247
  %249 = load i32, i32* %14, align 4
  %250 = icmp slt i32 %249, 3
  br i1 %250, label %251, label %289

251:                                              ; preds = %248
  %252 = load i64*, i64** %4, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %258 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %257, i32 0, i32 5
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i64*, i64** %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = icmp slt i64 %256, %265
  br i1 %266, label %283, label %267

267:                                              ; preds = %251
  %268 = load i64*, i64** %4, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %274 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %273, i32 0, i32 5
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  %277 = load i64*, i64** %276, align 8
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = icmp sgt i64 %272, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %267, %251
  %284 = load i32, i32* @SELFTEST_FAIL, align 4
  store i32 %284, i32* %11, align 4
  br label %291

285:                                              ; preds = %267
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %14, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %14, align 4
  br label %248

289:                                              ; preds = %248
  br label %290

290:                                              ; preds = %289, %242
  br label %291

291:                                              ; preds = %290, %283, %239, %222, %157, %126
  %292 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %293 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %292, i32 0, i32 4
  %294 = call i32 @mutex_unlock(i32* %293)
  %295 = load i32, i32* %11, align 4
  ret i32 %295
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lis3lv02d_get_pwron_wait(%struct.lis3lv02d*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
