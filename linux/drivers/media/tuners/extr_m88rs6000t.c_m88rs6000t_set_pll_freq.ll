; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_set_pll_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_set_pll_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m88rs6000t_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"actual tune frequency=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m88rs6000t_dev*, i32)* @m88rs6000t_set_pll_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs6000t_set_pll_freq(%struct.m88rs6000t_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.m88rs6000t_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.m88rs6000t_dev* %0, %struct.m88rs6000t_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 27000, i32* %5, align 4
  store i32 27, i32* %9, align 4
  %22 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %23 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 8
  %27 = call i32 @regmap_write(i32 %24, i32 54, i32 %26)
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %486

31:                                               ; preds = %2
  %32 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %33 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regmap_write(i32 %34, i32 49, i32 0)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %486

39:                                               ; preds = %31
  %40 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %41 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @regmap_write(i32 %42, i32 44, i32 2)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %486

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 1550
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 2, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %82

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 1380
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 3, i32* %10, align 4
  store i32 16, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %81

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %56, 1070
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 3, i32* %10, align 4
  store i32 16, i32* %11, align 4
  store i32 3, i32* %12, align 4
  store i32 16, i32* %13, align 4
  br label %80

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 1000
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 3, i32* %10, align 4
  store i32 16, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 64, i32* %13, align 4
  br label %79

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %64, 775
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 4, i32* %10, align 4
  store i32 64, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 64, i32* %13, align 4
  br label %78

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = icmp sge i32 %68, 700
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 6, i32* %10, align 4
  store i32 48, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 64, i32* %13, align 4
  br label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %72, 520
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 6, i32* %10, align 4
  store i32 48, i32* %11, align 4
  store i32 6, i32* %12, align 4
  store i32 48, i32* %13, align 4
  br label %76

75:                                               ; preds = %71
  store i32 8, i32* %10, align 4
  store i32 96, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i32 96, i32* %13, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %70
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %54
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %83, %84
  %86 = mul nsw i32 %85, 1000
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = sdiv i32 %88, %89
  %91 = sub nsw i32 %90, 1024
  %92 = sdiv i32 %91, 2
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 %93, %94
  %96 = mul nsw i32 %95, 1000
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = sdiv i32 %98, %99
  %101 = sub nsw i32 %100, 1024
  %102 = sdiv i32 %101, 2
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 15
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %105, %106
  %108 = and i32 %107, 127
  store i32 %108, i32* %16, align 4
  %109 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %110 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @regmap_write(i32 %111, i32 39, i32 %112)
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %82
  br label %486

117:                                              ; preds = %82
  %118 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %119 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = and i32 %121, 255
  %123 = call i32 @regmap_write(i32 %120, i32 40, i32 %122)
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %486

127:                                              ; preds = %117
  %128 = load i32, i32* %7, align 4
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 15
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %130, %131
  %133 = and i32 %132, 127
  store i32 %133, i32* %17, align 4
  %134 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %135 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @regmap_write(i32 %136, i32 41, i32 %137)
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %21, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  br label %486

142:                                              ; preds = %127
  %143 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %144 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = and i32 %146, 255
  %148 = call i32 @regmap_write(i32 %145, i32 42, i32 %147)
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %21, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %486

152:                                              ; preds = %142
  %153 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %154 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @regmap_write(i32 %155, i32 47, i32 245)
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %486

160:                                              ; preds = %152
  %161 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %162 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @regmap_write(i32 %163, i32 48, i32 5)
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %486

168:                                              ; preds = %160
  %169 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %170 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @regmap_write(i32 %171, i32 8, i32 31)
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* %21, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %486

176:                                              ; preds = %168
  %177 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %178 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @regmap_write(i32 %179, i32 8, i32 63)
  store i32 %180, i32* %21, align 4
  %181 = load i32, i32* %21, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %486

184:                                              ; preds = %176
  %185 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %186 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @regmap_write(i32 %187, i32 9, i32 32)
  store i32 %188, i32* %21, align 4
  %189 = load i32, i32* %21, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %486

192:                                              ; preds = %184
  %193 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %194 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @regmap_write(i32 %195, i32 9, i32 0)
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %21, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %486

200:                                              ; preds = %192
  %201 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %202 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @regmap_write(i32 %203, i32 62, i32 17)
  store i32 %204, i32* %21, align 4
  %205 = load i32, i32* %21, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %486

208:                                              ; preds = %200
  %209 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %210 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @regmap_write(i32 %211, i32 8, i32 47)
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %21, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %486

216:                                              ; preds = %208
  %217 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %218 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @regmap_write(i32 %219, i32 8, i32 63)
  store i32 %220, i32* %21, align 4
  %221 = load i32, i32* %21, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %486

224:                                              ; preds = %216
  %225 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %226 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @regmap_write(i32 %227, i32 9, i32 16)
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %21, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %486

232:                                              ; preds = %224
  %233 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %234 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @regmap_write(i32 %235, i32 9, i32 0)
  store i32 %236, i32* %21, align 4
  %237 = load i32, i32* %21, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %486

240:                                              ; preds = %232
  %241 = call i32 @usleep_range(i32 2000, i32 50000)
  %242 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %243 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @regmap_read(i32 %244, i32 66, i32* %20)
  store i32 %245, i32* %21, align 4
  %246 = load i32, i32* %21, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  br label %486

249:                                              ; preds = %240
  %250 = load i32, i32* %20, align 4
  store i32 %250, i32* %18, align 4
  %251 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %252 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @regmap_write(i32 %253, i32 62, i32 16)
  store i32 %254, i32* %21, align 4
  %255 = load i32, i32* %21, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %249
  br label %486

258:                                              ; preds = %249
  %259 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %260 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @regmap_write(i32 %261, i32 8, i32 47)
  store i32 %262, i32* %21, align 4
  %263 = load i32, i32* %21, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %258
  br label %486

266:                                              ; preds = %258
  %267 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %268 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @regmap_write(i32 %269, i32 8, i32 63)
  store i32 %270, i32* %21, align 4
  %271 = load i32, i32* %21, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %486

274:                                              ; preds = %266
  %275 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %276 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @regmap_write(i32 %277, i32 9, i32 16)
  store i32 %278, i32* %21, align 4
  %279 = load i32, i32* %21, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %486

282:                                              ; preds = %274
  %283 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %284 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @regmap_write(i32 %285, i32 9, i32 0)
  store i32 %286, i32* %21, align 4
  %287 = load i32, i32* %21, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %486

290:                                              ; preds = %282
  %291 = call i32 @usleep_range(i32 2000, i32 50000)
  %292 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %293 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @regmap_read(i32 %294, i32 66, i32* %20)
  store i32 %295, i32* %21, align 4
  %296 = load i32, i32* %21, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  br label %486

299:                                              ; preds = %290
  %300 = load i32, i32* %20, align 4
  store i32 %300, i32* %19, align 4
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %18, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %313

304:                                              ; preds = %299
  %305 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %306 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @regmap_write(i32 %307, i32 62, i32 17)
  store i32 %308, i32* %21, align 4
  %309 = load i32, i32* %21, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  br label %486

312:                                              ; preds = %304
  br label %313

313:                                              ; preds = %312, %299
  %314 = call i32 @usleep_range(i32 5000, i32 50000)
  %315 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %316 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @regmap_read(i32 %317, i32 45, i32* %20)
  store i32 %318, i32* %21, align 4
  %319 = load i32, i32* %21, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %313
  br label %486

322:                                              ; preds = %313
  %323 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %324 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %20, align 4
  %327 = call i32 @regmap_write(i32 %325, i32 45, i32 %326)
  store i32 %327, i32* %21, align 4
  %328 = load i32, i32* %21, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %322
  br label %486

331:                                              ; preds = %322
  %332 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %333 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @regmap_read(i32 %334, i32 46, i32* %20)
  store i32 %335, i32* %21, align 4
  %336 = load i32, i32* %21, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %331
  br label %486

339:                                              ; preds = %331
  %340 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %341 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* %20, align 4
  %344 = call i32 @regmap_write(i32 %342, i32 46, i32 %343)
  store i32 %344, i32* %21, align 4
  %345 = load i32, i32* %21, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %339
  br label %486

348:                                              ; preds = %339
  %349 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %350 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @regmap_read(i32 %351, i32 39, i32* %20)
  store i32 %352, i32* %21, align 4
  %353 = load i32, i32* %21, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %348
  br label %486

356:                                              ; preds = %348
  %357 = load i32, i32* %20, align 4
  %358 = and i32 %357, 112
  store i32 %358, i32* %16, align 4
  %359 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %360 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @regmap_read(i32 %361, i32 131, i32* %20)
  store i32 %362, i32* %21, align 4
  %363 = load i32, i32* %21, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %356
  br label %486

366:                                              ; preds = %356
  %367 = load i32, i32* %16, align 4
  %368 = load i32, i32* %20, align 4
  %369 = and i32 %368, 112
  %370 = icmp eq i32 %367, %369
  br i1 %370, label %371, label %376

371:                                              ; preds = %366
  %372 = load i32, i32* %10, align 4
  store i32 %372, i32* %14, align 4
  %373 = load i32, i32* %6, align 4
  store i32 %373, i32* %8, align 4
  %374 = load i32, i32* %11, align 4
  %375 = sdiv i32 %374, 16
  store i32 %375, i32* %15, align 4
  br label %381

376:                                              ; preds = %366
  %377 = load i32, i32* %12, align 4
  store i32 %377, i32* %14, align 4
  %378 = load i32, i32* %7, align 4
  store i32 %378, i32* %8, align 4
  %379 = load i32, i32* %13, align 4
  %380 = sdiv i32 %379, 16
  store i32 %380, i32* %15, align 4
  br label %381

381:                                              ; preds = %376, %371
  %382 = load i32, i32* %14, align 4
  %383 = icmp eq i32 %382, 3
  br i1 %383, label %387, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* %14, align 4
  %386 = icmp eq i32 %385, 6
  br i1 %386, label %387, label %408

387:                                              ; preds = %384, %381
  store i32 18, i32* %9, align 4
  %388 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %389 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sub nsw i32 %391, 8
  %393 = call i32 @regmap_write(i32 %390, i32 54, i32 %392)
  store i32 %393, i32* %21, align 4
  %394 = load i32, i32* %21, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %387
  br label %486

397:                                              ; preds = %387
  %398 = load i32, i32* %4, align 4
  %399 = load i32, i32* %14, align 4
  %400 = mul nsw i32 %398, %399
  %401 = mul nsw i32 %400, 1000
  %402 = load i32, i32* %9, align 4
  %403 = mul nsw i32 %401, %402
  %404 = load i32, i32* %5, align 4
  %405 = sdiv i32 %403, %404
  %406 = sub nsw i32 %405, 1024
  %407 = sdiv i32 %406, 2
  store i32 %407, i32* %8, align 4
  br label %408

408:                                              ; preds = %397, %384
  %409 = load i32, i32* %15, align 4
  %410 = shl i32 %409, 4
  %411 = and i32 %410, 112
  %412 = add nsw i32 128, %411
  %413 = load i32, i32* %8, align 4
  %414 = ashr i32 %413, 8
  %415 = and i32 %414, 15
  %416 = add nsw i32 %412, %415
  %417 = and i32 %416, 255
  store i32 %417, i32* %16, align 4
  %418 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %419 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* %16, align 4
  %422 = call i32 @regmap_write(i32 %420, i32 39, i32 %421)
  store i32 %422, i32* %21, align 4
  %423 = load i32, i32* %21, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %408
  br label %486

426:                                              ; preds = %408
  %427 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %428 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* %8, align 4
  %431 = and i32 %430, 255
  %432 = call i32 @regmap_write(i32 %429, i32 40, i32 %431)
  store i32 %432, i32* %21, align 4
  %433 = load i32, i32* %21, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %426
  br label %486

436:                                              ; preds = %426
  %437 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %438 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @regmap_write(i32 %439, i32 41, i32 128)
  store i32 %440, i32* %21, align 4
  %441 = load i32, i32* %21, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %436
  br label %486

444:                                              ; preds = %436
  %445 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %446 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = call i32 @regmap_write(i32 %447, i32 49, i32 3)
  store i32 %448, i32* %21, align 4
  %449 = load i32, i32* %21, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %444
  br label %486

452:                                              ; preds = %444
  %453 = load i32, i32* %14, align 4
  %454 = icmp eq i32 %453, 3
  br i1 %454, label %455, label %456

455:                                              ; preds = %452
  store i32 206, i32* %20, align 4
  br label %457

456:                                              ; preds = %452
  store i32 138, i32* %20, align 4
  br label %457

457:                                              ; preds = %456, %455
  %458 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %459 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* %20, align 4
  %462 = call i32 @regmap_write(i32 %460, i32 59, i32 %461)
  store i32 %462, i32* %21, align 4
  %463 = load i32, i32* %21, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %457
  br label %486

466:                                              ; preds = %457
  %467 = load i32, i32* %5, align 4
  %468 = load i32, i32* %8, align 4
  %469 = mul nsw i32 %468, 2
  %470 = add nsw i32 %469, 1024
  %471 = mul nsw i32 %467, %470
  %472 = load i32, i32* %9, align 4
  %473 = sdiv i32 %471, %472
  %474 = load i32, i32* %14, align 4
  %475 = sdiv i32 %473, %474
  %476 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %477 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %476, i32 0, i32 0
  store i32 %475, i32* %477, align 8
  %478 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %479 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %478, i32 0, i32 1
  %480 = load %struct.TYPE_2__*, %struct.TYPE_2__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %480, i32 0, i32 0
  %482 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %483 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = call i32 @dev_dbg(i32* %481, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %484)
  br label %486

486:                                              ; preds = %466, %465, %451, %443, %435, %425, %396, %365, %355, %347, %338, %330, %321, %311, %298, %289, %281, %273, %265, %257, %248, %239, %231, %223, %215, %207, %199, %191, %183, %175, %167, %159, %151, %141, %126, %116, %46, %38, %30
  %487 = load i32, i32* %21, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %496

489:                                              ; preds = %486
  %490 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %491 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %490, i32 0, i32 1
  %492 = load %struct.TYPE_2__*, %struct.TYPE_2__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %492, i32 0, i32 0
  %494 = load i32, i32* %21, align 4
  %495 = call i32 @dev_dbg(i32* %493, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %494)
  br label %496

496:                                              ; preds = %489, %486
  %497 = load i32, i32* %21, align 4
  ret i32 %497
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
