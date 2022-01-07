; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.usdhi6_host = type { i32, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, %struct.mmc_host* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"card detect\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SDIO\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USDHI6_WAIT_FOR_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"state_uhs\00", align 1
@PINCTRL_STATE_DEFAULT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"UHS pinctrl requires a default pin state.\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@USDHI6_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Version not recognized %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"A USDHI6ROL0 SD host detected with %d ports\0A\00", align 1
@USDHI6_SD_PORT_SEL = common dso_local global i32 0, align 4
@USDHI6_SD_PORT_SEL_PORTS_SHIFT = common dso_local global i32 0, align 4
@usdhi6_cd = common dso_local global i32 0, align 4
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@usdhi6_sd = common dso_local global i32 0, align 4
@usdhi6_sd_bh = common dso_local global i32 0, align 4
@usdhi6_sdio = common dso_local global i32 0, align 4
@usdhi6_timeout_work = common dso_local global i32 0, align 4
@usdhi6_ops = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usdhi6_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.usdhi6_host*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %310

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @platform_get_irq_byname(%struct.platform_device* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %8, align 4
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i32 @platform_get_irq_byname(%struct.platform_device* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %9, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @platform_get_irq_byname(%struct.platform_device* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %22
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %310

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call %struct.mmc_host* @mmc_alloc_host(i32 72, %struct.device* %38)
  store %struct.mmc_host* %39, %struct.mmc_host** %5, align 8
  %40 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %41 = icmp ne %struct.mmc_host* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %310

45:                                               ; preds = %37
  %46 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %47 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %306

51:                                               ; preds = %45
  %52 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %53 = call i32 @mmc_of_parse(%struct.mmc_host* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %306

57:                                               ; preds = %51
  %58 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %59 = call %struct.usdhi6_host* @mmc_priv(%struct.mmc_host* %58)
  store %struct.usdhi6_host* %59, %struct.usdhi6_host** %6, align 8
  %60 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %61 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %62 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %61, i32 0, i32 9
  store %struct.mmc_host* %60, %struct.mmc_host** %62, align 8
  %63 = load i32, i32* @USDHI6_WAIT_FOR_REQUEST, align 4
  %64 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %65 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 4
  %66 = call i32 @msecs_to_jiffies(i32 4000)
  %67 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %68 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i8* @devm_pinctrl_get(%struct.device* %70)
  %72 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %73 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %75 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %57
  %80 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %81 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @PTR_ERR(i8* %82)
  store i32 %83, i32* %12, align 4
  br label %306

84:                                               ; preds = %57
  %85 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %86 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %85, i32 0, i32 5
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @pinctrl_lookup_state(i8* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %90 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %89, i32 0, i32 6
  store i8* %88, i8** %90, align 8
  %91 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %92 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %91, i32 0, i32 6
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @IS_ERR(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %84
  %97 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %98 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %97, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** @PINCTRL_STATE_DEFAULT, align 8
  %101 = call i8* @pinctrl_lookup_state(i8* %99, i8* %100)
  %102 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %103 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %105 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @IS_ERR(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %96
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %112 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %113 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %112, i32 0, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %12, align 4
  br label %306

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116, %84
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = load i32, i32* @IORESOURCE_MEM, align 4
  %120 = call %struct.resource* @platform_get_resource(%struct.platform_device* %118, i32 %119, i32 0)
  store %struct.resource* %120, %struct.resource** %7, align 8
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load %struct.resource*, %struct.resource** %7, align 8
  %123 = call i8* @devm_ioremap_resource(%struct.device* %121, %struct.resource* %122)
  %124 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %125 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %127 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %117
  %132 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %133 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @PTR_ERR(i8* %134)
  store i32 %135, i32* %12, align 4
  br label %306

136:                                              ; preds = %117
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = call i8* @devm_clk_get(%struct.device* %137, i32* null)
  %139 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %140 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %142 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @IS_ERR(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %148 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @PTR_ERR(i8* %149)
  store i32 %150, i32* %12, align 4
  br label %306

151:                                              ; preds = %136
  %152 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %153 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @clk_get_rate(i8* %154)
  %156 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %157 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %159 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @clk_prepare_enable(i8* %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %151
  br label %306

165:                                              ; preds = %151
  %166 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %167 = load i32, i32* @USDHI6_VERSION, align 4
  %168 = call i32 @usdhi6_read(%struct.usdhi6_host* %166, i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = and i32 %169, 4095
  %171 = icmp ne i32 %170, 2573
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = load i32, i32* %11, align 4
  %175 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %173, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  br label %301

176:                                              ; preds = %165
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %179 = load i32, i32* @USDHI6_SD_PORT_SEL, align 4
  %180 = call i32 @usdhi6_read(%struct.usdhi6_host* %178, i32 %179)
  %181 = load i32, i32* @USDHI6_SD_PORT_SEL_PORTS_SHIFT, align 4
  %182 = ashr i32 %180, %181
  %183 = call i32 @dev_info(%struct.device* %177, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %185 = call i32 @usdhi6_mask_all(%struct.usdhi6_host* %184)
  %186 = load i32, i32* %8, align 4
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %176
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @usdhi6_cd, align 4
  %192 = load %struct.device*, %struct.device** %4, align 8
  %193 = call i32 @dev_name(%struct.device* %192)
  %194 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %195 = call i32 @devm_request_irq(%struct.device* %189, i32 %190, i32 %191, i32 0, i32 %193, %struct.usdhi6_host* %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  br label %301

199:                                              ; preds = %188
  br label %206

200:                                              ; preds = %176
  %201 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %202 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %203 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %200, %199
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @usdhi6_sd, align 4
  %210 = load i32, i32* @usdhi6_sd_bh, align 4
  %211 = load %struct.device*, %struct.device** %4, align 8
  %212 = call i32 @dev_name(%struct.device* %211)
  %213 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %214 = call i32 @devm_request_threaded_irq(%struct.device* %207, i32 %208, i32 %209, i32 %210, i32 0, i32 %212, %struct.usdhi6_host* %213)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  br label %301

218:                                              ; preds = %206
  %219 = load %struct.device*, %struct.device** %4, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @usdhi6_sdio, align 4
  %222 = load %struct.device*, %struct.device** %4, align 8
  %223 = call i32 @dev_name(%struct.device* %222)
  %224 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %225 = call i32 @devm_request_irq(%struct.device* %219, i32 %220, i32 %221, i32 0, i32 %223, %struct.usdhi6_host* %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %301

229:                                              ; preds = %218
  %230 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %231 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %230, i32 0, i32 2
  %232 = load i32, i32* @usdhi6_timeout_work, align 4
  %233 = call i32 @INIT_DELAYED_WORK(i32* %231, i32 %232)
  %234 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %235 = load %struct.resource*, %struct.resource** %7, align 8
  %236 = getelementptr inbounds %struct.resource, %struct.resource* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @usdhi6_dma_request(%struct.usdhi6_host* %234, i32 %237)
  %239 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %240 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %239, i32 0, i32 8
  store i32* @usdhi6_ops, i32** %240, align 8
  %241 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %242 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %247 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %251 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %250, i32 0, i32 1
  store i32 32, i32* %251, align 4
  %252 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %253 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %252, i32 0, i32 2
  store i32 512, i32* %253, align 8
  %254 = load i32, i32* @PAGE_SIZE, align 4
  %255 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %256 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %254, %257
  %259 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %260 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  %261 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %262 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %265 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = sdiv i32 %263, %266
  %268 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %269 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 8
  %270 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %271 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %274 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %273, i32 0, i32 5
  store i32 %272, i32* %274, align 4
  %275 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %276 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %229
  %280 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %281 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %284 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %283, i32 0, i32 6
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %279, %229
  %286 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %287 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sdiv i32 %288, 512
  %290 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %291 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %290, i32 0, i32 7
  store i32 %289, i32* %291, align 4
  %292 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %293 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %294 = call i32 @platform_set_drvdata(%struct.platform_device* %292, %struct.usdhi6_host* %293)
  %295 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %296 = call i32 @mmc_add_host(%struct.mmc_host* %295)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %285
  br label %301

300:                                              ; preds = %285
  store i32 0, i32* %2, align 4
  br label %310

301:                                              ; preds = %299, %228, %217, %198, %172
  %302 = load %struct.usdhi6_host*, %struct.usdhi6_host** %6, align 8
  %303 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @clk_disable_unprepare(i8* %304)
  br label %306

306:                                              ; preds = %301, %164, %146, %131, %109, %79, %56, %50
  %307 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %308 = call i32 @mmc_free_host(%struct.mmc_host* %307)
  %309 = load i32, i32* %12, align 4
  store i32 %309, i32* %2, align 4
  br label %310

310:                                              ; preds = %306, %300, %42, %34, %19
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.device*) #1

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local %struct.usdhi6_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i8* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @pinctrl_lookup_state(i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @usdhi6_read(%struct.usdhi6_host*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @usdhi6_mask_all(%struct.usdhi6_host*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.usdhi6_host*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.usdhi6_host*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @usdhi6_dma_request(%struct.usdhi6_host*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usdhi6_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
