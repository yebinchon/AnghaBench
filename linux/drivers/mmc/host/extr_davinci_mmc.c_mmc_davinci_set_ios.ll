; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32, i32, i32 }
%struct.mmc_davinci_host = type { i32, i64, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.davinci_mmc_config* }
%struct.davinci_mmc_config = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [45 x i8] c"clock %dHz busmode %d powermode %d Vdd %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Enabling 8 bit mode\0A\00", align 1
@DAVINCI_MMCCTL = common dso_local global i64 0, align 8
@MMCCTL_WIDTH_4_BIT = common dso_local global i32 0, align 4
@MMCCTL_WIDTH_8_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Enabling 4 bit mode\0A\00", align 1
@MMC_CTLR_VERSION_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Enabling 1 bit mode\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DAVINCI_MMCARGHL = common dso_local global i64 0, align 8
@MMCCMD_INITCK = common dso_local global i32 0, align 4
@DAVINCI_MMCCMD = common dso_local global i64 0, align 8
@DAVINCI_MMCST0 = common dso_local global i64 0, align 8
@MMCST0_RSPDNE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"powerup timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mmc_davinci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_davinci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mmc_davinci_host*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.davinci_mmc_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host* %11)
  store %struct.mmc_davinci_host* %12, %struct.mmc_davinci_host** %5, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.platform_device* @to_platform_device(i32 %15)
  store %struct.platform_device* %16, %struct.platform_device** %6, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %19, align 8
  store %struct.davinci_mmc_config* %20, %struct.davinci_mmc_config** %7, align 8
  %21 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mmc_dev(i32 %23)
  %25 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %75 [
    i32 129, label %41
    i32 128, label %58
  ]

41:                                               ; preds = %2
  %42 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %7, align 8
  %43 = icmp ne %struct.davinci_mmc_config* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %7, align 8
  %46 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %45, i32 0, i32 0
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = icmp ne i32 (i32, i32)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %7, align 8
  %51 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %50, i32 0, i32 0
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %52(i32 %55, i32 0)
  br label %57

57:                                               ; preds = %49, %44, %41
  br label %75

58:                                               ; preds = %2
  %59 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %7, align 8
  %60 = icmp ne %struct.davinci_mmc_config* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %7, align 8
  %63 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %62, i32 0, i32 0
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = icmp ne i32 (i32, i32)* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %7, align 8
  %68 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %67, i32 0, i32 0
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %69(i32 %72, i32 1)
  br label %74

74:                                               ; preds = %66, %61, %58
  br label %75

75:                                               ; preds = %2, %74, %57
  %76 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %77 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %193 [
    i32 130, label %79
    i32 131, label %102
    i32 132, label %147
  ]

79:                                               ; preds = %75
  %80 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %81 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @mmc_dev(i32 %82)
  %84 = call i32 (i32, i8*, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %86 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  %91 = load i32, i32* @MMCCTL_WIDTH_4_BIT, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load i32, i32* @MMCCTL_WIDTH_8_BIT, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %97 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  br label %193

102:                                              ; preds = %75
  %103 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %104 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @mmc_dev(i32 %105)
  %107 = call i32 (i32, i8*, ...) @dev_dbg(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %109 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MMC_CTLR_VERSION_2, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %102
  %114 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %115 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readl(i64 %118)
  %120 = load i32, i32* @MMCCTL_WIDTH_8_BIT, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = load i32, i32* @MMCCTL_WIDTH_4_BIT, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %126 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 %124, i64 %129)
  br label %146

131:                                              ; preds = %102
  %132 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %133 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @readl(i64 %136)
  %138 = load i32, i32* @MMCCTL_WIDTH_4_BIT, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %141 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  br label %146

146:                                              ; preds = %131, %113
  br label %193

147:                                              ; preds = %75
  %148 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %149 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @mmc_dev(i32 %150)
  %152 = call i32 (i32, i8*, ...) @dev_dbg(i32 %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %153 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %154 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MMC_CTLR_VERSION_2, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %176

158:                                              ; preds = %147
  %159 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %160 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @readl(i64 %163)
  %165 = load i32, i32* @MMCCTL_WIDTH_8_BIT, align 4
  %166 = load i32, i32* @MMCCTL_WIDTH_4_BIT, align 4
  %167 = or i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = and i32 %164, %168
  %170 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %171 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i32 %169, i64 %174)
  br label %192

176:                                              ; preds = %147
  %177 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %178 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @readl(i64 %181)
  %183 = load i32, i32* @MMCCTL_WIDTH_4_BIT, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %182, %184
  %186 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %187 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @DAVINCI_MMCCTL, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @writel(i32 %185, i64 %190)
  br label %192

192:                                              ; preds = %176, %158
  br label %193

193:                                              ; preds = %75, %192, %146, %79
  %194 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %195 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %196 = call i32 @calculate_clk_divider(%struct.mmc_host* %194, %struct.mmc_ios* %195)
  %197 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %198 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %201 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %203 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 128
  br i1 %205, label %206, label %252

206:                                              ; preds = %193
  %207 = load i64, i64* @jiffies, align 8
  %208 = call i64 @msecs_to_jiffies(i32 50)
  %209 = add i64 %207, %208
  store i64 %209, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %210 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %211 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @DAVINCI_MMCARGHL, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i32 0, i64 %214)
  %216 = load i32, i32* @MMCCMD_INITCK, align 4
  %217 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %218 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @DAVINCI_MMCCMD, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @writel(i32 %216, i64 %221)
  br label %223

223:                                              ; preds = %240, %206
  %224 = load i64, i64* @jiffies, align 8
  %225 = load i64, i64* %8, align 8
  %226 = call i64 @time_before(i64 %224, i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %223
  %229 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %230 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @DAVINCI_MMCST0, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @readl(i64 %233)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @MMCST0_RSPDNE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %228
  store i32 0, i32* %9, align 4
  br label %242

240:                                              ; preds = %228
  %241 = call i32 (...) @cpu_relax()
  br label %223

242:                                              ; preds = %239, %223
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %247 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @mmc_dev(i32 %248)
  %250 = call i32 @dev_warn(i32 %249, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %251

251:                                              ; preds = %245, %242
  br label %252

252:                                              ; preds = %251, %193
  ret void
}

declare dso_local %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @calculate_clk_divider(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
