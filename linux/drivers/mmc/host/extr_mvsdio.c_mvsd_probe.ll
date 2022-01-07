; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mvsdio.c_mvsd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mvsdio.c_mvsd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32* }
%struct.mvsd_host = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.mmc_host* }
%struct.mbus_dram_target_info = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"no DT node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no clock associated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mvsd_ops = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MVSD_BASE_DIV_MAX = common dso_local global i32 0, align 4
@MVSD_CLOCKRATE_MAX = common dso_local global i64 0, align 8
@maxfreq = common dso_local global i64 0, align 8
@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@mvsd_irq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot assign irq %d\0A\00", align 1
@mvsd_timeout_timer = common dso_local global i32 0, align 4
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"using GPIO for card detection\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"lacking card detect (fall back to polling)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvsd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.mvsd_host*, align 8
  %7 = alloca %struct.mbus_dram_target_info*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  store %struct.mmc_host* null, %struct.mmc_host** %5, align 8
  store %struct.mvsd_host* null, %struct.mvsd_host** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %235

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %8, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @platform_get_irq(%struct.platform_device* %27, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.resource*, %struct.resource** %8, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %23
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %235

37:                                               ; preds = %31
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call %struct.mmc_host* @mmc_alloc_host(i32 40, %struct.TYPE_7__* %39)
  store %struct.mmc_host* %40, %struct.mmc_host** %5, align 8
  %41 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %42 = icmp ne %struct.mmc_host* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %216

46:                                               ; preds = %37
  %47 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %48 = call %struct.mvsd_host* @mmc_priv(%struct.mmc_host* %47)
  store %struct.mvsd_host* %48, %struct.mvsd_host** %6, align 8
  %49 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %50 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %51 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %50, i32 0, i32 6
  store %struct.mmc_host* %49, %struct.mmc_host** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %55 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %54, i32 0, i32 5
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @devm_clk_get(%struct.TYPE_7__* %57, i32* null)
  %59 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %60 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %62 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %46
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %216

72:                                               ; preds = %46
  %73 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %74 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_prepare_enable(i32 %75)
  %77 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %78 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 9
  store i32* @mvsd_ops, i32** %78, align 8
  %79 = load i32, i32* @MMC_VDD_32_33, align 4
  %80 = load i32, i32* @MMC_VDD_33_34, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %85 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MVSD_BASE_DIV_MAX, align 4
  %88 = call i32 @DIV_ROUND_UP(i32 %86, i32 %87)
  %89 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %90 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* @MVSD_CLOCKRATE_MAX, align 8
  %92 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %93 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %92, i32 0, i32 7
  store i64 %91, i64* %93, align 8
  %94 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %95 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %94, i32 0, i32 1
  store i32 2048, i32* %95, align 4
  %96 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %97 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %96, i32 0, i32 2
  store i32 65535, i32* %97, align 8
  %98 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %99 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  %100 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %101 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %104 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %108 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %110 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %113 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %111, %114
  %116 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %117 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %119 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @clk_get_rate(i32 %120)
  %122 = sdiv i32 %121, 2
  %123 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %124 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %126 = call i32 @mmc_of_parse(%struct.mmc_host* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %72
  br label %216

130:                                              ; preds = %72
  %131 = load i64, i64* @maxfreq, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i64, i64* @maxfreq, align 8
  %135 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %136 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %135, i32 0, i32 7
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i32, i32* @MMC_CAP_ERASE, align 4
  %139 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %140 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %144 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %143, i32 0, i32 4
  %145 = call i32 @spin_lock_init(i32* %144)
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load %struct.resource*, %struct.resource** %8, align 8
  %149 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %147, %struct.resource* %148)
  %150 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %151 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %153 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %137
  %158 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %159 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %9, align 4
  br label %216

162:                                              ; preds = %137
  %163 = call %struct.mbus_dram_target_info* (...) @mv_mbus_dram_info()
  store %struct.mbus_dram_target_info* %163, %struct.mbus_dram_target_info** %7, align 8
  %164 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %7, align 8
  %165 = icmp ne %struct.mbus_dram_target_info* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %168 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %7, align 8
  %169 = call i32 @mv_conf_mbus_windows(%struct.mvsd_host* %167, %struct.mbus_dram_target_info* %168)
  br label %170

170:                                              ; preds = %166, %162
  %171 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %172 = call i32 @mvsd_power_down(%struct.mvsd_host* %171)
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @mvsd_irq, align 4
  %177 = load i32, i32* @DRIVER_NAME, align 4
  %178 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %179 = call i32 @devm_request_irq(%struct.TYPE_7__* %174, i32 %175, i32 %176, i32 0, i32 %177, %struct.mvsd_host* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %170
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  br label %216

187:                                              ; preds = %170
  %188 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %189 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %188, i32 0, i32 2
  %190 = load i32, i32* @mvsd_timeout_timer, align 4
  %191 = call i32 @timer_setup(i32* %189, i32 %190, i32 0)
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %194 = call i32 @platform_set_drvdata(%struct.platform_device* %192, %struct.mmc_host* %193)
  %195 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %196 = call i32 @mmc_add_host(%struct.mmc_host* %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %187
  br label %216

200:                                              ; preds = %187
  %201 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %202 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %200
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = call i32 @dev_dbg(%struct.TYPE_7__* %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %215

211:                                              ; preds = %200
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = call i32 @dev_dbg(%struct.TYPE_7__* %213, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %215

215:                                              ; preds = %211, %207
  store i32 0, i32* %2, align 4
  br label %235

216:                                              ; preds = %199, %182, %157, %129, %66, %43
  %217 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %218 = icmp ne %struct.mmc_host* %217, null
  br i1 %218, label %219, label %233

219:                                              ; preds = %216
  %220 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %221 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @IS_ERR(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %219
  %226 = load %struct.mvsd_host*, %struct.mvsd_host** %6, align 8
  %227 = getelementptr inbounds %struct.mvsd_host, %struct.mvsd_host* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @clk_disable_unprepare(i32 %228)
  br label %230

230:                                              ; preds = %225, %219
  %231 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %232 = call i32 @mmc_free_host(%struct.mmc_host* %231)
  br label %233

233:                                              ; preds = %230, %216
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %233, %215, %34, %17
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_7__*) #1

declare dso_local %struct.mvsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.mbus_dram_target_info* @mv_mbus_dram_info(...) #1

declare dso_local i32 @mv_conf_mbus_windows(%struct.mvsd_host*, %struct.mbus_dram_target_info*) #1

declare dso_local i32 @mvsd_power_down(%struct.mvsd_host*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_7__*, i32, i32, i32, i32, %struct.mvsd_host*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
