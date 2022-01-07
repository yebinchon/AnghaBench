; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_atmel-ebi.c_atmel_ebi_xslate_smc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_atmel-ebi.c_atmel_ebi_xslate_smc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ebi_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.atmel_ebi_dev_config = type { %struct.atmel_smc_cs_conf }
%struct.atmel_smc_cs_conf = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"atmel,smc-bus-width\00", align 1
@ATMEL_SMC_MODE_DBW_8 = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_DBW_16 = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_DBW_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"atmel,smc-tdf-optimized\00", align 1
@ATMEL_SMC_MODE_TDFMODE_OPTIMIZED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"atmel,smc-byte-access-type\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@ATMEL_SMC_MODE_BAT_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"atmel,smc-read-mode\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"nrd\00", align 1
@ATMEL_SMC_MODE_READMODE_NRD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"atmel,smc-write-mode\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nwe\00", align 1
@ATMEL_SMC_MODE_WRITEMODE_NWE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"atmel,smc-exnw-mode\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@ATMEL_SMC_MODE_EXNWMODE_FROZEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@ATMEL_SMC_MODE_EXNWMODE_READY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"atmel,smc-page-mode\00", align 1
@ATMEL_SMC_MODE_PS_4 = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_PS_8 = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_PS_16 = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_PS_32 = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_PMEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"missing atmel,smc- properties in %pOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_ebi_dev*, %struct.device_node*, %struct.atmel_ebi_dev_config*)* @atmel_ebi_xslate_smc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ebi_xslate_smc_config(%struct.atmel_ebi_dev* %0, %struct.device_node* %1, %struct.atmel_ebi_dev_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_ebi_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.atmel_ebi_dev_config*, align 8
  %8 = alloca %struct.atmel_smc_cs_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atmel_ebi_dev* %0, %struct.atmel_ebi_dev** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.atmel_ebi_dev_config* %2, %struct.atmel_ebi_dev_config** %7, align 8
  %13 = load %struct.atmel_ebi_dev_config*, %struct.atmel_ebi_dev_config** %7, align 8
  %14 = getelementptr inbounds %struct.atmel_ebi_dev_config, %struct.atmel_ebi_dev_config* %13, i32 0, i32 0
  store %struct.atmel_smc_cs_conf* %14, %struct.atmel_smc_cs_conf** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i32 @of_property_read_u32(%struct.device_node* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %39 [
    i32 8, label %21
    i32 16, label %27
    i32 32, label %33
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @ATMEL_SMC_MODE_DBW_8, align 4
  %23 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %24 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load i32, i32* @ATMEL_SMC_MODE_DBW_16, align 4
  %29 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %30 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %42

33:                                               ; preds = %19
  %34 = load i32, i32* @ATMEL_SMC_MODE_DBW_32, align 4
  %35 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %36 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %42

39:                                               ; preds = %19
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %208

42:                                               ; preds = %33, %27, %21
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  %45 = call i64 @of_property_read_bool(%struct.device_node* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @ATMEL_SMC_MODE_TDFMODE_OPTIMIZED, align 4
  %49 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %50 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %43
  store i8* null, i8** %10, align 8
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = call i32 @of_property_read_string(%struct.device_node* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ATMEL_SMC_MODE_BAT_WRITE, align 4
  %64 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %65 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %58, %53
  store i8* null, i8** %10, align 8
  %69 = load %struct.device_node*, %struct.device_node** %6, align 8
  %70 = call i32 @of_property_read_string(%struct.device_node* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %10)
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @ATMEL_SMC_MODE_READMODE_NRD, align 4
  %79 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %80 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %77, %73, %68
  store i8* null, i8** %10, align 8
  %84 = load %struct.device_node*, %struct.device_node** %6, align 8
  %85 = call i32 @of_property_read_string(%struct.device_node* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %10)
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @ATMEL_SMC_MODE_WRITEMODE_NWE, align 4
  %94 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %95 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  store i32 1, i32* %9, align 4
  br label %98

98:                                               ; preds = %92, %88, %83
  store i8* null, i8** %10, align 8
  %99 = load %struct.device_node*, %struct.device_node** %6, align 8
  %100 = call i32 @of_property_read_string(%struct.device_node* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %10)
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %133

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @ATMEL_SMC_MODE_EXNWMODE_FROZEN, align 4
  %109 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %110 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %132

113:                                              ; preds = %103
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @ATMEL_SMC_MODE_EXNWMODE_READY, align 4
  %119 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %120 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %131

123:                                              ; preds = %113
  %124 = load i8*, i8** %10, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %208

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %117
  br label %132

132:                                              ; preds = %131, %107
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %98
  %134 = load %struct.device_node*, %struct.device_node** %6, align 8
  %135 = call i32 @of_property_read_u32(%struct.device_node* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* %11)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %173, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  switch i32 %139, label %164 [
    i32 4, label %140
    i32 8, label %146
    i32 16, label %152
    i32 32, label %158
  ]

140:                                              ; preds = %138
  %141 = load i32, i32* @ATMEL_SMC_MODE_PS_4, align 4
  %142 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %143 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %167

146:                                              ; preds = %138
  %147 = load i32, i32* @ATMEL_SMC_MODE_PS_8, align 4
  %148 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %149 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %167

152:                                              ; preds = %138
  %153 = load i32, i32* @ATMEL_SMC_MODE_PS_16, align 4
  %154 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %155 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %167

158:                                              ; preds = %138
  %159 = load i32, i32* @ATMEL_SMC_MODE_PS_32, align 4
  %160 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %161 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %167

164:                                              ; preds = %138
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %208

167:                                              ; preds = %158, %152, %146, %140
  %168 = load i32, i32* @ATMEL_SMC_MODE_PMEN, align 4
  %169 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %170 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  store i32 1, i32* %9, align 4
  br label %173

173:                                              ; preds = %167, %133
  %174 = load %struct.atmel_ebi_dev*, %struct.atmel_ebi_dev** %5, align 8
  %175 = load %struct.device_node*, %struct.device_node** %6, align 8
  %176 = load %struct.atmel_ebi_dev_config*, %struct.atmel_ebi_dev_config** %7, align 8
  %177 = getelementptr inbounds %struct.atmel_ebi_dev_config, %struct.atmel_ebi_dev_config* %176, i32 0, i32 0
  %178 = call i32 @atmel_ebi_xslate_smc_timings(%struct.atmel_ebi_dev* %174, %struct.device_node* %175, %struct.atmel_smc_cs_conf* %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %208

184:                                              ; preds = %173
  %185 = load i32, i32* %12, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %187, %184
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %206, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %193, %187
  %197 = load %struct.atmel_ebi_dev*, %struct.atmel_ebi_dev** %5, align 8
  %198 = getelementptr inbounds %struct.atmel_ebi_dev, %struct.atmel_ebi_dev* %197, i32 0, i32 0
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.device_node*, %struct.device_node** %6, align 8
  %203 = call i32 @dev_err(i32 %201, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), %struct.device_node* %202)
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %208

206:                                              ; preds = %193, %190
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %196, %181, %164, %127, %39
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atmel_ebi_xslate_smc_timings(%struct.atmel_ebi_dev*, %struct.device_node*, %struct.atmel_smc_cs_conf*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
