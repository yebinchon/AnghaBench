; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8994-core.c_wm8994_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8994-core.c_wm8994_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.wm8994 = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.wm8994_pdata }
%struct.TYPE_6__ = type { i8* }
%struct.wm8994_pdata = type { i8**, i64, i64, i32, i32, i32 }
%struct.reg_sequence = type opaque

@wm8994_regulator_devs = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to add children: %d\0A\00", align 1
@wm1811_main_supplies = common dso_local global i8** null, align 8
@wm8994_main_supplies = common dso_local global i8** null, align 8
@wm8958_main_supplies = common dso_local global i8** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8994_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to read ID register\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"WM1811\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Device registered as type %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"WM8994\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"WM8958\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Device is not a WM8994, ID is %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8994_CHIP_REVISION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"Failed to read revision register: %d\0A\00", align 1
@WM8994_CHIP_REV_MASK = common dso_local global i32 0, align 4
@WM8994_CUST_ID_MASK = common dso_local global i32 0, align 4
@WM8994_CUST_ID_SHIFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"revision %c not fully supported\0A\00", align 1
@wm8994_revc_patch = common dso_local global i8** null, align 8
@wm8958_reva_patch = common dso_local global i8** null, align 8
@wm1811_reva_patch = common dso_local global i8** null, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"%s revision %c CUST_ID %02x\0A\00", align 1
@wm1811_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@wm8994_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@wm8958_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Unknown device type %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Failed to reinit register cache: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Failed to reset device: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Failed to register patch: %d\0A\00", align 1
@WM8994_GPIO_1 = common dso_local global i64 0, align 8
@WM8994_SPKMODE_PU = common dso_local global i32 0, align 4
@WM8994_CSNADDR_PD = common dso_local global i32 0, align 4
@WM8994_PULL_CONTROL_2 = common dso_local global i64 0, align 8
@WM8994_LDO1ENA_PD = common dso_local global i32 0, align 4
@WM8994_LDO2ENA_PD = common dso_local global i32 0, align 4
@WM8994_NUM_LDO_REGS = common dso_local global i32 0, align 4
@WM8994_LDO_1 = common dso_local global i64 0, align 8
@WM8994_LDO1_DISCH = common dso_local global i32 0, align 4
@wm8994_devs = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8994*, i32)* @wm8994_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_device_init(%struct.wm8994* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm8994*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8994_pdata*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca %struct.reg_sequence*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wm8994* %0, %struct.wm8994** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.reg_sequence* null, %struct.reg_sequence** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %15 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.wm8994_pdata* @dev_get_platdata(i32 %16)
  %18 = icmp ne %struct.wm8994_pdata* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %21 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.wm8994_pdata* @dev_get_platdata(i32 %22)
  store %struct.wm8994_pdata* %23, %struct.wm8994_pdata** %6, align 8
  %24 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %25 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %24, i32 0, i32 10
  %26 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %27 = bitcast %struct.wm8994_pdata* %25 to i8*
  %28 = bitcast %struct.wm8994_pdata* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 40, i1 false)
  br label %29

29:                                               ; preds = %19, %2
  %30 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %31 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %30, i32 0, i32 10
  store %struct.wm8994_pdata* %31, %struct.wm8994_pdata** %6, align 8
  %32 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %33 = call i32 @wm8994_set_pdata_from_of(%struct.wm8994* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %598

38:                                               ; preds = %29
  %39 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %40 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %43 = call i32 @dev_set_drvdata(i32 %41, %struct.wm8994* %42)
  %44 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %45 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i8**, i8*** @wm8994_regulator_devs, align 8
  %48 = load i8**, i8*** @wm8994_regulator_devs, align 8
  %49 = call i32 @ARRAY_SIZE(i8** %48)
  %50 = call i32 @mfd_add_devices(i32 %46, i32 0, i8** %47, i32 %49, i32* null, i32 0, i32* null)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %55 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %592

59:                                               ; preds = %38
  %60 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %61 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %78 [
    i32 130, label %63
    i32 128, label %68
    i32 129, label %73
  ]

63:                                               ; preds = %59
  %64 = load i8**, i8*** @wm1811_main_supplies, align 8
  %65 = call i32 @ARRAY_SIZE(i8** %64)
  %66 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %67 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %80

68:                                               ; preds = %59
  %69 = load i8**, i8*** @wm8994_main_supplies, align 8
  %70 = call i32 @ARRAY_SIZE(i8** %69)
  %71 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %72 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %80

73:                                               ; preds = %59
  %74 = load i8**, i8*** @wm8958_main_supplies, align 8
  %75 = call i32 @ARRAY_SIZE(i8** %74)
  %76 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %77 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %80

78:                                               ; preds = %59
  %79 = call i32 (...) @BUG()
  br label %592

80:                                               ; preds = %73, %68, %63
  %81 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %82 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %85 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.TYPE_6__* @devm_kcalloc(i32 %83, i32 %86, i32 4, i32 %87)
  %89 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %90 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %89, i32 0, i32 5
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %90, align 8
  %91 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %92 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %91, i32 0, i32 5
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = icmp ne %struct.TYPE_6__* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %80
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %592

98:                                               ; preds = %80
  %99 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %100 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %171 [
    i32 130, label %102
    i32 128, label %125
    i32 129, label %148
  ]

102:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i8**, i8*** @wm1811_main_supplies, align 8
  %106 = call i32 @ARRAY_SIZE(i8** %105)
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load i8**, i8*** @wm1811_main_supplies, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %115 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %114, i32 0, i32 5
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i8* %113, i8** %120, align 8
  br label %121

121:                                              ; preds = %108
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %103

124:                                              ; preds = %103
  br label %173

125:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %144, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i8**, i8*** @wm8994_main_supplies, align 8
  %129 = call i32 @ARRAY_SIZE(i8** %128)
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %126
  %132 = load i8**, i8*** @wm8994_main_supplies, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %138 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %137, i32 0, i32 5
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i8* %136, i8** %143, align 8
  br label %144

144:                                              ; preds = %131
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %126

147:                                              ; preds = %126
  br label %173

148:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %167, %148
  %150 = load i32, i32* %11, align 4
  %151 = load i8**, i8*** @wm8958_main_supplies, align 8
  %152 = call i32 @ARRAY_SIZE(i8** %151)
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load i8**, i8*** @wm8958_main_supplies, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %161 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %160, i32 0, i32 5
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i8* %159, i8** %166, align 8
  br label %167

167:                                              ; preds = %154
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %149

170:                                              ; preds = %149
  br label %173

171:                                              ; preds = %98
  %172 = call i32 (...) @BUG()
  br label %592

173:                                              ; preds = %170, %147, %124
  %174 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %175 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %178 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %181 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %180, i32 0, i32 5
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = call i32 @regulator_bulk_get(i32 %176, i32 %179, %struct.TYPE_6__* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %173
  %187 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %188 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 (i32, i8*, ...) @dev_err(i32 %189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  br label %592

192:                                              ; preds = %173
  %193 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %194 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %197 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %196, i32 0, i32 5
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = call i32 @regulator_bulk_enable(i32 %195, %struct.TYPE_6__* %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %192
  %203 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %204 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i32 (i32, i8*, ...) @dev_err(i32 %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  br label %584

208:                                              ; preds = %192
  %209 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %210 = load i32, i32* @WM8994_SOFTWARE_RESET, align 4
  %211 = call i32 @wm8994_reg_read(%struct.wm8994* %209, i32 %210)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %216 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, ...) @dev_err(i32 %217, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %576

219:                                              ; preds = %208
  %220 = load i32, i32* %10, align 4
  switch i32 %220, label %272 [
    i32 6161, label %221
    i32 35220, label %238
    i32 35160, label %255
  ]

221:                                              ; preds = %219
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %222 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %223 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 130
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %228 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %231 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = trunc i32 %232 to i8
  %234 = call i32 @dev_warn(i32 %229, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8 signext %233)
  br label %235

235:                                              ; preds = %226, %221
  %236 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %237 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %236, i32 0, i32 0
  store i32 130, i32* %237, align 8
  br label %280

238:                                              ; preds = %219
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  %239 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %240 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 128
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %245 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %248 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = trunc i32 %249 to i8
  %251 = call i32 @dev_warn(i32 %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8 signext %250)
  br label %252

252:                                              ; preds = %243, %238
  %253 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %254 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %253, i32 0, i32 0
  store i32 128, i32* %254, align 8
  br label %280

255:                                              ; preds = %219
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  %256 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %257 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 129
  br i1 %259, label %260, label %269

260:                                              ; preds = %255
  %261 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %262 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %265 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = trunc i32 %266 to i8
  %268 = call i32 @dev_warn(i32 %263, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8 signext %267)
  br label %269

269:                                              ; preds = %260, %255
  %270 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %271 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %270, i32 0, i32 0
  store i32 129, i32* %271, align 8
  br label %280

272:                                              ; preds = %219
  %273 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %274 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = call i32 (i32, i8*, ...) @dev_err(i32 %275, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %10, align 4
  br label %576

280:                                              ; preds = %269, %252, %235
  %281 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %282 = load i32, i32* @WM8994_CHIP_REVISION, align 4
  %283 = call i32 @wm8994_reg_read(%struct.wm8994* %281, i32 %282)
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* %10, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %280
  %287 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %288 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = call i32 (i32, i8*, ...) @dev_err(i32 %289, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %290)
  br label %576

292:                                              ; preds = %280
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* @WM8994_CHIP_REV_MASK, align 4
  %295 = and i32 %293, %294
  %296 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %297 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* @WM8994_CUST_ID_MASK, align 4
  %300 = and i32 %298, %299
  %301 = load i32, i32* @WM8994_CUST_ID_SHIFT, align 4
  %302 = ashr i32 %300, %301
  %303 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %304 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %303, i32 0, i32 3
  store i32 %302, i32* %304, align 4
  %305 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %306 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  switch i32 %307, label %355 [
    i32 128, label %308
    i32 129, label %329
    i32 130, label %340
  ]

308:                                              ; preds = %292
  %309 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %310 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  switch i32 %311, label %323 [
    i32 0, label %312
    i32 1, label %312
    i32 2, label %322
    i32 3, label %322
  ]

312:                                              ; preds = %308, %308
  %313 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %314 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %317 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 65, %318
  %320 = trunc i32 %319 to i8
  %321 = call i32 @dev_warn(i32 %315, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8 signext %320)
  br label %328

322:                                              ; preds = %308, %308
  br label %323

323:                                              ; preds = %308, %322
  %324 = load i8**, i8*** @wm8994_revc_patch, align 8
  %325 = bitcast i8** %324 to %struct.reg_sequence*
  store %struct.reg_sequence* %325, %struct.reg_sequence** %8, align 8
  %326 = load i8**, i8*** @wm8994_revc_patch, align 8
  %327 = call i32 @ARRAY_SIZE(i8** %326)
  store i32 %327, i32* %12, align 4
  br label %328

328:                                              ; preds = %323, %312
  br label %356

329:                                              ; preds = %292
  %330 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %331 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  switch i32 %332, label %338 [
    i32 0, label %333
  ]

333:                                              ; preds = %329
  %334 = load i8**, i8*** @wm8958_reva_patch, align 8
  %335 = bitcast i8** %334 to %struct.reg_sequence*
  store %struct.reg_sequence* %335, %struct.reg_sequence** %8, align 8
  %336 = load i8**, i8*** @wm8958_reva_patch, align 8
  %337 = call i32 @ARRAY_SIZE(i8** %336)
  store i32 %337, i32* %12, align 4
  br label %339

338:                                              ; preds = %329
  br label %339

339:                                              ; preds = %338, %333
  br label %356

340:                                              ; preds = %292
  %341 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %342 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp sgt i32 %343, 1
  br i1 %344, label %345, label %350

345:                                              ; preds = %340
  %346 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %347 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %347, align 8
  br label %350

350:                                              ; preds = %345, %340
  %351 = load i8**, i8*** @wm1811_reva_patch, align 8
  %352 = bitcast i8** %351 to %struct.reg_sequence*
  store %struct.reg_sequence* %352, %struct.reg_sequence** %8, align 8
  %353 = load i8**, i8*** @wm1811_reva_patch, align 8
  %354 = call i32 @ARRAY_SIZE(i8** %353)
  store i32 %354, i32* %12, align 4
  br label %356

355:                                              ; preds = %292
  br label %356

356:                                              ; preds = %355, %350, %339, %328
  %357 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %358 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = load i8*, i8** %9, align 8
  %361 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %362 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 65, %363
  %365 = trunc i32 %364 to i8
  %366 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %367 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @dev_info(i32 %359, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %360, i8 signext %365, i32 %368)
  %370 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %371 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  switch i32 %372, label %376 [
    i32 130, label %373
    i32 128, label %374
    i32 129, label %375
  ]

373:                                              ; preds = %356
  store %struct.regmap_config* @wm1811_regmap_config, %struct.regmap_config** %7, align 8
  br label %386

374:                                              ; preds = %356
  store %struct.regmap_config* @wm8994_regmap_config, %struct.regmap_config** %7, align 8
  br label %386

375:                                              ; preds = %356
  store %struct.regmap_config* @wm8958_regmap_config, %struct.regmap_config** %7, align 8
  br label %386

376:                                              ; preds = %356
  %377 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %378 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %381 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = call i32 (i32, i8*, ...) @dev_err(i32 %379, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %382)
  %384 = load i32, i32* @EINVAL, align 4
  %385 = sub nsw i32 0, %384
  store i32 %385, i32* %10, align 4
  br label %576

386:                                              ; preds = %375, %374, %373
  %387 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %388 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %387, i32 0, i32 9
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %391 = call i32 @regmap_reinit_cache(i32 %389, %struct.regmap_config* %390)
  store i32 %391, i32* %10, align 4
  %392 = load i32, i32* %10, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %400

394:                                              ; preds = %386
  %395 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %396 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %10, align 4
  %399 = call i32 (i32, i8*, ...) @dev_err(i32 %397, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %398)
  br label %576

400:                                              ; preds = %386
  %401 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %402 = load i32, i32* @WM8994_SOFTWARE_RESET, align 4
  %403 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %404 = load i32, i32* @WM8994_SOFTWARE_RESET, align 4
  %405 = call i32 @wm8994_reg_read(%struct.wm8994* %403, i32 %404)
  %406 = call i32 @wm8994_reg_write(%struct.wm8994* %401, i32 %402, i32 %405)
  store i32 %406, i32* %10, align 4
  %407 = load i32, i32* %10, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %400
  %410 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %411 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %410, i32 0, i32 4
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* %10, align 4
  %414 = call i32 (i32, i8*, ...) @dev_err(i32 %412, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %413)
  br label %576

415:                                              ; preds = %400
  %416 = load %struct.reg_sequence*, %struct.reg_sequence** %8, align 8
  %417 = icmp ne %struct.reg_sequence* %416, null
  br i1 %417, label %418, label %435

418:                                              ; preds = %415
  %419 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %420 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %419, i32 0, i32 9
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.reg_sequence*, %struct.reg_sequence** %8, align 8
  %423 = bitcast %struct.reg_sequence* %422 to i8**
  %424 = load i32, i32* %12, align 4
  %425 = call i32 @regmap_register_patch(i32 %421, i8** %423, i32 %424)
  store i32 %425, i32* %10, align 4
  %426 = load i32, i32* %10, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %434

428:                                              ; preds = %418
  %429 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %430 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* %10, align 4
  %433 = call i32 (i32, i8*, ...) @dev_err(i32 %431, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %432)
  br label %576

434:                                              ; preds = %418
  br label %435

435:                                              ; preds = %434, %415
  %436 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %437 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %436, i32 0, i32 5
  %438 = load i32, i32* %437, align 8
  %439 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %440 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %439, i32 0, i32 8
  store i32 %438, i32* %440, align 8
  %441 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %442 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %445 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %444, i32 0, i32 7
  store i32 %443, i32* %445, align 4
  store i32 0, i32* %11, align 4
  br label %446

446:                                              ; preds = %478, %435
  %447 = load i32, i32* %11, align 4
  %448 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %449 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %448, i32 0, i32 0
  %450 = load i8**, i8*** %449, align 8
  %451 = call i32 @ARRAY_SIZE(i8** %450)
  %452 = icmp slt i32 %447, %451
  br i1 %452, label %453, label %481

453:                                              ; preds = %446
  %454 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %455 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %454, i32 0, i32 0
  %456 = load i8**, i8*** %455, align 8
  %457 = load i32, i32* %11, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8*, i8** %456, i64 %458
  %460 = load i8*, i8** %459, align 8
  %461 = icmp ne i8* %460, null
  br i1 %461, label %462, label %477

462:                                              ; preds = %453
  %463 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %464 = load i64, i64* @WM8994_GPIO_1, align 8
  %465 = load i32, i32* %11, align 4
  %466 = sext i32 %465 to i64
  %467 = add nsw i64 %464, %466
  %468 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %469 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %468, i32 0, i32 0
  %470 = load i8**, i8*** %469, align 8
  %471 = load i32, i32* %11, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8*, i8** %470, i64 %472
  %474 = load i8*, i8** %473, align 8
  %475 = ptrtoint i8* %474 to i32
  %476 = call i32 @wm8994_set_bits(%struct.wm8994* %463, i64 %467, i32 65535, i32 %475)
  br label %477

477:                                              ; preds = %462, %453
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %11, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %11, align 4
  br label %446

481:                                              ; preds = %446
  %482 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %483 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %486 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %485, i32 0, i32 6
  store i32 %484, i32* %486, align 8
  %487 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %488 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %495

491:                                              ; preds = %481
  %492 = load i32, i32* @WM8994_SPKMODE_PU, align 4
  %493 = load i32, i32* %13, align 4
  %494 = or i32 %493, %492
  store i32 %494, i32* %13, align 4
  br label %495

495:                                              ; preds = %491, %481
  %496 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %497 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %495
  %501 = load i32, i32* @WM8994_CSNADDR_PD, align 4
  %502 = load i32, i32* %13, align 4
  %503 = or i32 %502, %501
  store i32 %503, i32* %13, align 4
  br label %504

504:                                              ; preds = %500, %495
  %505 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %506 = load i64, i64* @WM8994_PULL_CONTROL_2, align 8
  %507 = load i32, i32* @WM8994_LDO1ENA_PD, align 4
  %508 = load i32, i32* @WM8994_LDO2ENA_PD, align 4
  %509 = or i32 %507, %508
  %510 = load i32, i32* @WM8994_SPKMODE_PU, align 4
  %511 = or i32 %509, %510
  %512 = load i32, i32* @WM8994_CSNADDR_PD, align 4
  %513 = or i32 %511, %512
  %514 = load i32, i32* %13, align 4
  %515 = call i32 @wm8994_set_bits(%struct.wm8994* %505, i64 %506, i32 %513, i32 %514)
  store i32 0, i32* %11, align 4
  br label %516

516:                                              ; preds = %543, %504
  %517 = load i32, i32* %11, align 4
  %518 = load i32, i32* @WM8994_NUM_LDO_REGS, align 4
  %519 = icmp slt i32 %517, %518
  br i1 %519, label %520, label %546

520:                                              ; preds = %516
  %521 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %522 = load i32, i32* %11, align 4
  %523 = call i64 @wm8994_ldo_in_use(%struct.wm8994_pdata* %521, i32 %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %534

525:                                              ; preds = %520
  %526 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %527 = load i64, i64* @WM8994_LDO_1, align 8
  %528 = load i32, i32* %11, align 4
  %529 = sext i32 %528 to i64
  %530 = add nsw i64 %527, %529
  %531 = load i32, i32* @WM8994_LDO1_DISCH, align 4
  %532 = load i32, i32* @WM8994_LDO1_DISCH, align 4
  %533 = call i32 @wm8994_set_bits(%struct.wm8994* %526, i64 %530, i32 %531, i32 %532)
  br label %542

534:                                              ; preds = %520
  %535 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %536 = load i64, i64* @WM8994_LDO_1, align 8
  %537 = load i32, i32* %11, align 4
  %538 = sext i32 %537 to i64
  %539 = add nsw i64 %536, %538
  %540 = load i32, i32* @WM8994_LDO1_DISCH, align 4
  %541 = call i32 @wm8994_set_bits(%struct.wm8994* %535, i64 %539, i32 %540, i32 0)
  br label %542

542:                                              ; preds = %534, %525
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %11, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %11, align 4
  br label %516

546:                                              ; preds = %516
  %547 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %548 = call i32 @wm8994_irq_init(%struct.wm8994* %547)
  %549 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %550 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %549, i32 0, i32 4
  %551 = load i32, i32* %550, align 8
  %552 = load i8**, i8*** @wm8994_devs, align 8
  %553 = load i8**, i8*** @wm8994_devs, align 8
  %554 = call i32 @ARRAY_SIZE(i8** %553)
  %555 = call i32 @mfd_add_devices(i32 %551, i32 -1, i8** %552, i32 %554, i32* null, i32 0, i32* null)
  store i32 %555, i32* %10, align 4
  %556 = load i32, i32* %10, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %564

558:                                              ; preds = %546
  %559 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %560 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %559, i32 0, i32 4
  %561 = load i32, i32* %560, align 8
  %562 = load i32, i32* %10, align 4
  %563 = call i32 (i32, i8*, ...) @dev_err(i32 %561, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %562)
  br label %573

564:                                              ; preds = %546
  %565 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %566 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %565, i32 0, i32 4
  %567 = load i32, i32* %566, align 8
  %568 = call i32 @pm_runtime_enable(i32 %567)
  %569 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %570 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %569, i32 0, i32 4
  %571 = load i32, i32* %570, align 8
  %572 = call i32 @pm_runtime_idle(i32 %571)
  store i32 0, i32* %3, align 4
  br label %598

573:                                              ; preds = %558
  %574 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %575 = call i32 @wm8994_irq_exit(%struct.wm8994* %574)
  br label %576

576:                                              ; preds = %573, %428, %409, %394, %376, %286, %272, %214
  %577 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %578 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %581 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %580, i32 0, i32 5
  %582 = load %struct.TYPE_6__*, %struct.TYPE_6__** %581, align 8
  %583 = call i32 @regulator_bulk_disable(i32 %579, %struct.TYPE_6__* %582)
  br label %584

584:                                              ; preds = %576, %202
  %585 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %586 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %589 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %588, i32 0, i32 5
  %590 = load %struct.TYPE_6__*, %struct.TYPE_6__** %589, align 8
  %591 = call i32 @regulator_bulk_free(i32 %587, %struct.TYPE_6__* %590)
  br label %592

592:                                              ; preds = %584, %186, %171, %95, %78, %53
  %593 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %594 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %593, i32 0, i32 4
  %595 = load i32, i32* %594, align 8
  %596 = call i32 @mfd_remove_devices(i32 %595)
  %597 = load i32, i32* %10, align 4
  store i32 %597, i32* %3, align 4
  br label %598

598:                                              ; preds = %592, %564, %36
  %599 = load i32, i32* %3, align 4
  ret i32 %599
}

declare dso_local %struct.wm8994_pdata* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wm8994_set_pdata_from_of(%struct.wm8994*) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.wm8994*) #1

declare dso_local i32 @mfd_add_devices(i32, i32, i8**, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.TYPE_6__* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_get(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @wm8994_reg_read(%struct.wm8994*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i8 signext) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @regmap_reinit_cache(i32, %struct.regmap_config*) #1

declare dso_local i32 @wm8994_reg_write(%struct.wm8994*, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i8**, i32) #1

declare dso_local i32 @wm8994_set_bits(%struct.wm8994*, i64, i32, i32) #1

declare dso_local i64 @wm8994_ldo_in_use(%struct.wm8994_pdata*, i32) #1

declare dso_local i32 @wm8994_irq_init(%struct.wm8994*) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_idle(i32) #1

declare dso_local i32 @wm8994_irq_exit(%struct.wm8994*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @regulator_bulk_free(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
