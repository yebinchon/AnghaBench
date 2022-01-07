; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.meson_mx_mmc_host = type { %struct.platform_device*, %struct.platform_device*, %struct.platform_device*, i32*, %struct.platform_device*, i32, i32, %struct.mmc_host* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_mx_mmc_timeout = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@meson_mx_mmc_irq = common dso_local global i32 0, align 4
@meson_mx_mmc_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to enable core clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to enable MMC clock\0A\00", align 1
@MESON_MX_SDIO_CONF_CMD_ARGUMENT_BITS_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_CONF_M_ENDIAN_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_CONF_WRITE_NWR_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_CONF_WRITE_CRC_OK_STATUS_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_mx_mmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_mmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.meson_mx_mmc_host*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.platform_device* @meson_mx_mmc_slot_pdev(i32* %12)
  store %struct.platform_device* %13, %struct.platform_device** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = icmp ne %struct.platform_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %208

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = call i64 @IS_ERR(%struct.platform_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.platform_device* %24)
  store i32 %25, i32* %2, align 4
  br label %208

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call %struct.mmc_host* @mmc_alloc_host(i32 56, i32* %29)
  store %struct.mmc_host* %30, %struct.mmc_host** %5, align 8
  %31 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %32 = icmp ne %struct.mmc_host* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %203

36:                                               ; preds = %27
  %37 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %38 = call %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host* %37)
  store %struct.meson_mx_mmc_host* %38, %struct.meson_mx_mmc_host** %6, align 8
  %39 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %40 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %41 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %40, i32 0, i32 7
  store %struct.mmc_host* %39, %struct.mmc_host** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %45 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %47 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %46, i32 0, i32 6
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %50 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %49, i32 0, i32 5
  %51 = load i32, i32* @meson_mx_mmc_timeout, align 4
  %52 = call i32 @timer_setup(i32* %50, i32 %51, i32 0)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %55 = call i32 @platform_set_drvdata(%struct.platform_device* %53, %struct.meson_mx_mmc_host* %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 0)
  store %struct.resource* %58, %struct.resource** %7, align 8
  %59 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %60 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = call %struct.platform_device* @devm_ioremap_resource(i32* %61, %struct.resource* %62)
  %64 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %65 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %64, i32 0, i32 2
  store %struct.platform_device* %63, %struct.platform_device** %65, align 8
  %66 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %67 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %66, i32 0, i32 2
  %68 = load %struct.platform_device*, %struct.platform_device** %67, align 8
  %69 = call i64 @IS_ERR(%struct.platform_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %36
  %72 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %73 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %72, i32 0, i32 2
  %74 = load %struct.platform_device*, %struct.platform_device** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.platform_device* %74)
  store i32 %75, i32* %8, align 4
  br label %200

76:                                               ; preds = %36
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = call i32 @platform_get_irq(%struct.platform_device* %77, i32 0)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %80 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @meson_mx_mmc_irq, align 4
  %84 = load i32, i32* @meson_mx_mmc_irq_thread, align 4
  %85 = load i32, i32* @IRQF_ONESHOT, align 4
  %86 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %87 = call i32 @devm_request_threaded_irq(i32* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32* null, %struct.meson_mx_mmc_host* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %200

91:                                               ; preds = %76
  %92 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %93 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i8* @devm_clk_get(i32* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %96 = bitcast i8* %95 to %struct.platform_device*
  %97 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %98 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %97, i32 0, i32 0
  store %struct.platform_device* %96, %struct.platform_device** %98, align 8
  %99 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %100 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %99, i32 0, i32 0
  %101 = load %struct.platform_device*, %struct.platform_device** %100, align 8
  %102 = call i64 @IS_ERR(%struct.platform_device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %106 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %105, i32 0, i32 0
  %107 = load %struct.platform_device*, %struct.platform_device** %106, align 8
  %108 = call i32 @PTR_ERR(%struct.platform_device* %107)
  store i32 %108, i32* %8, align 4
  br label %200

109:                                              ; preds = %91
  %110 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %111 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i8* @devm_clk_get(i32* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %114 = bitcast i8* %113 to %struct.platform_device*
  %115 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %116 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %115, i32 0, i32 4
  store %struct.platform_device* %114, %struct.platform_device** %116, align 8
  %117 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %118 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %117, i32 0, i32 4
  %119 = load %struct.platform_device*, %struct.platform_device** %118, align 8
  %120 = call i64 @IS_ERR(%struct.platform_device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %124 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %123, i32 0, i32 4
  %125 = load %struct.platform_device*, %struct.platform_device** %124, align 8
  %126 = call i32 @PTR_ERR(%struct.platform_device* %125)
  store i32 %126, i32* %8, align 4
  br label %200

127:                                              ; preds = %109
  %128 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %129 = call i32 @meson_mx_mmc_register_clks(%struct.meson_mx_mmc_host* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %200

133:                                              ; preds = %127
  %134 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %135 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %134, i32 0, i32 0
  %136 = load %struct.platform_device*, %struct.platform_device** %135, align 8
  %137 = call i32 @clk_prepare_enable(%struct.platform_device* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %142 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @dev_err(i32* %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %200

145:                                              ; preds = %133
  %146 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %147 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %146, i32 0, i32 1
  %148 = load %struct.platform_device*, %struct.platform_device** %147, align 8
  %149 = call i32 @clk_prepare_enable(%struct.platform_device* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %154 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %195

157:                                              ; preds = %145
  store i32 0, i32* %10, align 4
  %158 = load i32, i32* @MESON_MX_SDIO_CONF_CMD_ARGUMENT_BITS_MASK, align 4
  %159 = call i32 @FIELD_PREP(i32 %158, i32 39)
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* @MESON_MX_SDIO_CONF_M_ENDIAN_MASK, align 4
  %163 = call i32 @FIELD_PREP(i32 %162, i32 3)
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* @MESON_MX_SDIO_CONF_WRITE_NWR_MASK, align 4
  %167 = call i32 @FIELD_PREP(i32 %166, i32 2)
  %168 = load i32, i32* %10, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* @MESON_MX_SDIO_CONF_WRITE_CRC_OK_STATUS_MASK, align 4
  %171 = call i32 @FIELD_PREP(i32 %170, i32 2)
  %172 = load i32, i32* %10, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %176 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %175, i32 0, i32 2
  %177 = load %struct.platform_device*, %struct.platform_device** %176, align 8
  %178 = load i32, i32* @MESON_MX_SDIO_CONF, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i64 %179
  %181 = call i32 @writel(i32 %174, %struct.platform_device* %180)
  %182 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %183 = call i32 @meson_mx_mmc_soft_reset(%struct.meson_mx_mmc_host* %182)
  %184 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %185 = call i32 @meson_mx_mmc_add_host(%struct.meson_mx_mmc_host* %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %157
  br label %190

189:                                              ; preds = %157
  store i32 0, i32* %2, align 4
  br label %208

190:                                              ; preds = %188
  %191 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %192 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %191, i32 0, i32 1
  %193 = load %struct.platform_device*, %struct.platform_device** %192, align 8
  %194 = call i32 @clk_disable_unprepare(%struct.platform_device* %193)
  br label %195

195:                                              ; preds = %190, %152
  %196 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %6, align 8
  %197 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %196, i32 0, i32 0
  %198 = load %struct.platform_device*, %struct.platform_device** %197, align 8
  %199 = call i32 @clk_disable_unprepare(%struct.platform_device* %198)
  br label %200

200:                                              ; preds = %195, %140, %132, %122, %104, %90, %71
  %201 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %202 = call i32 @mmc_free_host(%struct.mmc_host* %201)
  br label %203

203:                                              ; preds = %200, %33
  %204 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call i32 @of_platform_device_destroy(i32* %205, i32* null)
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %203, %189, %23, %16
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.platform_device* @meson_mx_mmc_slot_pdev(i32*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32*) #1

declare dso_local %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_mx_mmc_host*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.platform_device* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32, i32, i32, i32*, %struct.meson_mx_mmc_host*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @meson_mx_mmc_register_clks(%struct.meson_mx_mmc_host*) #1

declare dso_local i32 @clk_prepare_enable(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, %struct.platform_device*) #1

declare dso_local i32 @meson_mx_mmc_soft_reset(%struct.meson_mx_mmc_host*) #1

declare dso_local i32 @meson_mx_mmc_add_host(%struct.meson_mx_mmc_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.platform_device*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

declare dso_local i32 @of_platform_device_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
