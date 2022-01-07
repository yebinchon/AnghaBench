; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.tda10071_dev* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.tda10071_dev = type { i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda10071_cmd = type { i32*, i32 }

@.str = private unnamed_addr constant [95 x i8] c"delivery_system=%d modulation=%d frequency=%u symbol_rate=%d inversion=%d pilot=%d rolloff=%d\0A\00", align 1
@SYS_UNDEFINED = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid inversion\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid rolloff\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"invalid pilot\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid delivery_system\0A\00", align 1
@TDA10071_MODCOD = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"mode found=%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"invalid parameter combination\0A\00", align 1
@CMD_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@tda10071_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda10071_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tda10071_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.tda10071_cmd, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.tda10071_dev*, %struct.tda10071_dev** %17, align 8
  store %struct.tda10071_dev* %18, %struct.tda10071_dev** %4, align 8
  %19 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %20 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %19, i32 0, i32 3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %5, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  store %struct.dtv_frontend_properties* %23, %struct.dtv_frontend_properties** %7, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46)
  %48 = load i32, i32* @SYS_UNDEFINED, align 4
  %49 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %50 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %52 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %1
  %56 = load i32, i32* @EFAULT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %299

58:                                               ; preds = %1
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %65 [
    i32 138, label %62
    i32 137, label %63
    i32 139, label %64
  ]

62:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  br label %71

63:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %71

64:                                               ; preds = %58
  store i32 3, i32* %13, align 4
  br label %71

65:                                               ; preds = %58
  %66 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %299

71:                                               ; preds = %64, %63, %62
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %108 [
    i32 129, label %75
    i32 128, label %77
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* @QPSK, align 4
  store i32 %76, i32* %15, align 4
  store i32 0, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %114

77:                                               ; preds = %71
  %78 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %15, align 4
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %88 [
    i32 133, label %84
    i32 132, label %85
    i32 131, label %86
    i32 130, label %87
  ]

84:                                               ; preds = %77
  store i32 2, i32* %11, align 4
  br label %94

85:                                               ; preds = %77
  store i32 1, i32* %11, align 4
  br label %94

86:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  br label %94

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %77, %87
  %89 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %299

94:                                               ; preds = %86, %85, %84
  %95 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %96 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %101 [
    i32 135, label %98
    i32 134, label %99
    i32 136, label %100
  ]

98:                                               ; preds = %94
  store i32 0, i32* %12, align 4
  br label %107

99:                                               ; preds = %94
  store i32 1, i32* %12, align 4
  br label %107

100:                                              ; preds = %94
  store i32 2, i32* %12, align 4
  br label %107

101:                                              ; preds = %94
  %102 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %299

107:                                              ; preds = %100, %99, %98
  br label %114

108:                                              ; preds = %71
  %109 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %299

114:                                              ; preds = %107, %75
  store i32 0, i32* %9, align 4
  store i32 255, i32* %10, align 4
  br label %115

115:                                              ; preds = %163, %114
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDA10071_MODCOD, align 8
  %118 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %117)
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %166

120:                                              ; preds = %115
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDA10071_MODCOD, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %123, %129
  br i1 %130, label %131, label %162

131:                                              ; preds = %120
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDA10071_MODCOD, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %132, %138
  br i1 %139, label %140, label %162

140:                                              ; preds = %131
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDA10071_MODCOD, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %143, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %140
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDA10071_MODCOD, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %10, align 4
  %158 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = load i32, i32* %10, align 4
  %161 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  br label %166

162:                                              ; preds = %140, %131, %120
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %115

166:                                              ; preds = %151, %115
  %167 = load i32, i32* %10, align 4
  %168 = icmp eq i32 %167, 255
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %8, align 4
  br label %299

175:                                              ; preds = %166
  %176 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %177 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %178, 5000000
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 14, i32* %14, align 4
  br label %182

181:                                              ; preds = %175
  store i32 4, i32* %14, align 4
  br label %182

182:                                              ; preds = %181, %180
  %183 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %184 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @regmap_write(i32 %185, i32 129, i32 %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %299

191:                                              ; preds = %182
  %192 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %193 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @regmap_write(i32 %194, i32 227, i32 %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %299

200:                                              ; preds = %191
  %201 = load i32, i32* @CMD_CHANGE_CHANNEL, align 4
  %202 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %201, i32* %204, align 4
  %205 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 0, i32* %207, align 4
  %208 = load i32, i32* %10, align 4
  %209 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  store i32 %208, i32* %211, align 4
  %212 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = ashr i32 %214, 16
  %216 = and i32 %215, 255
  %217 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 3
  store i32 %216, i32* %219, align 4
  %220 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = ashr i32 %222, 8
  %224 = and i32 %223, 255
  %225 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  store i32 %224, i32* %227, align 4
  %228 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %229 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = ashr i32 %230, 0
  %232 = and i32 %231, 255
  %233 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 5
  store i32 %232, i32* %235, align 4
  %236 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %237 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = sdiv i32 %238, 1000
  %240 = ashr i32 %239, 8
  %241 = and i32 %240, 255
  %242 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 6
  store i32 %241, i32* %244, align 4
  %245 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %246 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = sdiv i32 %247, 1000
  %249 = ashr i32 %248, 0
  %250 = and i32 %249, 255
  %251 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 7
  store i32 %250, i32* %253, align 4
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tda10071_ops, i32 0, i32 0, i32 0), align 4
  %255 = sdiv i32 %254, 1000
  %256 = ashr i32 %255, 8
  %257 = and i32 %256, 255
  %258 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 8
  store i32 %257, i32* %260, align 4
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tda10071_ops, i32 0, i32 0, i32 0), align 4
  %262 = sdiv i32 %261, 1000
  %263 = ashr i32 %262, 0
  %264 = and i32 %263, 255
  %265 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 9
  store i32 %264, i32* %267, align 4
  %268 = load i32, i32* %11, align 4
  %269 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 10
  store i32 %268, i32* %271, align 4
  %272 = load i32, i32* %13, align 4
  %273 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 11
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* %12, align 4
  %277 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 12
  store i32 %276, i32* %279, align 4
  %280 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 13
  store i32 0, i32* %282, align 4
  %283 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 14
  store i32 0, i32* %285, align 4
  %286 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 1
  store i32 15, i32* %286, align 8
  %287 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %288 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %287, %struct.tda10071_cmd* %6)
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %200
  br label %299

292:                                              ; preds = %200
  %293 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %294 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %297 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* %8, align 4
  store i32 %298, i32* %2, align 4
  br label %305

299:                                              ; preds = %291, %199, %190, %169, %108, %101, %88, %65, %55
  %300 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %301 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %300, i32 0, i32 0
  %302 = load i32, i32* %8, align 4
  %303 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %301, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* %8, align 4
  store i32 %304, i32* %2, align 4
  br label %305

305:                                              ; preds = %299, %292
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
