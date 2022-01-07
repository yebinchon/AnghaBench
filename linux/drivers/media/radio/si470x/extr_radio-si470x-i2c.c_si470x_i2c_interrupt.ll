; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_i2c_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_i2c_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32*, i64, i32, i32, i32, i32*, i32 }

@STATUSRSSI = common dso_local global i64 0, align 8
@STATUSRSSI_STC = common dso_local global i32 0, align 4
@SYSCONFIG1 = common dso_local global i64 0, align 8
@SYSCONFIG1_RDS = common dso_local global i32 0, align 4
@RDS_REGISTER_NUM = common dso_local global i8 0, align 1
@STATUSRSSI_RDSR = common dso_local global i32 0, align 4
@STATUSRSSI_BLERA = common dso_local global i32 0, align 4
@RDSA = common dso_local global i64 0, align 8
@READCHAN = common dso_local global i64 0, align 8
@READCHAN_BLERB = common dso_local global i32 0, align 4
@RDSB = common dso_local global i64 0, align 8
@READCHAN_BLERC = common dso_local global i32 0, align 4
@RDSC = common dso_local global i64 0, align 8
@READCHAN_BLERD = common dso_local global i32 0, align 4
@RDSD = common dso_local global i64 0, align 8
@max_rds_errors = common dso_local global i16 0, align 2
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @si470x_i2c_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_i2c_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.si470x_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca [3 x i8], align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.si470x_device*
  store %struct.si470x_device* %13, %struct.si470x_device** %5, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %15 = load i64, i64* @STATUSRSSI, align 8
  %16 = call i32 @si470x_get_register(%struct.si470x_device* %14, i64 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %261

20:                                               ; preds = %2
  %21 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %22 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @STATUSRSSI, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @STATUSRSSI_STC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %32 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %31, i32 0, i32 6
  %33 = call i32 @complete(i32* %32)
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %36 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @SYSCONFIG1, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SYSCONFIG1_RDS, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %261

45:                                               ; preds = %34
  store i8 1, i8* %6, align 1
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @RDS_REGISTER_NUM, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %54 = load i64, i64* @STATUSRSSI, align 8
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i64
  %57 = add i64 %54, %56
  %58 = call i32 @si470x_get_register(%struct.si470x_device* %53, i64 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %261

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i8, i8* %6, align 1
  %65 = add i8 %64, 1
  store i8 %65, i8* %6, align 1
  br label %46

66:                                               ; preds = %46
  %67 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %68 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @STATUSRSSI, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STATUSRSSI_RDSR, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %261

77:                                               ; preds = %66
  store i8 0, i8* %7, align 1
  br label %78

78:                                               ; preds = %244, %77
  %79 = load i8, i8* %7, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %247

82:                                               ; preds = %78
  %83 = load i8, i8* %7, align 1
  %84 = zext i8 %83 to i32
  switch i32 %84, label %85 [
    i32 1, label %103
    i32 2, label %121
    i32 3, label %139
  ]

85:                                               ; preds = %82
  %86 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %87 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @STATUSRSSI, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @STATUSRSSI_BLERA, align 4
  %93 = and i32 %91, %92
  %94 = ashr i32 %93, 9
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %8, align 2
  %96 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %97 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @RDSA, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %9, align 2
  br label %157

103:                                              ; preds = %82
  %104 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %105 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @READCHAN, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @READCHAN_BLERB, align 4
  %111 = and i32 %109, %110
  %112 = ashr i32 %111, 14
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %8, align 2
  %114 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %115 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @RDSB, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %9, align 2
  br label %157

121:                                              ; preds = %82
  %122 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %123 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @READCHAN, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @READCHAN_BLERC, align 4
  %129 = and i32 %127, %128
  %130 = ashr i32 %129, 12
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* %8, align 2
  %132 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %133 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @RDSC, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %9, align 2
  br label %157

139:                                              ; preds = %82
  %140 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %141 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @READCHAN, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @READCHAN_BLERD, align 4
  %147 = and i32 %145, %146
  %148 = ashr i32 %147, 10
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %8, align 2
  %150 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %151 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @RDSD, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = trunc i32 %155 to i16
  store i16 %156, i16* %9, align 2
  br label %157

157:                                              ; preds = %139, %121, %103, %85
  %158 = load i16, i16* %9, align 2
  %159 = bitcast [3 x i8]* %10 to i8**
  %160 = call i32 @put_unaligned_le16(i16 zeroext %158, i8** %159)
  %161 = load i8, i8* %7, align 1
  %162 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  store i8 %161, i8* %162, align 1
  %163 = load i8, i8* %7, align 1
  %164 = zext i8 %163 to i32
  %165 = shl i32 %164, 3
  %166 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %168, %165
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %166, align 1
  %171 = load i16, i16* %8, align 2
  %172 = zext i16 %171 to i32
  %173 = load i16, i16* @max_rds_errors, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp sgt i32 %172, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %157
  %177 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %179, 128
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %177, align 1
  br label %193

182:                                              ; preds = %157
  %183 = load i16, i16* %8, align 2
  %184 = zext i16 %183 to i32
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = or i32 %189, 64
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %187, align 1
  br label %192

192:                                              ; preds = %186, %182
  br label %193

193:                                              ; preds = %192, %176
  %194 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %195 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %198 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = bitcast [3 x i8]* %10 to i8**
  %202 = call i32 @memcpy(i32* %200, i8** %201, i32 3)
  %203 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %204 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, 3
  store i64 %206, i64* %204, align 8
  %207 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %208 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %211 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = icmp uge i64 %209, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %193
  %216 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %217 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  br label %218

218:                                              ; preds = %215, %193
  %219 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %220 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %223 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = icmp eq i64 %221, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %218
  %228 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %229 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 3
  store i32 %231, i32* %229, align 4
  %232 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %233 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %236 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = icmp sge i32 %234, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %227
  %240 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %241 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %240, i32 0, i32 3
  store i32 0, i32* %241, align 4
  br label %242

242:                                              ; preds = %239, %227
  br label %243

243:                                              ; preds = %242, %218
  br label %244

244:                                              ; preds = %243
  %245 = load i8, i8* %7, align 1
  %246 = add i8 %245, 1
  store i8 %246, i8* %7, align 1
  br label %78

247:                                              ; preds = %78
  %248 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %249 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %252 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = icmp ne i64 %250, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %247
  %257 = load %struct.si470x_device*, %struct.si470x_device** %5, align 8
  %258 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %257, i32 0, i32 4
  %259 = call i32 @wake_up_interruptible(i32* %258)
  br label %260

260:                                              ; preds = %256, %247
  br label %261

261:                                              ; preds = %260, %76, %61, %44, %19
  %262 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %262
}

declare dso_local i32 @si470x_get_register(%struct.si470x_device*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @put_unaligned_le16(i16 zeroext, i8**) #1

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
