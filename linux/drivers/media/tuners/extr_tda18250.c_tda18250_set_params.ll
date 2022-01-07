; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.tda18250_dev = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@tda18250_set_params.delsys_params = internal constant [8 x [16 x i64]] [[16 x i64] [i64 34, i64 35, i64 36, i64 33, i64 13, i64 12, i64 15, i64 20, i64 14, i64 18, i64 88, i64 89, i64 26, i64 25, i64 30, i64 48], [16 x i64] [i64 119, i64 255, i64 255, i64 135, i64 240, i64 120, i64 7, i64 224, i64 96, i64 15, i64 96, i64 15, i64 51, i64 48, i64 128, i64 6], [16 x i64] [i64 81, i64 3, i64 131, i64 130, i64 64, i64 72, i64 1, i64 224, i64 96, i64 15, i64 96, i64 5, i64 3, i64 16, i64 0, i64 4], [16 x i64] [i64 82, i64 3, i64 133, i64 130, i64 64, i64 72, i64 1, i64 224, i64 96, i64 15, i64 96, i64 5, i64 3, i64 16, i64 0, i64 4], [16 x i64] [i64 83, i64 3, i64 135, i64 130, i64 64, i64 72, i64 6, i64 224, i64 96, i64 7, i64 96, i64 5, i64 3, i64 16, i64 0, i64 4], [16 x i64] [i64 50, i64 5, i64 134, i64 130, i64 80, i64 0, i64 6, i64 96, i64 64, i64 14, i64 96, i64 5, i64 51, i64 16, i64 0, i64 4], [16 x i64] [i64 83, i64 3, i64 136, i64 130, i64 80, i64 0, i64 6, i64 96, i64 64, i64 14, i64 96, i64 5, i64 51, i64 16, i64 0, i64 4], [16 x i64] [i64 81, i64 3, i64 131, i64 130, i64 64, i64 72, i64 1, i64 224, i64 64, i64 14, i64 96, i64 5, i64 3, i64 0, i64 128, i64 4]], align 16
@.str = private unnamed_addr constant [48 x i8] c"delivery_system=%d frequency=%u bandwidth_hz=%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unsupported delivery system=%d\00", align 1
@R26_IF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"set IF=%u kHz\00", align 1
@R1A_AGCK = common dso_local global i64 0, align 8
@R14_AGC23 = common dso_local global i64 0, align 8
@R27_RF1 = common dso_local global i32 0, align 4
@R0A_IRQ3 = common dso_local global i64 0, align 8
@TDA18250_IRQ_TUNE = common dso_local global i32 0, align 4
@R2A_MSM1 = common dso_local global i64 0, align 8
@R2B_MSM2 = common dso_local global i64 0, align 8
@R4F_XTALFLX3 = common dso_local global i64 0, align 8
@R46_CPUMP = common dso_local global i64 0, align 8
@R39_SD5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18250_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18250_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tda18250_dev*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [3 x i64], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %4, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.tda18250_dev* %17, %struct.tda18250_dev** %5, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  store %struct.dtv_frontend_properties* %19, %struct.dtv_frontend_properties** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %28, i32 %31)
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %114 [
    i32 132, label %36
    i32 129, label %40
    i32 128, label %40
    i32 131, label %82
    i32 130, label %82
  ]

36:                                               ; preds = %1
  store i32 7, i32* %10, align 4
  %37 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %38 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  br label %123

40:                                               ; preds = %1, %1
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %389

48:                                               ; preds = %40
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 6000000
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  store i32 2, i32* %10, align 4
  %54 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %55 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %7, align 8
  br label %80

57:                                               ; preds = %48
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 7000000
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  store i32 3, i32* %10, align 4
  %63 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %64 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %7, align 8
  br label %79

66:                                               ; preds = %57
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %69, 8000000
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  store i32 4, i32* %10, align 4
  %72 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %73 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %7, align 8
  br label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %389

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80
  br label %123

82:                                               ; preds = %1, %1
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %389

90:                                               ; preds = %82
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %93, 6000000
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  store i32 5, i32* %10, align 4
  %96 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %97 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %7, align 8
  br label %112

99:                                               ; preds = %90
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 8000000
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  store i32 6, i32* %10, align 4
  %105 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %106 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %7, align 8
  br label %111

108:                                              ; preds = %99
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %8, align 4
  br label %389

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %95
  br label %113

113:                                              ; preds = %112
  br label %123

114:                                              ; preds = %1
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %120 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %389

123:                                              ; preds = %113, %81, %36
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %151, %123
  %125 = load i32, i32* %9, align 4
  %126 = icmp ult i32 %125, 16
  br i1 %126, label %127, label %154

127:                                              ; preds = %124
  %128 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %129 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [16 x i64], [16 x i64]* getelementptr inbounds ([8 x [16 x i64]], [8 x [16 x i64]]* @tda18250_set_params.delsys_params, i64 0, i64 0), i64 0, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i64], [16 x i64]* getelementptr inbounds ([8 x [16 x i64]], [8 x [16 x i64]]* @tda18250_set_params.delsys_params, i64 0, i64 1), i64 0, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [8 x [16 x i64]], [8 x [16 x i64]]* @tda18250_set_params.delsys_params, i64 0, i64 %140
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [16 x i64], [16 x i64]* %141, i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @regmap_write_bits(i32 %130, i64 %134, i64 %138, i64 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %127
  br label %389

150:                                              ; preds = %127
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %124

154:                                              ; preds = %124
  %155 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %156 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %154
  %161 = load i64, i64* %7, align 8
  %162 = call i64 @DIV_ROUND_CLOSEST(i64 %161, i32 50)
  store i64 %162, i64* %11, align 8
  %163 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %164 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load i64, i64* @R26_IF, align 8
  %167 = load i64, i64* %11, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i32 @regmap_write(i32 %165, i64 %166, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  br label %389

173:                                              ; preds = %160
  %174 = load i64, i64* %7, align 8
  %175 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %176 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %175, i32 0, i32 6
  store i64 %174, i64* %176, align 8
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 0
  %179 = load i64, i64* %7, align 8
  %180 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %179)
  br label %181

181:                                              ; preds = %173, %154
  %182 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %183 = call i32 @tda18250_set_agc(%struct.dvb_frontend* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %389

187:                                              ; preds = %181
  %188 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %189 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* @R1A_AGCK, align 8
  %192 = call i32 @regmap_write_bits(i32 %190, i64 %191, i64 3, i64 1)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %389

196:                                              ; preds = %187
  %197 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %198 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load i64, i64* @R14_AGC23, align 8
  %201 = call i32 @regmap_write_bits(i32 %199, i64 %200, i64 64, i64 0)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %389

205:                                              ; preds = %196
  %206 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %207 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sdiv i32 %208, 1000
  %210 = ashr i32 %209, 16
  %211 = and i32 %210, 255
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  store i64 %212, i64* %213, align 16
  %214 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %215 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %216, 1000
  %218 = ashr i32 %217, 8
  %219 = and i32 %218, 255
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  store i64 %220, i64* %221, align 8
  %222 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %223 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %224, 1000
  %226 = ashr i32 %225, 0
  %227 = and i32 %226, 255
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  store i64 %228, i64* %229, align 16
  %230 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %231 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @R27_RF1, align 4
  %234 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %235 = call i32 @regmap_bulk_write(i32 %232, i32 %233, i64* %234, i32 3)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %205
  br label %389

239:                                              ; preds = %205
  %240 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %241 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = load i64, i64* @R0A_IRQ3, align 8
  %244 = load i32, i32* @TDA18250_IRQ_TUNE, align 4
  %245 = call i32 @regmap_write(i32 %242, i64 %243, i32 %244)
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  br label %389

249:                                              ; preds = %239
  %250 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %251 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 8
  %253 = load i64, i64* @R2A_MSM1, align 8
  %254 = call i32 @regmap_write(i32 %252, i64 %253, i32 1)
  store i32 %254, i32* %8, align 4
  %255 = load i32, i32* %8, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %249
  br label %389

258:                                              ; preds = %249
  %259 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %260 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = load i64, i64* @R2B_MSM2, align 8
  %263 = call i32 @regmap_write(i32 %261, i64 %262, i32 1)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  br label %389

267:                                              ; preds = %258
  %268 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %269 = load i32, i32* @TDA18250_IRQ_TUNE, align 4
  %270 = call i32 @tda18250_wait_for_irq(%struct.dvb_frontend* %268, i32 500, i32 10, i32 %269)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  br label %389

274:                                              ; preds = %267
  %275 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %276 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %277 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  %278 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  %279 = call i32 @tda18250_pll_calc(%struct.dvb_frontend* %275, i64* %276, i64* %277, i64* %278)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %389

283:                                              ; preds = %274
  %284 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %285 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %284, i32 0, i32 7
  %286 = load i32, i32* %285, align 8
  %287 = load i64, i64* @R4F_XTALFLX3, align 8
  %288 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %289 = load i64, i64* %288, align 16
  %290 = shl i64 %289, 6
  %291 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  %292 = load i64, i64* %291, align 8
  %293 = shl i64 %292, 5
  %294 = or i64 %290, %293
  %295 = call i32 @regmap_write_bits(i32 %286, i64 %287, i64 224, i64 %294)
  store i32 %295, i32* %8, align 4
  %296 = load i32, i32* %8, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %283
  br label %389

299:                                              ; preds = %283
  %300 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %301 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = load i64, i64* @R0A_IRQ3, align 8
  %304 = load i32, i32* @TDA18250_IRQ_TUNE, align 4
  %305 = call i32 @regmap_write(i32 %302, i64 %303, i32 %304)
  store i32 %305, i32* %8, align 4
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %299
  br label %389

309:                                              ; preds = %299
  %310 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %311 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 8
  %313 = load i64, i64* @R46_CPUMP, align 8
  %314 = call i32 @regmap_write_bits(i32 %312, i64 %313, i64 7, i64 0)
  store i32 %314, i32* %8, align 4
  %315 = load i32, i32* %8, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  br label %389

318:                                              ; preds = %309
  %319 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %320 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 8
  %322 = load i64, i64* @R39_SD5, align 8
  %323 = call i32 @regmap_write_bits(i32 %321, i64 %322, i64 3, i64 0)
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* %8, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %389

327:                                              ; preds = %318
  %328 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %329 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 8
  %331 = load i64, i64* @R2A_MSM1, align 8
  %332 = call i32 @regmap_write(i32 %330, i64 %331, i32 1)
  store i32 %332, i32* %8, align 4
  %333 = load i32, i32* %8, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %327
  br label %389

336:                                              ; preds = %327
  %337 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %338 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 8
  %340 = load i64, i64* @R2B_MSM2, align 8
  %341 = call i32 @regmap_write(i32 %339, i64 %340, i32 1)
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %8, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %336
  br label %389

345:                                              ; preds = %336
  %346 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %347 = load i32, i32* @TDA18250_IRQ_TUNE, align 4
  %348 = call i32 @tda18250_wait_for_irq(%struct.dvb_frontend* %346, i32 500, i32 10, i32 %347)
  store i32 %348, i32* %8, align 4
  %349 = load i32, i32* %8, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  br label %389

352:                                              ; preds = %345
  %353 = call i32 @msleep(i32 20)
  %354 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %355 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 8
  %357 = load i64, i64* @R2B_MSM2, align 8
  %358 = call i32 @regmap_write_bits(i32 %356, i64 %357, i64 4, i64 4)
  store i32 %358, i32* %8, align 4
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %352
  br label %389

362:                                              ; preds = %352
  %363 = call i32 @msleep(i32 20)
  %364 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %365 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %364, i32 0, i32 7
  %366 = load i32, i32* %365, align 8
  %367 = load i64, i64* @R1A_AGCK, align 8
  %368 = call i32 @regmap_write_bits(i32 %366, i64 %367, i64 3, i64 3)
  store i32 %368, i32* %8, align 4
  %369 = load i32, i32* %8, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %362
  br label %389

372:                                              ; preds = %362
  %373 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %374 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = load i64, i64* @R14_AGC23, align 8
  %377 = call i32 @regmap_write_bits(i32 %375, i64 %376, i64 64, i64 64)
  store i32 %377, i32* %8, align 4
  %378 = load i32, i32* %8, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %372
  br label %389

381:                                              ; preds = %372
  %382 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %383 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %382, i32 0, i32 7
  %384 = load i32, i32* %383, align 8
  %385 = load i64, i64* @R46_CPUMP, align 8
  %386 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  %387 = load i64, i64* %386, align 16
  %388 = call i32 @regmap_write_bits(i32 %384, i64 %385, i64 7, i64 %387)
  store i32 %388, i32* %8, align 4
  store i32 0, i32* %2, align 4
  br label %391

389:                                              ; preds = %380, %371, %361, %351, %344, %335, %326, %317, %308, %298, %282, %273, %266, %257, %248, %238, %204, %195, %186, %172, %149, %114, %108, %87, %75, %45
  %390 = load i32, i32* %8, align 4
  store i32 %390, i32* %2, align 4
  br label %391

391:                                              ; preds = %389, %381
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i64, i64, i64) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @tda18250_set_agc(%struct.dvb_frontend*) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i64*, i32) #1

declare dso_local i32 @tda18250_wait_for_irq(%struct.dvb_frontend*, i32, i32, i32) #1

declare dso_local i32 @tda18250_pll_calc(%struct.dvb_frontend*, i64*, i64*, i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
