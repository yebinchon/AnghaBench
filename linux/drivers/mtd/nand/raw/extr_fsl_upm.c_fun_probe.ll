; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fsl_upm_nand = type { i32, i32*, i32, i32, i32, %struct.TYPE_5__*, i32, i32*, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"can't get IO base\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"can't find UPM\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fsl,upm-addr-offset\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"can't get UPM address offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"fsl,upm-cmd-offset\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"can't get UPM command offset\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"fsl,upm-addr-line-cs-offsets\00", align 1
@NAND_MAX_CHIPS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"too much multiple chips\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"can't request RNB gpio #%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"RNB gpio #%d is invalid\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"chip-delay\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"fsl,upm-wait-flags\00", align 1
@FSL_UPM_WAIT_RUN_PATTERN = common dso_local global i32 0, align 4
@FSL_UPM_WAIT_WRITE_BYTE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fun_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fun_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsl_upm_nand*, align 8
  %5 = alloca %struct.resource, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fsl_upm_nand* @kzalloc(i32 72, i32 %11)
  store %struct.fsl_upm_nand* %12, %struct.fsl_upm_nand** %4, align 8
  %13 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %14 = icmp ne %struct.fsl_upm_nand* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %315

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @of_address_to_resource(i32 %22, i32 0, %struct.resource* %5)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %311

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %34 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %33, i32 0, i32 10
  %35 = call i32 @fsl_upm_find(i32 %32, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %311

42:                                               ; preds = %30
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @of_get_property(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 4
  br i1 %53, label %54, label %60

54:                                               ; preds = %50, %42
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %311

60:                                               ; preds = %50
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %64 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 4
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @of_get_property(i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 4
  br i1 %75, label %76, label %82

76:                                               ; preds = %72, %60
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %311

82:                                               ; preds = %72
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %86 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32* @of_get_property(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %139

94:                                               ; preds = %82
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = udiv i64 %96, 4
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %139

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %105 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %107 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @NAND_MAX_CHIPS, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %311

115:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %135, %115
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %119 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @be32_to_cpu(i32 %127)
  %129 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %130 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %116

138:                                              ; preds = %116
  br label %142

139:                                              ; preds = %94, %82
  %140 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %141 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %138
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %199, %142
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %146 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %202

149:                                              ; preds = %143
  %150 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %151 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 -1, i32* %155, align 4
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @of_get_gpio(i32 %159, i32 %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %149
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @dev_name(%struct.TYPE_5__* %167)
  %169 = call i32 @gpio_request(i32 %165, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load i32, i32* %10, align 4
  %176 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %175)
  br label %281

177:                                              ; preds = %164
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @gpio_direction_input(i32 %178)
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %182 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %180, i32* %186, align 4
  br label %198

187:                                              ; preds = %149
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load i32, i32* %10, align 4
  %196 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %195)
  br label %281

197:                                              ; preds = %187
  br label %198

198:                                              ; preds = %197, %177
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %143

202:                                              ; preds = %143
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32* @of_get_property(i32 %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* null)
  store i32* %207, i32** %6, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %202
  %211 = load i32*, i32** %6, align 8
  %212 = call i8* @be32_to_cpup(i32* %211)
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %215 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  br label %219

216:                                              ; preds = %202
  %217 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %218 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %217, i32 0, i32 2
  store i32 50, i32* %218, align 8
  br label %219

219:                                              ; preds = %216, %210
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32* @of_get_property(i32 %223, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32* %9)
  store i32* %224, i32** %6, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %237

227:                                              ; preds = %219
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp eq i64 %229, 4
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = load i32*, i32** %6, align 8
  %233 = call i8* @be32_to_cpup(i32* %232)
  %234 = ptrtoint i8* %233 to i32
  %235 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %236 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  br label %243

237:                                              ; preds = %227, %219
  %238 = load i32, i32* @FSL_UPM_WAIT_RUN_PATTERN, align 4
  %239 = load i32, i32* @FSL_UPM_WAIT_WRITE_BYTE, align 4
  %240 = or i32 %238, %239
  %241 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %242 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %241, i32 0, i32 3
  store i32 %240, i32* %242, align 4
  br label %243

243:                                              ; preds = %237, %231
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @resource_size(%struct.resource* %5)
  %249 = call i32 @devm_ioremap_nocache(%struct.TYPE_5__* %245, i32 %247, i32 %248)
  %250 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %251 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %250, i32 0, i32 6
  store i32 %249, i32* %251, align 8
  %252 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %253 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %243
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %8, align 4
  br label %281

259:                                              ; preds = %243
  %260 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %261 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %260, i32 0, i32 0
  %262 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %263 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %262, i32 0, i32 5
  store %struct.TYPE_5__* %261, %struct.TYPE_5__** %263, align 8
  %264 = load i32, i32* @NAND_CLE, align 4
  %265 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %266 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %268 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %269 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @fun_chip_init(%struct.fsl_upm_nand* %267, i32 %271, %struct.resource* %5)
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %259
  br label %281

276:                                              ; preds = %259
  %277 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %278 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %277, i32 0, i32 0
  %279 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %280 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %278, %struct.fsl_upm_nand* %279)
  store i32 0, i32* %2, align 4
  br label %315

281:                                              ; preds = %275, %256, %192, %172
  store i32 0, i32* %10, align 4
  br label %282

282:                                              ; preds = %307, %281
  %283 = load i32, i32* %10, align 4
  %284 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %285 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %310

288:                                              ; preds = %282
  %289 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %290 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %288
  br label %310

298:                                              ; preds = %288
  %299 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %300 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @gpio_free(i32 %305)
  br label %307

307:                                              ; preds = %298
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %10, align 4
  br label %282

310:                                              ; preds = %297, %282
  br label %311

311:                                              ; preds = %310, %111, %76, %54, %38, %26
  %312 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %313 = call i32 @kfree(%struct.fsl_upm_nand* %312)
  %314 = load i32, i32* %8, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %311, %276, %15
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local %struct.fsl_upm_nand* @kzalloc(i32, i32) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @fsl_upm_find(i32, i32*) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @of_get_gpio(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @devm_ioremap_nocache(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @fun_chip_init(%struct.fsl_upm_nand*, i32, %struct.resource*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.fsl_upm_nand*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.fsl_upm_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
