; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.dsaf_device = type { i32, %struct.TYPE_11__*, i32, i32, i8*, i8*, i8*, i8*, i32, i8*, %struct.regmap*, i8*, i8*, i32, i32, %struct.TYPE_10__, i8* }
%struct.TYPE_11__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.resource = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"hisilicon,hns-dsaf-v1\00", align 1
@AE_VERSION_1 = common dso_local global i8* null, align 8
@AE_VERSION_2 = common dso_local global i8* null, align 8
@hns_dsaf_acpi_match = common dso_local global %struct.TYPE_12__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot get cfg data from of or acpi\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"get dsaf mode fail, ret=%d!\0A\00", align 1
@DSAF_MODE_MAX = common dso_local global i32 0, align 4
@g_dsaf_mode_match = common dso_local global i64* null, align 8
@DSAF_MODE_INVALID = common dso_local global i32 0, align 4
@DSAF_MODE_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"%s prs mode str fail!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HRD_DSAF_NO_DSAF_MODE = common dso_local global i32 0, align 4
@HRD_DSAF_MODE = common dso_local global i32 0, align 4
@DSAF_MODE_ENABLE_16VM = common dso_local global i32 0, align 4
@DSAF_MODE_DISABLE_2PORT_8VM = common dso_local global i32 0, align 4
@DSAF_MODE_DISABLE_6PORT_2VM = common dso_local global i32 0, align 4
@HRD_DSAF_8TC_MODE = common dso_local global i32 0, align 4
@HRD_DSAF_4TC_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"subctrl-syscon\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"subctrl info is needed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"serdes-ctrl info is needed!\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ppe-base\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ppe-base info is needed!\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"dsaf-base\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"dsaf-base info is needed!\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"desc-num\00", align 1
@HNS_DSAF_MIN_DESC_CNT = common dso_local global i8* null, align 8
@HNS_DSAF_MAX_DESC_CNT = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"get desc-num(%d) fail, ret=%d!\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"reset-field-offset\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"get reset-field-offset fail, ret=%d!\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"buf-size\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"get buf-size fail, ret=%d!\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"buf_size(%d) is wrong!\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"set mask to 64bit\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"set mask to 64bit fail!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsaf_device*)* @hns_dsaf_get_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_dsaf_get_cfg(%struct.dsaf_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.device_node*, align 8
  %15 = alloca %struct.platform_device*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %16 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %17 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %13, align 8
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %22 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = call %struct.platform_device* @to_platform_device(%struct.TYPE_11__* %23)
  store %struct.platform_device* %24, %struct.platform_device** %15, align 8
  %25 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %26 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = call i64 @dev_of_node(%struct.TYPE_11__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %13, align 8
  %32 = call i64 @of_device_is_compatible(%struct.device_node* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** @AE_VERSION_1, align 8
  %36 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %37 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %36, i32 0, i32 16
  store i8* %35, i8** %37, align 8
  br label %42

38:                                               ; preds = %30
  %39 = load i8*, i8** @AE_VERSION_2, align 8
  %40 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %41 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %40, i32 0, i32 16
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %86

43:                                               ; preds = %1
  %44 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %45 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @is_acpi_node(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %43
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @hns_dsaf_acpi_match, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @acpi_dev_found(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i8*, i8** @AE_VERSION_1, align 8
  %60 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %61 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %60, i32 0, i32 16
  store i8* %59, i8** %61, align 8
  br label %77

62:                                               ; preds = %51
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @hns_dsaf_acpi_match, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @acpi_dev_found(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i8*, i8** @AE_VERSION_2, align 8
  %71 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %72 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %71, i32 0, i32 16
  store i8* %70, i8** %72, align 8
  br label %76

73:                                               ; preds = %62
  %74 = load i32, i32* @ENXIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %466

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %58
  br label %85

78:                                               ; preds = %43
  %79 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %80 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %466

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %42
  %87 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %88 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = call i32 @device_property_read_string(%struct.TYPE_11__* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %95 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %466

100:                                              ; preds = %86
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %123, %100
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @DSAF_MODE_MAX, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i64*, i64** @g_dsaf_mode_match, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load i8*, i8** %10, align 8
  %114 = load i64*, i64** @g_dsaf_mode_match, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @strcmp(i8* %113, i64 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %112
  br label %126

122:                                              ; preds = %112, %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %101

126:                                              ; preds = %121, %101
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @DSAF_MODE_MAX, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @DSAF_MODE_INVALID, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @DSAF_MODE_ENABLE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134, %130, %126
  %139 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %140 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %139, i32 0, i32 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %143 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %142, i32 0, i32 15
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %466

149:                                              ; preds = %134
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %152 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %154 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @DSAF_MODE_ENABLE, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i32, i32* @HRD_DSAF_NO_DSAF_MODE, align 4
  %160 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %161 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %160, i32 0, i32 14
  store i32 %159, i32* %161, align 4
  br label %166

162:                                              ; preds = %149
  %163 = load i32, i32* @HRD_DSAF_MODE, align 4
  %164 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %165 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %164, i32 0, i32 14
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @DSAF_MODE_ENABLE_16VM, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %178, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @DSAF_MODE_DISABLE_2PORT_8VM, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @DSAF_MODE_DISABLE_6PORT_2VM, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %174, %170, %166
  %179 = load i32, i32* @HRD_DSAF_8TC_MODE, align 4
  %180 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %181 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %180, i32 0, i32 13
  store i32 %179, i32* %181, align 8
  br label %186

182:                                              ; preds = %174
  %183 = load i32, i32* @HRD_DSAF_4TC_MODE, align 4
  %184 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %185 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %184, i32 0, i32 13
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %182, %178
  %187 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %188 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %187, i32 0, i32 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = call i64 @dev_of_node(%struct.TYPE_11__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %272

192:                                              ; preds = %186
  %193 = load %struct.device_node*, %struct.device_node** %13, align 8
  %194 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.device_node* %194, %struct.device_node** %14, align 8
  %195 = load %struct.device_node*, %struct.device_node** %14, align 8
  %196 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %195)
  store %struct.regmap* %196, %struct.regmap** %11, align 8
  %197 = load %struct.device_node*, %struct.device_node** %14, align 8
  %198 = call i32 @of_node_put(%struct.device_node* %197)
  %199 = load %struct.regmap*, %struct.regmap** %11, align 8
  %200 = call i64 @IS_ERR_OR_NULL(%struct.regmap* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %267

202:                                              ; preds = %192
  %203 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %204 = load i32, i32* @IORESOURCE_MEM, align 4
  %205 = load i8*, i8** %9, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %9, align 8
  %207 = call %struct.resource* @platform_get_resource(%struct.platform_device* %203, i32 %204, i8* %205)
  store %struct.resource* %207, %struct.resource** %12, align 8
  %208 = load %struct.resource*, %struct.resource** %12, align 8
  %209 = icmp ne %struct.resource* %208, null
  br i1 %209, label %217, label %210

210:                                              ; preds = %202
  %211 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %212 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %211, i32 0, i32 1
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %213, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %2, align 4
  br label %466

217:                                              ; preds = %202
  %218 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = load %struct.resource*, %struct.resource** %12, align 8
  %221 = call i8* @devm_ioremap_resource(i32* %219, %struct.resource* %220)
  %222 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %223 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %222, i32 0, i32 12
  store i8* %221, i8** %223, align 8
  %224 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %225 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %224, i32 0, i32 12
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @IS_ERR(i8* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %217
  %230 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %231 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %230, i32 0, i32 12
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @PTR_ERR(i8* %232)
  store i32 %233, i32* %2, align 4
  br label %466

234:                                              ; preds = %217
  %235 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %236 = load i32, i32* @IORESOURCE_MEM, align 4
  %237 = load i8*, i8** %9, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %9, align 8
  %239 = call %struct.resource* @platform_get_resource(%struct.platform_device* %235, i32 %236, i8* %237)
  store %struct.resource* %239, %struct.resource** %12, align 8
  %240 = load %struct.resource*, %struct.resource** %12, align 8
  %241 = icmp ne %struct.resource* %240, null
  br i1 %241, label %249, label %242

242:                                              ; preds = %234
  %243 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %244 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %243, i32 0, i32 1
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %245, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %2, align 4
  br label %466

249:                                              ; preds = %234
  %250 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = load %struct.resource*, %struct.resource** %12, align 8
  %253 = call i8* @devm_ioremap_resource(i32* %251, %struct.resource* %252)
  %254 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %255 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %254, i32 0, i32 11
  store i8* %253, i8** %255, align 8
  %256 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %257 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %256, i32 0, i32 11
  %258 = load i8*, i8** %257, align 8
  %259 = call i64 @IS_ERR(i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %249
  %262 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %263 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %262, i32 0, i32 11
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @PTR_ERR(i8* %264)
  store i32 %265, i32* %2, align 4
  br label %466

266:                                              ; preds = %249
  br label %271

267:                                              ; preds = %192
  %268 = load %struct.regmap*, %struct.regmap** %11, align 8
  %269 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %270 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %269, i32 0, i32 10
  store %struct.regmap* %268, %struct.regmap** %270, align 8
  br label %271

271:                                              ; preds = %267, %266
  br label %272

272:                                              ; preds = %271, %186
  %273 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %274 = load i32, i32* @IORESOURCE_MEM, align 4
  %275 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %273, i32 %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store %struct.resource* %275, %struct.resource** %12, align 8
  %276 = load %struct.resource*, %struct.resource** %12, align 8
  %277 = icmp ne %struct.resource* %276, null
  br i1 %277, label %294, label %278

278:                                              ; preds = %272
  %279 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %280 = load i32, i32* @IORESOURCE_MEM, align 4
  %281 = load i8*, i8** %9, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %9, align 8
  %283 = call %struct.resource* @platform_get_resource(%struct.platform_device* %279, i32 %280, i8* %281)
  store %struct.resource* %283, %struct.resource** %12, align 8
  %284 = load %struct.resource*, %struct.resource** %12, align 8
  %285 = icmp ne %struct.resource* %284, null
  br i1 %285, label %293, label %286

286:                                              ; preds = %278
  %287 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %288 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %287, i32 0, i32 1
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %288, align 8
  %290 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %289, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %291 = load i32, i32* @ENOMEM, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %2, align 4
  br label %466

293:                                              ; preds = %278
  br label %294

294:                                              ; preds = %293, %272
  %295 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %296 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %295, i32 0, i32 0
  %297 = load %struct.resource*, %struct.resource** %12, align 8
  %298 = call i8* @devm_ioremap_resource(i32* %296, %struct.resource* %297)
  %299 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %300 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %299, i32 0, i32 9
  store i8* %298, i8** %300, align 8
  %301 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %302 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %301, i32 0, i32 9
  %303 = load i8*, i8** %302, align 8
  %304 = call i64 @IS_ERR(i8* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %294
  %307 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %308 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %307, i32 0, i32 9
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @PTR_ERR(i8* %309)
  store i32 %310, i32* %2, align 4
  br label %466

311:                                              ; preds = %294
  %312 = load %struct.resource*, %struct.resource** %12, align 8
  %313 = getelementptr inbounds %struct.resource, %struct.resource* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %316 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %315, i32 0, i32 8
  store i32 %314, i32* %316, align 8
  %317 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %318 = call i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %359, label %320

320:                                              ; preds = %311
  %321 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %322 = load i32, i32* @IORESOURCE_MEM, align 4
  %323 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %321, i32 %322, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store %struct.resource* %323, %struct.resource** %12, align 8
  %324 = load %struct.resource*, %struct.resource** %12, align 8
  %325 = icmp ne %struct.resource* %324, null
  br i1 %325, label %341, label %326

326:                                              ; preds = %320
  %327 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %328 = load i32, i32* @IORESOURCE_MEM, align 4
  %329 = load i8*, i8** %9, align 8
  %330 = call %struct.resource* @platform_get_resource(%struct.platform_device* %327, i32 %328, i8* %329)
  store %struct.resource* %330, %struct.resource** %12, align 8
  %331 = load %struct.resource*, %struct.resource** %12, align 8
  %332 = icmp ne %struct.resource* %331, null
  br i1 %332, label %340, label %333

333:                                              ; preds = %326
  %334 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %335 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %334, i32 0, i32 1
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %335, align 8
  %337 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %336, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %338 = load i32, i32* @ENOMEM, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %2, align 4
  br label %466

340:                                              ; preds = %326
  br label %341

341:                                              ; preds = %340, %320
  %342 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %343 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %342, i32 0, i32 0
  %344 = load %struct.resource*, %struct.resource** %12, align 8
  %345 = call i8* @devm_ioremap_resource(i32* %343, %struct.resource* %344)
  %346 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %347 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %346, i32 0, i32 7
  store i8* %345, i8** %347, align 8
  %348 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %349 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %348, i32 0, i32 7
  %350 = load i8*, i8** %349, align 8
  %351 = call i64 @IS_ERR(i8* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %341
  %354 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %355 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %354, i32 0, i32 7
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @PTR_ERR(i8* %356)
  store i32 %357, i32* %2, align 4
  br label %466

358:                                              ; preds = %341
  br label %359

359:                                              ; preds = %358, %311
  %360 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %361 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %360, i32 0, i32 1
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %361, align 8
  %363 = call i32 @device_property_read_u32(%struct.TYPE_11__* %362, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %6)
  store i32 %363, i32* %4, align 4
  %364 = load i32, i32* %4, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %374, label %366

366:                                              ; preds = %359
  %367 = load i8*, i8** %6, align 8
  %368 = load i8*, i8** @HNS_DSAF_MIN_DESC_CNT, align 8
  %369 = icmp ult i8* %367, %368
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = load i8*, i8** %6, align 8
  %372 = load i8*, i8** @HNS_DSAF_MAX_DESC_CNT, align 8
  %373 = icmp ugt i8* %371, %372
  br i1 %373, label %374, label %383

374:                                              ; preds = %370, %366, %359
  %375 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %376 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %375, i32 0, i32 1
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** %376, align 8
  %378 = load i8*, i8** %6, align 8
  %379 = load i32, i32* %4, align 4
  %380 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %377, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %378, i32 %379)
  %381 = load i32, i32* @EINVAL, align 4
  %382 = sub nsw i32 0, %381
  store i32 %382, i32* %2, align 4
  br label %466

383:                                              ; preds = %370
  %384 = load i8*, i8** %6, align 8
  %385 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %386 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %385, i32 0, i32 6
  store i8* %384, i8** %386, align 8
  %387 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %388 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %387, i32 0, i32 1
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %388, align 8
  %390 = call i32 @device_property_read_u32(%struct.TYPE_11__* %389, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** %8)
  store i32 %390, i32* %4, align 4
  %391 = load i32, i32* %4, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %383
  %394 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %395 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %394, i32 0, i32 1
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %395, align 8
  %397 = load i32, i32* %4, align 4
  %398 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %396, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %397)
  br label %399

399:                                              ; preds = %393, %383
  %400 = load i8*, i8** %8, align 8
  %401 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %402 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %401, i32 0, i32 5
  store i8* %400, i8** %402, align 8
  %403 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %404 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %403, i32 0, i32 1
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %404, align 8
  %406 = call i32 @device_property_read_u32(%struct.TYPE_11__* %405, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %7)
  store i32 %406, i32* %4, align 4
  %407 = load i32, i32* %4, align 4
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %399
  %410 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %411 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %410, i32 0, i32 1
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %411, align 8
  %413 = load i32, i32* %4, align 4
  %414 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %412, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %413)
  %415 = load i32, i32* %4, align 4
  store i32 %415, i32* %2, align 4
  br label %466

416:                                              ; preds = %399
  %417 = load i8*, i8** %7, align 8
  %418 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %419 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %418, i32 0, i32 4
  store i8* %417, i8** %419, align 8
  %420 = load i8*, i8** %7, align 8
  %421 = call i32 @hns_rcb_buf_size2type(i8* %420)
  %422 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %423 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %422, i32 0, i32 3
  store i32 %421, i32* %423, align 4
  %424 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %425 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = icmp slt i32 %426, 0
  br i1 %427, label %428, label %436

428:                                              ; preds = %416
  %429 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %430 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %429, i32 0, i32 1
  %431 = load %struct.TYPE_11__*, %struct.TYPE_11__** %430, align 8
  %432 = load i8*, i8** %7, align 8
  %433 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %431, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* %432)
  %434 = load i32, i32* @EINVAL, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %2, align 4
  br label %466

436:                                              ; preds = %416
  %437 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %438 = call i32 @hns_misc_op_get(%struct.dsaf_device* %437)
  %439 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %440 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %439, i32 0, i32 2
  store i32 %438, i32* %440, align 8
  %441 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %442 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %436
  %446 = load i32, i32* @ENOMEM, align 4
  %447 = sub nsw i32 0, %446
  store i32 %447, i32* %2, align 4
  br label %466

448:                                              ; preds = %436
  %449 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %450 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %449, i32 0, i32 1
  %451 = load %struct.TYPE_11__*, %struct.TYPE_11__** %450, align 8
  %452 = call i32 @DMA_BIT_MASK(i64 64)
  %453 = call i32 @dma_set_mask_and_coherent(%struct.TYPE_11__* %451, i32 %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %448
  %456 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %457 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %456, i32 0, i32 1
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %457, align 8
  %459 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_dbg(%struct.TYPE_11__* %458, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  br label %465

460:                                              ; preds = %448
  %461 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %462 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %461, i32 0, i32 1
  %463 = load %struct.TYPE_11__*, %struct.TYPE_11__** %462, align 8
  %464 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %463, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  br label %465

465:                                              ; preds = %460, %455
  store i32 0, i32* %2, align 4
  br label %466

466:                                              ; preds = %465, %445, %428, %409, %374, %353, %333, %306, %286, %261, %242, %229, %210, %138, %93, %78, %73
  %467 = load i32, i32* %2, align 4
  ret i32 %467
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.TYPE_11__*) #1

declare dso_local i64 @dev_of_node(%struct.TYPE_11__*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @is_acpi_node(i32) #1

declare dso_local i64 @acpi_dev_found(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @device_property_read_string(%struct.TYPE_11__*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.regmap*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_11__*, i8*, i8**) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @hns_rcb_buf_size2type(i8*) #1

declare dso_local i32 @hns_misc_op_get(%struct.dsaf_device*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
