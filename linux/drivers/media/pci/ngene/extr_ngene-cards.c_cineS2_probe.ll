; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_cineS2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_cineS2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.stv090x_config** }
%struct.stv090x_config = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"XO2 on channel %d (type %d, id %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"skipping XO2 init on odd channel %d\00", align 1
@DEMOD_TYPE_XO2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s (XO2) on channel %d\0A\00", align 1
@xo2names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Unsupported XO2 module on channel %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"DuoFlex CI modules not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unsupported XO2 module type\0A\00", align 1
@DEMOD_TYPE_STV090X = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Could not setup DPNx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DEMOD_TYPE_DRXK = common dso_local global i32 0, align 4
@DEMOD_TYPE_STV0367 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"STV0367 on channel %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"No demod found on chan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*)* @cineS2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cineS2_probe(%struct.ngene_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene_channel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.stv090x_config*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_msg, align 8
  %13 = alloca i32, align 4
  store %struct.ngene_channel* %0, %struct.ngene_channel** %3, align 8
  %14 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %15 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %4, align 8
  %20 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %21 = call %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel* %20)
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %5, align 8
  store i32 0, i32* %11, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32* %23, i32** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  store i32 0, i32* %26, align 8
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %28 = call i64 @port_has_xo2(%struct.i2c_adapter* %27, i32* %8, i32* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %121

30:                                               ; preds = %1
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 2
  store i32 %32, i32* %9, align 4
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %35 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %115 [
    i32 128, label %41
    i32 129, label %110
  ]

41:                                               ; preds = %30
  %42 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %43 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %50 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %57

53:                                               ; preds = %41
  %54 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %56 = call i32 @init_xo2(%struct.ngene_channel* %54, %struct.i2c_adapter* %55)
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* @DEMOD_TYPE_XO2, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %101 [
    i32 132, label %62
    i32 131, label %62
    i32 134, label %62
    i32 133, label %62
    i32 130, label %84
  ]

62:                                               ; preds = %57, %57, %57, %57
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32*, i32** @xo2names, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %70 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %75 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 133
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  br label %79

79:                                               ; preds = %78, %62
  %80 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @demod_attach_cxd28xx(%struct.ngene_channel* %80, %struct.i2c_adapter* %81, i32 %82)
  br label %109

84:                                               ; preds = %57
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32*, i32** @xo2names, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %92 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %97 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %100 = call i32 @demod_attach_stv0910(%struct.ngene_channel* %98, %struct.i2c_adapter* %99)
  br label %109

101:                                              ; preds = %57
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %104 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_warn(%struct.device* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %229

109:                                              ; preds = %84, %79
  br label %120

110:                                              ; preds = %30
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %229

115:                                              ; preds = %30
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %229

120:                                              ; preds = %109
  br label %228

121:                                              ; preds = %1
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %123 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %124 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @port_has_stv0900(%struct.i2c_adapter* %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %186

128:                                              ; preds = %121
  %129 = load i32, i32* @DEMOD_TYPE_STV090X, align 4
  %130 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %131 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %133 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load %struct.stv090x_config**, %struct.stv090x_config*** %137, align 8
  %139 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %140 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.stv090x_config*, %struct.stv090x_config** %138, i64 %142
  %144 = load %struct.stv090x_config*, %struct.stv090x_config** %143, align 8
  store %struct.stv090x_config* %144, %struct.stv090x_config** %6, align 8
  %145 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %146 = call i32 @demod_attach_stv0900(%struct.ngene_channel* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %128
  %150 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %151 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %154, label %156

154:                                              ; preds = %149, %128
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %2, align 4
  br label %229

156:                                              ; preds = %149
  %157 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %158 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 3, i32* %161, align 8
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 241, i32* %162, align 4
  %163 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %164 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  switch i32 %165, label %172 [
    i32 2, label %166
    i32 3, label %169
  ]

166:                                              ; preds = %156
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 92, i32* %167, align 4
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 194, i32* %168, align 4
  br label %175

169:                                              ; preds = %156
  %170 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 97, i32* %170, align 4
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 204, i32* %171, align 4
  br label %175

172:                                              ; preds = %156
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %229

175:                                              ; preds = %169, %166
  %176 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %177 = call i32 @i2c_transfer(%struct.i2c_adapter* %176, %struct.i2c_msg* %12, i32 1)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 1
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = call i32 @dev_err(%struct.device* %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %229

185:                                              ; preds = %175
  br label %227

186:                                              ; preds = %121
  %187 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %188 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %189 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = xor i32 %190, 2
  %192 = call i64 @port_has_drxk(%struct.i2c_adapter* %187, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %186
  %195 = load i32, i32* @DEMOD_TYPE_DRXK, align 4
  %196 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %197 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %199 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %200 = call i32 @demod_attach_drxk(%struct.ngene_channel* %198, %struct.i2c_adapter* %199)
  br label %226

201:                                              ; preds = %186
  %202 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %203 = call i64 @port_has_stv0367(%struct.i2c_adapter* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load i32, i32* @DEMOD_TYPE_STV0367, align 4
  %207 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %208 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %211 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %212)
  %214 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %215 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %216 = call i32 @demod_attach_stv0367(%struct.ngene_channel* %214, %struct.i2c_adapter* %215)
  br label %225

217:                                              ; preds = %201
  %218 = load %struct.device*, %struct.device** %4, align 8
  %219 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %220 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @ENODEV, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %2, align 4
  br label %229

225:                                              ; preds = %205
  br label %226

226:                                              ; preds = %225, %194
  br label %227

227:                                              ; preds = %226, %185
  br label %228

228:                                              ; preds = %227, %120
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %217, %180, %172, %154, %115, %110, %101
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel*) #1

declare dso_local i64 @port_has_xo2(%struct.i2c_adapter*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @init_xo2(%struct.ngene_channel*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @demod_attach_cxd28xx(%struct.ngene_channel*, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @demod_attach_stv0910(%struct.ngene_channel*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @port_has_stv0900(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @demod_attach_stv0900(%struct.ngene_channel*) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @port_has_drxk(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @demod_attach_drxk(%struct.ngene_channel*, %struct.i2c_adapter*) #1

declare dso_local i64 @port_has_stv0367(%struct.i2c_adapter*) #1

declare dso_local i32 @demod_attach_stv0367(%struct.ngene_channel*, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
