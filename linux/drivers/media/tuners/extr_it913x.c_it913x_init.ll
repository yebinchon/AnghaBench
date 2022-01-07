; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_it913x.c_it913x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_it913x.c_it913x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.it913x_dev* }
%struct.it913x_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@it913x_init.nv = internal constant [9 x i32] [i32 48, i32 32, i32 24, i32 16, i32 12, i32 8, i32 6, i32 4, i32 2], align 16
@.str = private unnamed_addr constant [9 x i8] c"role %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown clock identifier %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"r_fbc_m_bdry took %u ms, val %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fn_min %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"p_tsm_init_mode took %u ms, val %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @it913x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it913x_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.it913x_dev*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.it913x_dev*, %struct.it913x_dev** %13, align 8
  store %struct.it913x_dev* %14, %struct.it913x_dev** %4, align 8
  %15 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %16 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %15, i32 0, i32 8
  %17 = load %struct.platform_device*, %struct.platform_device** %16, align 8
  store %struct.platform_device* %17, %struct.platform_device** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %21 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %25 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_write(i32 %26, i32 8449100, i32 104)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %228

31:                                               ; preds = %1
  %32 = call i32 @usleep_range(i32 10000, i32 100000)
  %33 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %34 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regmap_read(i32 %35, i32 8449158, i32* %7)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %228

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %58 [
    i32 0, label %42
    i32 1, label %50
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %45 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %47 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %46, i32 0, i32 2
  store i32 2000, i32* %47, align 8
  %48 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %49 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %48, i32 0, i32 3
  store i32 3, i32* %49, align 4
  store i32 16, i32* %8, align 4
  br label %63

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %53 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %55 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %54, i32 0, i32 2
  store i32 640, i32* %55, align 8
  %56 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %57 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %56, i32 0, i32 3
  store i32 1, i32* %57, align 4
  store i32 6, i32* %8, align 4
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %228

63:                                               ; preds = %50, %42
  %64 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %65 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regmap_read(i32 %66, i32 8449283, i32* %7)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %228

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @it913x_init.nv, i64 0, i64 0))
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* @it913x_init.nv, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  br label %81

80:                                               ; preds = %71
  store i32 2, i32* %9, align 4
  br label %81

81:                                               ; preds = %80, %75
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* @jiffies, align 8
  %84 = call i64 @msecs_to_jiffies(i64 50)
  %85 = add i64 %83, %84
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %112, %82
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @time_after(i64 %87, i64 %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %113

92:                                               ; preds = %86
  %93 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %94 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %97 = call i32 @regmap_bulk_read(i32 %95, i32 8449315, i32* %96, i32 2)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %228

101:                                              ; preds = %92
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 0
  %108 = or i32 %104, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %113

112:                                              ; preds = %101
  br label %86

113:                                              ; preds = %111, %86
  %114 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load i64, i64* @jiffies, align 8
  %117 = call i64 @jiffies_to_msecs(i64 %116)
  %118 = load i64, i64* %11, align 8
  %119 = call i64 @jiffies_to_msecs(i64 %118)
  %120 = sub nsw i64 %119, 50
  %121 = sub nsw i64 %117, %120
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %126 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = mul i32 %127, %128
  %130 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %131 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %133 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %138 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = udiv i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %142 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = mul i32 %143, 1000
  store i32 %144, i32* %142, align 8
  %145 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %148 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %152 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %190

155:                                              ; preds = %113
  %156 = load i64, i64* @jiffies, align 8
  %157 = call i64 @msecs_to_jiffies(i64 50)
  %158 = add i64 %156, %157
  store i64 %158, i64* %11, align 8
  br label %159

159:                                              ; preds = %177, %155
  %160 = load i64, i64* @jiffies, align 8
  %161 = load i64, i64* %11, align 8
  %162 = call i32 @time_after(i64 %160, i64 %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br i1 %164, label %165, label %178

165:                                              ; preds = %159
  %166 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %167 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @regmap_read(i32 %168, i32 8449154, i32* %7)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %228

173:                                              ; preds = %165
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %178

177:                                              ; preds = %173
  br label %159

178:                                              ; preds = %176, %159
  %179 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load i64, i64* @jiffies, align 8
  %182 = call i64 @jiffies_to_msecs(i64 %181)
  %183 = load i64, i64* %11, align 8
  %184 = call i64 @jiffies_to_msecs(i64 %183)
  %185 = sub nsw i64 %184, 50
  %186 = sub nsw i64 %182, %185
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* %7, align 4
  %189 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %187, i32 %188)
  br label %192

190:                                              ; preds = %113
  %191 = call i32 @msleep(i32 50)
  br label %192

192:                                              ; preds = %190, %178
  %193 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %194 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @regmap_write(i32 %195, i32 8449409, i32 %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %228

201:                                              ; preds = %192
  %202 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %203 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @regmap_write(i32 %204, i32 8449111, i32 0)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %228

209:                                              ; preds = %201
  %210 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %211 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @regmap_write(i32 %212, i32 8449112, i32 0)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %228

217:                                              ; preds = %209
  %218 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %219 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @regmap_write(i32 %220, i32 8449088, i32 1)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %228

225:                                              ; preds = %217
  %226 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %227 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %226, i32 0, i32 6
  store i32 1, i32* %227, align 8
  store i32 0, i32* %2, align 4
  br label %234

228:                                              ; preds = %224, %216, %208, %200, %172, %100, %70, %58, %39, %30
  %229 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = load i32, i32* %6, align 4
  %232 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %230, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %6, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %228, %225
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
