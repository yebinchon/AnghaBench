; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_ports_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_ports_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i64, %struct.TYPE_4__*, i32, %struct.ddb_port*, i32* }
%struct.TYPE_4__ = type { %struct.ddb_info* }
%struct.ddb_info = type { i64, i64, %struct.ddb_regmap* }
%struct.ddb_regmap = type { i32 }
%struct.ddb_port = type { i64, i64, i64, i32, i64, i64, i8*, i32, %struct.TYPE_3__*, i32, i32, %struct.ddb* }
%struct.TYPE_3__ = type { i32* }

@DDB_MAX_LINK = common dso_local global i64 0, align 8
@ci_bitrate = common dso_local global i32 0, align 4
@DDB_PORT_NONE = common dso_local global i64 0, align 8
@DDB_CI_EXTERNAL_XO2 = common dso_local global i64 0, align 8
@DDB_PORT_CI = common dso_local global i64 0, align 8
@DDB_CI_EXTERNAL_XO2_B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"DuoFlex CI_B\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Port %u: Link %u, Link Port %u (TAB %u): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddb_ports_init(%struct.ddb* %0) #0 {
  %2 = alloca %struct.ddb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ddb_port*, align 8
  %7 = alloca %struct.ddb_info*, align 8
  %8 = alloca %struct.ddb_regmap*, align 8
  store %struct.ddb* %0, %struct.ddb** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %303, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @DDB_MAX_LINK, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %306

13:                                               ; preds = %9
  %14 = load %struct.ddb*, %struct.ddb** %2, align 8
  %15 = getelementptr inbounds %struct.ddb, %struct.ddb* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ddb_info*, %struct.ddb_info** %19, align 8
  store %struct.ddb_info* %20, %struct.ddb_info** %7, align 8
  %21 = load %struct.ddb_info*, %struct.ddb_info** %7, align 8
  %22 = icmp ne %struct.ddb_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %303

24:                                               ; preds = %13
  %25 = load %struct.ddb_info*, %struct.ddb_info** %7, align 8
  %26 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %25, i32 0, i32 2
  %27 = load %struct.ddb_regmap*, %struct.ddb_regmap** %26, align 8
  store %struct.ddb_regmap* %27, %struct.ddb_regmap** %8, align 8
  %28 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %29 = icmp ne %struct.ddb_regmap* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %303

31:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %32

32:                                               ; preds = %297, %31
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.ddb_info*, %struct.ddb_info** %7, align 8
  %35 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %302

38:                                               ; preds = %32
  %39 = load %struct.ddb*, %struct.ddb** %2, align 8
  %40 = getelementptr inbounds %struct.ddb, %struct.ddb* %39, i32 0, i32 3
  %41 = load %struct.ddb_port*, %struct.ddb_port** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %41, i64 %42
  store %struct.ddb_port* %43, %struct.ddb_port** %6, align 8
  %44 = load %struct.ddb*, %struct.ddb** %2, align 8
  %45 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %46 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %45, i32 0, i32 11
  store %struct.ddb* %44, %struct.ddb** %46, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %49 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %52 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %55 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %57 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %56, i32 0, i32 3
  store i32 -1, i32* %57, align 8
  %58 = load i32, i32* @ci_bitrate, align 4
  %59 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %60 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %62 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %61, i32 0, i32 9
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %65 = call i32 @ddb_port_match_i2c(%struct.ddb_port* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %38
  %68 = load %struct.ddb_info*, %struct.ddb_info** %7, align 8
  %69 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 130
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %74 = call i32 @ddb_port_match_link_i2c(%struct.ddb_port* %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %38
  %77 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %78 = call i32 @ddb_port_probe(%struct.ddb_port* %77)
  %79 = load %struct.ddb*, %struct.ddb** %2, align 8
  %80 = getelementptr inbounds %struct.ddb, %struct.ddb* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = mul i64 2, %82
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %86 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %85, i32 0, i32 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32* %84, i32** %89, align 8
  %90 = load %struct.ddb*, %struct.ddb** %2, align 8
  %91 = getelementptr inbounds %struct.ddb, %struct.ddb* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = mul i64 2, %93
  %95 = add i64 %94, 1
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %98 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %97, i32 0, i32 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32* %96, i32** %101, align 8
  %102 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %103 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @DDB_PORT_NONE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %76
  %108 = load i64, i64* %3, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %107
  %111 = load i64, i64* %5, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %110
  %114 = load %struct.ddb*, %struct.ddb** %2, align 8
  %115 = getelementptr inbounds %struct.ddb, %struct.ddb* %114, i32 0, i32 3
  %116 = load %struct.ddb_port*, %struct.ddb_port** %115, align 8
  %117 = load i64, i64* %5, align 8
  %118 = sub i64 %117, 1
  %119 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %116, i64 %118
  %120 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DDB_CI_EXTERNAL_XO2, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %113
  %125 = load i64, i64* @DDB_PORT_CI, align 8
  %126 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %127 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* @DDB_CI_EXTERNAL_XO2_B, align 8
  %129 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %130 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %129, i32 0, i32 5
  store i64 %128, i64* %130, align 8
  %131 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %132 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %131, i32 0, i32 6
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %132, align 8
  %133 = load %struct.ddb*, %struct.ddb** %2, align 8
  %134 = getelementptr inbounds %struct.ddb, %struct.ddb* %133, i32 0, i32 3
  %135 = load %struct.ddb_port*, %struct.ddb_port** %134, align 8
  %136 = load i64, i64* %5, align 8
  %137 = sub i64 %136, 1
  %138 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %135, i64 %137
  %139 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %142 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %124, %113, %110, %107, %76
  %144 = load %struct.ddb*, %struct.ddb** %2, align 8
  %145 = getelementptr inbounds %struct.ddb, %struct.ddb* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %148 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %151 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %154 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %157 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 1
  %160 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %161 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %160, i32 0, i32 6
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @dev_info(i32 %146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %149, i64 %152, i64 %155, i64 %159, i8* %162)
  %164 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %165 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DDB_PORT_CI, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %187

169:                                              ; preds = %143
  %170 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %171 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @DDB_CI_EXTERNAL_XO2, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %177 = load i64, i64* %3, align 8
  %178 = mul i64 2, %177
  %179 = trunc i64 %178 to i32
  %180 = load i64, i64* %3, align 8
  %181 = mul i64 2, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @ddb_input_init(%struct.ddb_port* %176, i32 %179, i32 0, i32 %182)
  %184 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %185 = load i64, i64* %3, align 8
  %186 = call i32 @ddb_output_init(%struct.ddb_port* %184, i64 %185)
  br label %297

187:                                              ; preds = %169, %143
  %188 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %189 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @DDB_PORT_CI, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %187
  %194 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %195 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @DDB_CI_EXTERNAL_XO2_B, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %193
  %200 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %201 = load i64, i64* %3, align 8
  %202 = mul i64 2, %201
  %203 = sub i64 %202, 1
  %204 = trunc i64 %203 to i32
  %205 = load i64, i64* %3, align 8
  %206 = mul i64 2, %205
  %207 = sub i64 %206, 1
  %208 = trunc i64 %207 to i32
  %209 = call i32 @ddb_input_init(%struct.ddb_port* %200, i32 %204, i32 0, i32 %208)
  %210 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %211 = load i64, i64* %3, align 8
  %212 = call i32 @ddb_output_init(%struct.ddb_port* %210, i64 %211)
  br label %297

213:                                              ; preds = %193, %187
  %214 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %215 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @DDB_PORT_NONE, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %297

220:                                              ; preds = %213
  %221 = load %struct.ddb*, %struct.ddb** %2, align 8
  %222 = getelementptr inbounds %struct.ddb, %struct.ddb* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = load i64, i64* %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load %struct.ddb_info*, %struct.ddb_info** %226, align 8
  %228 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  switch i64 %229, label %295 [
    i64 131, label %230
    i64 132, label %254
    i64 130, label %276
    i64 129, label %276
    i64 128, label %276
  ]

230:                                              ; preds = %220
  %231 = load i64, i64* %3, align 8
  %232 = icmp uge i64 %231, 2
  br i1 %232, label %233, label %253

233:                                              ; preds = %230
  %234 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %235 = load i64, i64* %3, align 8
  %236 = add i64 2, %235
  %237 = trunc i64 %236 to i32
  %238 = load i64, i64* %3, align 8
  %239 = add i64 2, %238
  %240 = trunc i64 %239 to i32
  %241 = call i32 @ddb_input_init(%struct.ddb_port* %234, i32 %237, i32 0, i32 %240)
  %242 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %243 = load i64, i64* %3, align 8
  %244 = add i64 4, %243
  %245 = trunc i64 %244 to i32
  %246 = load i64, i64* %3, align 8
  %247 = add i64 4, %246
  %248 = trunc i64 %247 to i32
  %249 = call i32 @ddb_input_init(%struct.ddb_port* %242, i32 %245, i32 1, i32 %248)
  %250 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %251 = load i64, i64* %3, align 8
  %252 = call i32 @ddb_output_init(%struct.ddb_port* %250, i64 %251)
  br label %296

253:                                              ; preds = %230
  br label %254

254:                                              ; preds = %220, %253
  %255 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %256 = load i64, i64* %3, align 8
  %257 = mul i64 2, %256
  %258 = trunc i64 %257 to i32
  %259 = load i64, i64* %3, align 8
  %260 = mul i64 2, %259
  %261 = trunc i64 %260 to i32
  %262 = call i32 @ddb_input_init(%struct.ddb_port* %255, i32 %258, i32 0, i32 %261)
  %263 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %264 = load i64, i64* %3, align 8
  %265 = mul i64 2, %264
  %266 = add i64 %265, 1
  %267 = trunc i64 %266 to i32
  %268 = load i64, i64* %3, align 8
  %269 = mul i64 2, %268
  %270 = add i64 %269, 1
  %271 = trunc i64 %270 to i32
  %272 = call i32 @ddb_input_init(%struct.ddb_port* %263, i32 %267, i32 1, i32 %271)
  %273 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %274 = load i64, i64* %3, align 8
  %275 = call i32 @ddb_output_init(%struct.ddb_port* %273, i64 %274)
  br label %296

276:                                              ; preds = %220, %220, %220
  %277 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %278 = load i64, i64* %3, align 8
  %279 = mul i64 2, %278
  %280 = trunc i64 %279 to i32
  %281 = load i64, i64* %5, align 8
  %282 = mul i64 2, %281
  %283 = trunc i64 %282 to i32
  %284 = call i32 @ddb_input_init(%struct.ddb_port* %277, i32 %280, i32 0, i32 %283)
  %285 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %286 = load i64, i64* %3, align 8
  %287 = mul i64 2, %286
  %288 = add i64 %287, 1
  %289 = trunc i64 %288 to i32
  %290 = load i64, i64* %5, align 8
  %291 = mul i64 2, %290
  %292 = add i64 %291, 1
  %293 = trunc i64 %292 to i32
  %294 = call i32 @ddb_input_init(%struct.ddb_port* %285, i32 %289, i32 1, i32 %293)
  br label %296

295:                                              ; preds = %220
  br label %296

296:                                              ; preds = %295, %276, %254, %233
  br label %297

297:                                              ; preds = %296, %219, %199, %175
  %298 = load i64, i64* %3, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %3, align 8
  %300 = load i64, i64* %5, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %5, align 8
  br label %32

302:                                              ; preds = %32
  br label %303

303:                                              ; preds = %302, %30, %23
  %304 = load i64, i64* %4, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %4, align 8
  br label %9

306:                                              ; preds = %9
  %307 = load i64, i64* %5, align 8
  %308 = load %struct.ddb*, %struct.ddb** %2, align 8
  %309 = getelementptr inbounds %struct.ddb, %struct.ddb* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ddb_port_match_i2c(%struct.ddb_port*) #1

declare dso_local i32 @ddb_port_match_link_i2c(%struct.ddb_port*) #1

declare dso_local i32 @ddb_port_probe(%struct.ddb_port*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64, i64, i64, i8*) #1

declare dso_local i32 @ddb_input_init(%struct.ddb_port*, i32, i32, i32) #1

declare dso_local i32 @ddb_output_init(%struct.ddb_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
