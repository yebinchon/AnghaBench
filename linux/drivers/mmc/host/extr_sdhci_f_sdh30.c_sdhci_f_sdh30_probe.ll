; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_f_sdh30.c_sdhci_f_sdh30_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_f_sdh30.c_sdhci_f_sdh30_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sdhci_host = type { i32, i32, i8*, i32, %struct.sdhci_host*, i32*, i32 }
%struct.resource = type { i32 }
%struct.f_sdhost_priv = type { %struct.sdhci_host*, %struct.sdhci_host*, i32, i32, %struct.device* }

@SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC = common dso_local global i32 0, align 4
@SDHCI_QUIRK_INVERTED_WRITE_PROTECT = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_SUPPORT_SINGLE = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_TUNING_WORK_AROUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fujitsu,cmd-dat-delay-select\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"f_sdh30\00", align 1
@sdhci_f_sdh30_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@F_SDH30_AHB_CONFIG = common dso_local global i32 0, align 4
@F_SDH30_SIN = common dso_local global i32 0, align 4
@F_SDH30_AHB_INCR_16 = common dso_local global i32 0, align 4
@F_SDH30_AHB_INCR_8 = common dso_local global i32 0, align 4
@F_SDH30_AHB_INCR_4 = common dso_local global i32 0, align 4
@F_SDH30_AHB_BIGED = common dso_local global i32 0, align 4
@F_SDH30_BUSLOCK_EN = common dso_local global i32 0, align 4
@F_SDH30_ESD_CONTROL = common dso_local global i32 0, align 4
@F_SDH30_EMMC_RST = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_8BIT = common dso_local global i32 0, align 4
@F_SDH30_EMMC_HS200 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_f_sdh30_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_f_sdh30_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.f_sdhost_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %215

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call %struct.sdhci_host* @sdhci_alloc_host(%struct.device* %21, i32 32)
  store %struct.sdhci_host* %22, %struct.sdhci_host** %4, align 8
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %24 = call i64 @IS_ERR(%struct.sdhci_host* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.sdhci_host* %27)
  store i32 %28, i32* %2, align 4
  br label %215

29:                                               ; preds = %20
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %31 = call %struct.f_sdhost_priv* @sdhci_priv(%struct.sdhci_host* %30)
  store %struct.f_sdhost_priv* %31, %struct.f_sdhost_priv** %10, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %34 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %33, i32 0, i32 4
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load i32, i32* @SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC, align 4
  %36 = load i32, i32* @SDHCI_QUIRK_INVERTED_WRITE_PROTECT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @SDHCI_QUIRK2_SUPPORT_SINGLE, align 4
  %41 = load i32, i32* @SDHCI_QUIRK2_TUNING_WORK_AROUND, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @device_property_read_bool(%struct.device* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %48 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %50 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mmc_of_parse(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %29
  br label %211

56:                                               ; preds = %29
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.sdhci_host* %58)
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %61 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %60, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 5
  store i32* @sdhci_f_sdh30_ops, i32** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %66 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = call %struct.resource* @platform_get_resource(%struct.platform_device* %67, i32 %68, i32 0)
  store %struct.resource* %69, %struct.resource** %6, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = call %struct.sdhci_host* @devm_ioremap_resource(%struct.device* %71, %struct.resource* %72)
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %75 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %74, i32 0, i32 4
  store %struct.sdhci_host* %73, %struct.sdhci_host** %75, align 8
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %77 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %76, i32 0, i32 4
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %77, align 8
  %79 = call i64 @IS_ERR(%struct.sdhci_host* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %56
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 4
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %83, align 8
  %85 = call i32 @PTR_ERR(%struct.sdhci_host* %84)
  store i32 %85, i32* %9, align 4
  br label %211

86:                                               ; preds = %56
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = call i64 @dev_of_node(%struct.device* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %143

90:                                               ; preds = %86
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = call i32 @sdhci_get_of_property(%struct.platform_device* %91)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i8* @devm_clk_get(%struct.device* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %96 = bitcast i8* %95 to %struct.sdhci_host*
  %97 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %98 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %97, i32 0, i32 0
  store %struct.sdhci_host* %96, %struct.sdhci_host** %98, align 8
  %99 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %100 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %99, i32 0, i32 0
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %100, align 8
  %102 = call i64 @IS_ERR(%struct.sdhci_host* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %90
  %105 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %106 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %105, i32 0, i32 0
  %107 = load %struct.sdhci_host*, %struct.sdhci_host** %106, align 8
  %108 = call i32 @PTR_ERR(%struct.sdhci_host* %107)
  store i32 %108, i32* %9, align 4
  br label %211

109:                                              ; preds = %90
  %110 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %111 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %110, i32 0, i32 0
  %112 = load %struct.sdhci_host*, %struct.sdhci_host** %111, align 8
  %113 = call i32 @clk_prepare_enable(%struct.sdhci_host* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %211

117:                                              ; preds = %109
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i8* @devm_clk_get(%struct.device* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %121 = bitcast i8* %120 to %struct.sdhci_host*
  %122 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %123 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %122, i32 0, i32 1
  store %struct.sdhci_host* %121, %struct.sdhci_host** %123, align 8
  %124 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %125 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %124, i32 0, i32 1
  %126 = load %struct.sdhci_host*, %struct.sdhci_host** %125, align 8
  %127 = call i64 @IS_ERR(%struct.sdhci_host* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %117
  %130 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %131 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %130, i32 0, i32 1
  %132 = load %struct.sdhci_host*, %struct.sdhci_host** %131, align 8
  %133 = call i32 @PTR_ERR(%struct.sdhci_host* %132)
  store i32 %133, i32* %9, align 4
  br label %206

134:                                              ; preds = %117
  %135 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %136 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %135, i32 0, i32 1
  %137 = load %struct.sdhci_host*, %struct.sdhci_host** %136, align 8
  %138 = call i32 @clk_prepare_enable(%struct.sdhci_host* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %206

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %86
  %144 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %145 = load i32, i32* @F_SDH30_AHB_CONFIG, align 4
  %146 = call i32 @sdhci_readw(%struct.sdhci_host* %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @F_SDH30_SIN, align 4
  %148 = load i32, i32* @F_SDH30_AHB_INCR_16, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @F_SDH30_AHB_INCR_8, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @F_SDH30_AHB_INCR_4, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* @F_SDH30_AHB_BIGED, align 4
  %157 = load i32, i32* @F_SDH30_BUSLOCK_EN, align 4
  %158 = or i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @F_SDH30_AHB_CONFIG, align 4
  %165 = call i32 @sdhci_writew(%struct.sdhci_host* %162, i32 %163, i32 %164)
  %166 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %167 = load i32, i32* @F_SDH30_ESD_CONTROL, align 4
  %168 = call i32 @sdhci_readl(%struct.sdhci_host* %166, i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @F_SDH30_EMMC_RST, align 4
  %172 = xor i32 %171, -1
  %173 = and i32 %170, %172
  %174 = load i32, i32* @F_SDH30_ESD_CONTROL, align 4
  %175 = call i32 @sdhci_writel(%struct.sdhci_host* %169, i32 %173, i32 %174)
  %176 = call i32 @msleep(i32 20)
  %177 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @F_SDH30_EMMC_RST, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @F_SDH30_ESD_CONTROL, align 4
  %182 = call i32 @sdhci_writel(%struct.sdhci_host* %177, i32 %180, i32 %181)
  %183 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %184 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %185 = call i32 @sdhci_readl(%struct.sdhci_host* %183, i32 %184)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @SDHCI_CAN_DO_8BIT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %143
  %191 = load i32, i32* @F_SDH30_EMMC_HS200, align 4
  %192 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %193 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  br label %194

194:                                              ; preds = %190, %143
  %195 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %196 = call i32 @sdhci_add_host(%struct.sdhci_host* %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %201

200:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %215

201:                                              ; preds = %199
  %202 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %203 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %202, i32 0, i32 1
  %204 = load %struct.sdhci_host*, %struct.sdhci_host** %203, align 8
  %205 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %204)
  br label %206

206:                                              ; preds = %201, %141, %129
  %207 = load %struct.f_sdhost_priv*, %struct.f_sdhost_priv** %10, align 8
  %208 = getelementptr inbounds %struct.f_sdhost_priv, %struct.f_sdhost_priv* %207, i32 0, i32 0
  %209 = load %struct.sdhci_host*, %struct.sdhci_host** %208, align 8
  %210 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %209)
  br label %211

211:                                              ; preds = %206, %116, %104, %81, %55
  %212 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %213 = call i32 @sdhci_free_host(%struct.sdhci_host* %212)
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %211, %200, %26, %18
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.sdhci_host* @sdhci_alloc_host(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.f_sdhost_priv* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sdhci_host*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.sdhci_host* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @dev_of_node(%struct.device*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_free_host(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
