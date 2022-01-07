; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_detect_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_detect_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32, i32 }

@CHIP_VER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"f711\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"saa711%c\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"saa711%ca\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"saa7111a variant found\0A\00", align 1
@SAA7111A = common dso_local global i32 0, align 4
@SAA7111 = common dso_local global i32 0, align 4
@SAA7113 = common dso_local global i32 0, align 4
@SAA7114 = common dso_local global i32 0, align 4
@SAA7115 = common dso_local global i32 0, align 4
@SAA7118 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"WARNING: Philips/NXP chip unknown - Falling back to saa7111\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"gm7113c\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"It seems to be a %s chip (%*ph) @ 0x%x.\0A\00", align 1
@GM7113C = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"1111111111111111\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"cjc7113\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"chip %*ph @ 0x%x is unknown.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*, i8*)* @saa711x_detect_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_detect_chip(%struct.i2c_client* %0, %struct.i2c_device_id* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.i2c_device_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @CHIP_VER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.i2c_device_id*, %struct.i2c_device_id** %6, align 8
  %19 = icmp ne %struct.i2c_device_id* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.i2c_device_id*, %struct.i2c_device_id** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br label %25

25:                                               ; preds = %20, %3
  %26 = phi i1 [ true, %3 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %70, %25
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @CHIP_VER_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %33, i32 0, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 0)
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %17, i64 %39
  store i8 %37, i8* %40, align 1
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %17, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %45, 15
  %47 = add nsw i32 %46, 48
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sgt i32 %58, 57
  br i1 %59, label %60, label %69

60:                                               ; preds = %32
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = add nsw i32 %66, 39
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  br label %69

69:                                               ; preds = %60, %32
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %28

73:                                               ; preds = %28
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @memcmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %133, label %82

82:                                               ; preds = %73
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 5
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %10, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @CHIP_VER_SIZE, align 4
  %88 = load i8, i8* %10, align 1
  %89 = call i32 @snprintf(i8* %86, i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8 signext %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %82
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.i2c_device_id*, %struct.i2c_device_id** %6, align 8
  %95 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strcmp(i8* %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

102:                                              ; preds = %92, %82
  %103 = load i8, i8* %10, align 1
  %104 = sext i8 %103 to i32
  switch i32 %104, label %129 [
    i32 49, label %105
    i32 51, label %121
    i32 52, label %123
    i32 53, label %125
    i32 56, label %127
  ]

105:                                              ; preds = %102
  %106 = getelementptr inbounds i8, i8* %17, i64 0
  %107 = load i8, i8* %106, align 16
  %108 = sext i8 %107 to i32
  %109 = and i32 %108, 240
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* @CHIP_VER_SIZE, align 4
  %114 = load i8, i8* %10, align 1
  %115 = call i32 @snprintf(i8* %112, i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8 signext %114)
  %116 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %117 = call i32 @v4l_info(%struct.i2c_client* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @SAA7111A, align 4
  store i32 %118, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

119:                                              ; preds = %105
  %120 = load i32, i32* @SAA7111, align 4
  store i32 %120, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

121:                                              ; preds = %102
  %122 = load i32, i32* @SAA7113, align 4
  store i32 %122, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

123:                                              ; preds = %102
  %124 = load i32, i32* @SAA7114, align 4
  store i32 %124, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

125:                                              ; preds = %102
  %126 = load i32, i32* @SAA7115, align 4
  store i32 %126, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

127:                                              ; preds = %102
  %128 = load i32, i32* @SAA7118, align 4
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

129:                                              ; preds = %102
  %130 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %131 = call i32 @v4l2_info(%struct.i2c_client* %130, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* @SAA7111, align 4
  store i32 %132, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

133:                                              ; preds = %73
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @memcmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %188, label %137

137:                                              ; preds = %133
  store i8 0, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %159, %137
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %141, label %162

141:                                              ; preds = %138
  %142 = load i8, i8* %10, align 1
  %143 = sext i8 %142 to i32
  %144 = shl i32 %143, 1
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %10, align 1
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %17, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = and i32 %150, 128
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 1, i32 0
  %155 = load i8, i8* %10, align 1
  %156 = sext i8 %155 to i32
  %157 = or i32 %156, %154
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %10, align 1
  br label %159

159:                                              ; preds = %141
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %138

162:                                              ; preds = %138
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* @CHIP_VER_SIZE, align 4
  %165 = call i32 @strscpy(i8* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %162
  %169 = load i8*, i8** %7, align 8
  %170 = load %struct.i2c_device_id*, %struct.i2c_device_id** %6, align 8
  %171 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @strcmp(i8* %169, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

178:                                              ; preds = %168, %162
  %179 = load i32, i32* @debug, align 4
  %180 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 1
  %186 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %179, %struct.i2c_client* %180, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %181, i32 16, i8* %17, i32 %185)
  %187 = load i32, i32* @GM7113C, align 4
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

188:                                              ; preds = %133
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* @CHIP_VER_SIZE, align 4
  %191 = call i32 @memcmp(i8* %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %219, label %193

193:                                              ; preds = %188
  %194 = load i8*, i8** %7, align 8
  %195 = load i32, i32* @CHIP_VER_SIZE, align 4
  %196 = call i32 @strscpy(i8* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %209, label %199

199:                                              ; preds = %193
  %200 = load i8*, i8** %7, align 8
  %201 = load %struct.i2c_device_id*, %struct.i2c_device_id** %6, align 8
  %202 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @strcmp(i8* %200, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

209:                                              ; preds = %199, %193
  %210 = load i32, i32* @debug, align 4
  %211 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %214 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 1
  %217 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %210, %struct.i2c_client* %211, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %212, i32 16, i8* %17, i32 %216)
  %218 = load i32, i32* @SAA7113, align 4
  store i32 %218, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

219:                                              ; preds = %188
  %220 = load i32, i32* @debug, align 4
  %221 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %222 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %223 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 1
  %226 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %220, %struct.i2c_client* %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 16, i8* %17, i32 %225)
  %227 = load i32, i32* @ENODEV, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %229

229:                                              ; preds = %219, %209, %206, %178, %175, %129, %127, %125, %123, %121, %119, %111, %99
  %230 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #2

declare dso_local signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*) #2

declare dso_local i32 @v4l2_info(%struct.i2c_client*, i8*) #2

declare dso_local i32 @strscpy(i8*, i8*, i32) #2

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
