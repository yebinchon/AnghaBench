; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_cx23885_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-cards.c_cx23885_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@GP0_IO = common dso_local global i32 0, align 4
@GPIO_15 = common dso_local global i32 0, align 4
@GPIO_14 = common dso_local global i32 0, align 4
@GPIO_2 = common dso_local global i32 0, align 4
@MC417_CTL = common dso_local global i32 0, align 4
@MC417_OEN = common dso_local global i32 0, align 4
@MC417_RWD = common dso_local global i32 0, align 4
@GPIO_ISM = common dso_local global i32 0, align 4
@GPIO_9 = common dso_local global i32 0, align 4
@GPIO_6 = common dso_local global i32 0, align 4
@GPIO_5 = common dso_local global i32 0, align 4
@GPIO_0 = common dso_local global i32 0, align 4
@GPIO_1 = common dso_local global i32 0, align 4
@GPIO_13 = common dso_local global i32 0, align 4
@GPIO_8 = common dso_local global i32 0, align 4
@GPIO_11 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_gpio_setup(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %3 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %370 [
    i32 165, label %6
    i32 157, label %9
    i32 156, label %17
    i32 154, label %20
    i32 167, label %53
    i32 155, label %62
    i32 158, label %71
    i32 171, label %80
    i32 170, label %89
    i32 169, label %89
    i32 144, label %98
    i32 142, label %98
    i32 143, label %98
    i32 179, label %98
    i32 178, label %98
    i32 141, label %98
    i32 133, label %107
    i32 132, label %107
    i32 131, label %107
    i32 134, label %107
    i32 136, label %121
    i32 161, label %137
    i32 160, label %137
    i32 164, label %137
    i32 163, label %137
    i32 166, label %137
    i32 139, label %159
    i32 140, label %159
    i32 138, label %159
    i32 137, label %181
    i32 153, label %199
    i32 159, label %199
    i32 168, label %215
    i32 135, label %218
    i32 152, label %234
    i32 146, label %234
    i32 180, label %252
    i32 174, label %285
    i32 175, label %285
    i32 172, label %285
    i32 173, label %304
    i32 176, label %304
    i32 130, label %304
    i32 177, label %322
    i32 151, label %333
    i32 145, label %333
    i32 129, label %351
    i32 128, label %351
    i32 162, label %352
    i32 148, label %352
    i32 147, label %352
    i32 150, label %352
    i32 149, label %352
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @GP0_IO, align 4
  %8 = call i32 @cx_set(i32 %7, i32 65537)
  br label %370

9:                                                ; preds = %1
  %10 = load i32, i32* @GP0_IO, align 4
  %11 = call i32 @cx_set(i32 %10, i32 327680)
  %12 = load i32, i32* @GP0_IO, align 4
  %13 = call i32 @cx_clear(i32 %12, i32 5)
  %14 = call i32 @msleep(i32 5)
  %15 = load i32, i32* @GP0_IO, align 4
  %16 = call i32 @cx_set(i32 %15, i32 327685)
  br label %370

17:                                               ; preds = %1
  %18 = load i32, i32* @GP0_IO, align 4
  %19 = call i32 @cx_set(i32 %18, i32 327685)
  br label %370

20:                                               ; preds = %1
  %21 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %22 = load i32, i32* @GPIO_15, align 4
  %23 = load i32, i32* @GPIO_14, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mc417_gpio_enable(%struct.cx23885_dev* %21, i32 %24, i32 1)
  %26 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %27 = load i32, i32* @GPIO_15, align 4
  %28 = load i32, i32* @GPIO_14, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @mc417_gpio_clear(%struct.cx23885_dev* %26, i32 %29)
  %31 = call i32 @msleep(i32 100)
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %33 = load i32, i32* @GPIO_15, align 4
  %34 = load i32, i32* @GPIO_14, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mc417_gpio_set(%struct.cx23885_dev* %32, i32 %35)
  %37 = call i32 @msleep(i32 100)
  %38 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %39 = load i32, i32* @GPIO_2, align 4
  %40 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %38, i32 %39, i32 1)
  %41 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %42 = load i32, i32* @GPIO_2, align 4
  %43 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %41, i32 %42)
  %44 = call i32 @msleep(i32 20)
  %45 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %46 = load i32, i32* @GPIO_2, align 4
  %47 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %45, i32 %46)
  %48 = call i32 @msleep(i32 20)
  %49 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %50 = load i32, i32* @GPIO_2, align 4
  %51 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %49, i32 %50)
  %52 = call i32 @msleep(i32 20)
  br label %370

53:                                               ; preds = %1
  %54 = load i32, i32* @GP0_IO, align 4
  %55 = call i32 @cx_set(i32 %54, i32 327680)
  %56 = call i32 @msleep(i32 20)
  %57 = load i32, i32* @GP0_IO, align 4
  %58 = call i32 @cx_clear(i32 %57, i32 5)
  %59 = call i32 @msleep(i32 20)
  %60 = load i32, i32* @GP0_IO, align 4
  %61 = call i32 @cx_set(i32 %60, i32 327685)
  br label %370

62:                                               ; preds = %1
  %63 = load i32, i32* @GP0_IO, align 4
  %64 = call i32 @cx_set(i32 %63, i32 327680)
  %65 = call i32 @msleep(i32 20)
  %66 = load i32, i32* @GP0_IO, align 4
  %67 = call i32 @cx_clear(i32 %66, i32 5)
  %68 = call i32 @msleep(i32 20)
  %69 = load i32, i32* @GP0_IO, align 4
  %70 = call i32 @cx_set(i32 %69, i32 327685)
  br label %370

71:                                               ; preds = %1
  %72 = load i32, i32* @GP0_IO, align 4
  %73 = call i32 @cx_set(i32 %72, i32 327680)
  %74 = call i32 @msleep(i32 20)
  %75 = load i32, i32* @GP0_IO, align 4
  %76 = call i32 @cx_clear(i32 %75, i32 5)
  %77 = call i32 @msleep(i32 20)
  %78 = load i32, i32* @GP0_IO, align 4
  %79 = call i32 @cx_set(i32 %78, i32 327685)
  br label %370

80:                                               ; preds = %1
  %81 = load i32, i32* @GP0_IO, align 4
  %82 = call i32 @cx_set(i32 %81, i32 983040)
  %83 = call i32 @msleep(i32 20)
  %84 = load i32, i32* @GP0_IO, align 4
  %85 = call i32 @cx_clear(i32 %84, i32 15)
  %86 = call i32 @msleep(i32 20)
  %87 = load i32, i32* @GP0_IO, align 4
  %88 = call i32 @cx_set(i32 %87, i32 983055)
  br label %370

89:                                               ; preds = %1, %1
  %90 = load i32, i32* @GP0_IO, align 4
  %91 = call i32 @cx_set(i32 %90, i32 983040)
  %92 = call i32 @msleep(i32 20)
  %93 = load i32, i32* @GP0_IO, align 4
  %94 = call i32 @cx_clear(i32 %93, i32 15)
  %95 = call i32 @msleep(i32 20)
  %96 = load i32, i32* @GP0_IO, align 4
  %97 = call i32 @cx_set(i32 %96, i32 983055)
  br label %370

98:                                               ; preds = %1, %1, %1, %1, %1, %1
  %99 = load i32, i32* @GP0_IO, align 4
  %100 = call i32 @cx_set(i32 %99, i32 262144)
  %101 = call i32 @msleep(i32 20)
  %102 = load i32, i32* @GP0_IO, align 4
  %103 = call i32 @cx_clear(i32 %102, i32 4)
  %104 = call i32 @msleep(i32 20)
  %105 = load i32, i32* @GP0_IO, align 4
  %106 = call i32 @cx_set(i32 %105, i32 262148)
  br label %370

107:                                              ; preds = %1, %1, %1, %1
  %108 = load i32, i32* @MC417_CTL, align 4
  %109 = call i32 @cx_write(i32 %108, i32 54)
  %110 = load i32, i32* @MC417_OEN, align 4
  %111 = call i32 @cx_write(i32 %110, i32 4096)
  %112 = load i32, i32* @MC417_RWD, align 4
  %113 = call i32 @cx_set(i32 %112, i32 2)
  %114 = call i32 @msleep(i32 200)
  %115 = load i32, i32* @MC417_RWD, align 4
  %116 = call i32 @cx_clear(i32 %115, i32 2048)
  %117 = call i32 @msleep(i32 200)
  %118 = load i32, i32* @MC417_RWD, align 4
  %119 = call i32 @cx_set(i32 %118, i32 2048)
  %120 = call i32 @msleep(i32 200)
  br label %370

121:                                              ; preds = %1
  %122 = load i32, i32* @GP0_IO, align 4
  %123 = call i32 @cx_set(i32 %122, i32 262144)
  %124 = load i32, i32* @GP0_IO, align 4
  %125 = call i32 @cx_clear(i32 %124, i32 196612)
  %126 = call i32 @msleep(i32 100)
  %127 = load i32, i32* @GP0_IO, align 4
  %128 = call i32 @cx_set(i32 %127, i32 262148)
  %129 = load i32, i32* @MC417_CTL, align 4
  %130 = call i32 @cx_write(i32 %129, i32 55)
  %131 = load i32, i32* @MC417_OEN, align 4
  %132 = call i32 @cx_write(i32 %131, i32 4096)
  %133 = load i32, i32* @MC417_RWD, align 4
  %134 = call i32 @cx_write(i32 %133, i32 49920)
  %135 = load i32, i32* @GPIO_ISM, align 4
  %136 = call i32 @cx_write(i32 %135, i32 0)
  br label %370

137:                                              ; preds = %1, %1, %1, %1, %1
  %138 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %139 = load i32, i32* @GPIO_9, align 4
  %140 = load i32, i32* @GPIO_6, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @GPIO_5, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %138, i32 %143, i32 1)
  %145 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %146 = load i32, i32* @GPIO_9, align 4
  %147 = load i32, i32* @GPIO_6, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @GPIO_5, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %145, i32 %150)
  %152 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %153 = load i32, i32* @GPIO_9, align 4
  %154 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %152, i32 %153)
  %155 = call i32 @msleep(i32 20)
  %156 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %157 = load i32, i32* @GPIO_9, align 4
  %158 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %156, i32 %157)
  br label %370

159:                                              ; preds = %1, %1, %1
  %160 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %161 = load i32, i32* @GPIO_0, align 4
  %162 = load i32, i32* @GPIO_1, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @GPIO_2, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %160, i32 %165, i32 1)
  %167 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %168 = load i32, i32* @GPIO_1, align 4
  %169 = load i32, i32* @GPIO_2, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %167, i32 %170)
  %172 = call i32 @msleep(i32 100)
  %173 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %174 = load i32, i32* @GPIO_0, align 4
  %175 = load i32, i32* @GPIO_1, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @GPIO_2, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %173, i32 %178)
  %180 = call i32 @msleep(i32 100)
  br label %370

181:                                              ; preds = %1
  %182 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %183 = load i32, i32* @GPIO_0, align 4
  %184 = load i32, i32* @GPIO_1, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %182, i32 %185, i32 1)
  %187 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %188 = load i32, i32* @GPIO_0, align 4
  %189 = load i32, i32* @GPIO_1, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %187, i32 %190)
  %192 = call i32 @msleep(i32 100)
  %193 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %194 = load i32, i32* @GPIO_0, align 4
  %195 = load i32, i32* @GPIO_1, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %193, i32 %196)
  %198 = call i32 @msleep(i32 100)
  br label %370

199:                                              ; preds = %1, %1
  %200 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %201 = load i32, i32* @GPIO_14, align 4
  %202 = load i32, i32* @GPIO_13, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @mc417_gpio_enable(%struct.cx23885_dev* %200, i32 %203, i32 1)
  %205 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %206 = load i32, i32* @GPIO_14, align 4
  %207 = load i32, i32* @GPIO_13, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @mc417_gpio_clear(%struct.cx23885_dev* %205, i32 %208)
  %210 = call i32 @msleep(i32 100)
  %211 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %212 = load i32, i32* @GPIO_14, align 4
  %213 = call i32 @mc417_gpio_set(%struct.cx23885_dev* %211, i32 %212)
  %214 = call i32 @msleep(i32 100)
  br label %370

215:                                              ; preds = %1
  %216 = load i32, i32* @GP0_IO, align 4
  %217 = call i32 @cx_set(i32 %216, i32 65537)
  br label %370

218:                                              ; preds = %1
  %219 = load i32, i32* @GP0_IO, align 4
  %220 = call i32 @cx_set(i32 %219, i32 393216)
  %221 = load i32, i32* @GP0_IO, align 4
  %222 = call i32 @cx_clear(i32 %221, i32 65542)
  %223 = call i32 @msleep(i32 100)
  %224 = load i32, i32* @GP0_IO, align 4
  %225 = call i32 @cx_set(i32 %224, i32 4)
  %226 = load i32, i32* @MC417_CTL, align 4
  %227 = call i32 @cx_write(i32 %226, i32 55)
  %228 = load i32, i32* @MC417_OEN, align 4
  %229 = call i32 @cx_write(i32 %228, i32 20480)
  %230 = load i32, i32* @MC417_RWD, align 4
  %231 = call i32 @cx_write(i32 %230, i32 3328)
  %232 = load i32, i32* @GPIO_ISM, align 4
  %233 = call i32 @cx_write(i32 %232, i32 0)
  br label %370

234:                                              ; preds = %1, %1
  %235 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %236 = load i32, i32* @GPIO_8, align 4
  %237 = load i32, i32* @GPIO_9, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %235, i32 %238, i32 1)
  %240 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %241 = load i32, i32* @GPIO_8, align 4
  %242 = load i32, i32* @GPIO_9, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %240, i32 %243)
  %245 = call i32 @msleep(i32 100)
  %246 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %247 = load i32, i32* @GPIO_8, align 4
  %248 = load i32, i32* @GPIO_9, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %246, i32 %249)
  %251 = call i32 @msleep(i32 100)
  br label %370

252:                                              ; preds = %1
  %253 = load i32, i32* @MC417_CTL, align 4
  %254 = call i32 @cx_clear(i32 %253, i32 1)
  %255 = load i32, i32* @GP0_IO, align 4
  %256 = call i32 @cx_set(i32 %255, i32 458752)
  %257 = call i32 @usleep_range(i32 10000, i32 11000)
  %258 = load i32, i32* @GP0_IO, align 4
  %259 = call i32 @cx_set(i32 %258, i32 65537)
  %260 = call i32 @usleep_range(i32 10000, i32 11000)
  %261 = load i32, i32* @GP0_IO, align 4
  %262 = call i32 @cx_clear(i32 %261, i32 65537)
  %263 = call i32 @usleep_range(i32 10000, i32 11000)
  %264 = load i32, i32* @GP0_IO, align 4
  %265 = call i32 @cx_set(i32 %264, i32 65537)
  %266 = call i32 @usleep_range(i32 10000, i32 11000)
  %267 = load i32, i32* @GP0_IO, align 4
  %268 = call i32 @cx_clear(i32 %267, i32 196611)
  %269 = call i32 @usleep_range(i32 10000, i32 11000)
  %270 = load i32, i32* @GP0_IO, align 4
  %271 = call i32 @cx_set(i32 %270, i32 131074)
  %272 = call i32 @usleep_range(i32 10000, i32 11000)
  %273 = load i32, i32* @GP0_IO, align 4
  %274 = call i32 @cx_set(i32 %273, i32 65537)
  %275 = call i32 @usleep_range(i32 10000, i32 11000)
  %276 = load i32, i32* @GP0_IO, align 4
  %277 = call i32 @cx_clear(i32 %276, i32 131074)
  %278 = load i32, i32* @GP0_IO, align 4
  %279 = call i32 @cx_set(i32 %278, i32 262148)
  %280 = load i32, i32* @GP0_IO, align 4
  %281 = call i32 @cx_clear(i32 %280, i32 262148)
  %282 = load i32, i32* @GP0_IO, align 4
  %283 = call i32 @cx_set(i32 %282, i32 262148)
  %284 = call i32 @msleep(i32 60)
  br label %370

285:                                              ; preds = %1, %1, %1
  %286 = load i32, i32* @MC417_CTL, align 4
  %287 = call i32 @cx_write(i32 %286, i32 55)
  %288 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %289 = load i32, i32* @GPIO_2, align 4
  %290 = load i32, i32* @GPIO_11, align 4
  %291 = or i32 %289, %290
  %292 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %288, i32 %291, i32 1)
  %293 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %294 = load i32, i32* @GPIO_2, align 4
  %295 = load i32, i32* @GPIO_11, align 4
  %296 = or i32 %294, %295
  %297 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %293, i32 %296)
  %298 = call i32 @msleep(i32 100)
  %299 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %300 = load i32, i32* @GPIO_2, align 4
  %301 = load i32, i32* @GPIO_11, align 4
  %302 = or i32 %300, %301
  %303 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %299, i32 %302)
  br label %370

304:                                              ; preds = %1, %1, %1
  %305 = load i32, i32* @GP0_IO, align 4
  %306 = call i32 @cx_set(i32 %305, i32 393218)
  %307 = load i32, i32* @GP0_IO, align 4
  %308 = call i32 @cx_clear(i32 %307, i32 65540)
  %309 = call i32 @msleep(i32 100)
  %310 = load i32, i32* @GP0_IO, align 4
  %311 = call i32 @cx_set(i32 %310, i32 393220)
  %312 = load i32, i32* @GP0_IO, align 4
  %313 = call i32 @cx_clear(i32 %312, i32 65538)
  %314 = load i32, i32* @MC417_CTL, align 4
  %315 = call i32 @cx_write(i32 %314, i32 55)
  %316 = load i32, i32* @MC417_OEN, align 4
  %317 = call i32 @cx_write(i32 %316, i32 4096)
  %318 = load i32, i32* @MC417_RWD, align 4
  %319 = call i32 @cx_write(i32 %318, i32 49920)
  %320 = load i32, i32* @GPIO_ISM, align 4
  %321 = call i32 @cx_write(i32 %320, i32 0)
  br label %370

322:                                              ; preds = %1
  %323 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %324 = load i32, i32* @GPIO_2, align 4
  %325 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %323, i32 %324, i32 1)
  %326 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %327 = load i32, i32* @GPIO_2, align 4
  %328 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %326, i32 %327)
  %329 = call i32 @msleep(i32 100)
  %330 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %331 = load i32, i32* @GPIO_2, align 4
  %332 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %330, i32 %331)
  br label %370

333:                                              ; preds = %1, %1
  %334 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %335 = load i32, i32* @GPIO_8, align 4
  %336 = load i32, i32* @GPIO_9, align 4
  %337 = or i32 %335, %336
  %338 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %334, i32 %337, i32 1)
  %339 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %340 = load i32, i32* @GPIO_8, align 4
  %341 = load i32, i32* @GPIO_9, align 4
  %342 = or i32 %340, %341
  %343 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %339, i32 %342)
  %344 = call i32 @msleep(i32 100)
  %345 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %346 = load i32, i32* @GPIO_8, align 4
  %347 = load i32, i32* @GPIO_9, align 4
  %348 = or i32 %346, %347
  %349 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %345, i32 %348)
  %350 = call i32 @msleep(i32 100)
  br label %370

351:                                              ; preds = %1, %1
  br label %370

352:                                              ; preds = %1, %1, %1, %1, %1
  %353 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %354 = load i32, i32* @GPIO_8, align 4
  %355 = load i32, i32* @GPIO_9, align 4
  %356 = or i32 %354, %355
  %357 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %353, i32 %356, i32 1)
  %358 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %359 = load i32, i32* @GPIO_8, align 4
  %360 = load i32, i32* @GPIO_9, align 4
  %361 = or i32 %359, %360
  %362 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %358, i32 %361)
  %363 = call i32 @msleep(i32 100)
  %364 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %365 = load i32, i32* @GPIO_8, align 4
  %366 = load i32, i32* @GPIO_9, align 4
  %367 = or i32 %365, %366
  %368 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %364, i32 %367)
  %369 = call i32 @msleep(i32 100)
  br label %370

370:                                              ; preds = %1, %352, %351, %333, %322, %304, %285, %252, %234, %218, %215, %199, %181, %159, %137, %121, %107, %98, %89, %80, %71, %62, %53, %20, %17, %9, %6
  ret void
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mc417_gpio_enable(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @mc417_gpio_clear(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @mc417_gpio_set(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23885_gpio_enable(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @cx23885_gpio_set(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23885_gpio_clear(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
