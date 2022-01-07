; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ath10k_snoc_drv_priv = type { i64, i32, i32 }
%struct.of_device_id = type { %struct.ath10k_snoc_drv_priv* }
%struct.ath10k_snoc = type { i32*, i32*, %struct.TYPE_2__, %struct.ath10k*, %struct.platform_device* }
%struct.TYPE_2__ = type { i32* }
%struct.ath10k = type { %struct.TYPE_2__* }

@ath10k_snoc_dt_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to find matching device tree id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to set dma mask: %d\00", align 1
@ATH10K_BUS_SNOC = common dso_local global i32 0, align 4
@ath10k_snoc_hif_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to allocate core\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ath10k_snoc_bus_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to initialize resource: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to setup resource: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to request irqs: %d\0A\00", align 1
@vreg_cfg = common dso_local global i8* null, align 8
@clk_cfg = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to power on device: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to register wlfw qmi client: %d\0A\00", align 1
@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"snoc probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath10k_snoc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ath10k_snoc_drv_priv*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.ath10k_snoc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @ath10k_snoc_dt_match, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.of_device_id* @of_match_device(i32 %12, %struct.device* %14)
  store %struct.of_device_id* %15, %struct.of_device_id** %5, align 8
  %16 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %17 = icmp ne %struct.of_device_id* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %189

24:                                               ; preds = %1
  %25 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %25, i32 0, i32 0
  %27 = load %struct.ath10k_snoc_drv_priv*, %struct.ath10k_snoc_drv_priv** %26, align 8
  store %struct.ath10k_snoc_drv_priv* %27, %struct.ath10k_snoc_drv_priv** %4, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  store %struct.device* %29, %struct.device** %7, align 8
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load %struct.ath10k_snoc_drv_priv*, %struct.ath10k_snoc_drv_priv** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k_snoc_drv_priv, %struct.ath10k_snoc_drv_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dma_set_mask_and_coherent(%struct.device* %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %2, align 4
  br label %189

42:                                               ; preds = %24
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i32, i32* @ATH10K_BUS_SNOC, align 4
  %45 = load %struct.ath10k_snoc_drv_priv*, %struct.ath10k_snoc_drv_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ath10k_snoc_drv_priv, %struct.ath10k_snoc_drv_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.ath10k* @ath10k_core_create(i32 40, %struct.device* %43, i32 %44, i32 %47, i32* @ath10k_snoc_hif_ops)
  store %struct.ath10k* %48, %struct.ath10k** %8, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %50 = icmp ne %struct.ath10k* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %189

56:                                               ; preds = %42
  %57 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %58 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %57)
  store %struct.ath10k_snoc* %58, %struct.ath10k_snoc** %6, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %61 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %60, i32 0, i32 4
  store %struct.platform_device* %59, %struct.platform_device** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %64 = call i32 @platform_set_drvdata(%struct.platform_device* %62, %struct.ath10k* %63)
  %65 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %66 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %67 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %66, i32 0, i32 3
  store %struct.ath10k* %65, %struct.ath10k** %67, align 8
  %68 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %69 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* @ath10k_snoc_bus_ops, i32** %70, align 8
  %71 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %72 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %71, i32 0, i32 2
  %73 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 0
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %74, align 8
  %75 = load %struct.ath10k_snoc_drv_priv*, %struct.ath10k_snoc_drv_priv** %4, align 8
  %76 = getelementptr inbounds %struct.ath10k_snoc_drv_priv, %struct.ath10k_snoc_drv_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %9, align 8
  %78 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %79 = call i32 @ath10k_snoc_resource_init(%struct.ath10k* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %56
  %83 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @ath10k_warn(%struct.ath10k* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %185

86:                                               ; preds = %56
  %87 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %88 = call i32 @ath10k_snoc_setup_resource(%struct.ath10k* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @ath10k_warn(%struct.ath10k* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %185

95:                                               ; preds = %86
  %96 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %97 = call i32 @ath10k_snoc_request_irq(%struct.ath10k* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @ath10k_warn(%struct.ath10k* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %182

104:                                              ; preds = %95
  %105 = load i8*, i8** @vreg_cfg, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %108 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  store i64 0, i64* %11, align 8
  br label %109

109:                                              ; preds = %127, %104
  %110 = load i64, i64* %11, align 8
  %111 = load i8*, i8** @vreg_cfg, align 8
  %112 = call i64 @ARRAY_SIZE(i8* %111)
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %118 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = call i32 @ath10k_get_vreg_info(%struct.ath10k* %115, %struct.device* %116, i32* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %179

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %11, align 8
  br label %109

130:                                              ; preds = %109
  %131 = load i8*, i8** @clk_cfg, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %134 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %133, i32 0, i32 0
  store i32* %132, i32** %134, align 8
  store i64 0, i64* %11, align 8
  br label %135

135:                                              ; preds = %153, %130
  %136 = load i64, i64* %11, align 8
  %137 = load i8*, i8** @clk_cfg, align 8
  %138 = call i64 @ARRAY_SIZE(i8* %137)
  %139 = icmp ult i64 %136, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %142 = load %struct.device*, %struct.device** %7, align 8
  %143 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %144 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = call i32 @ath10k_get_clk_info(%struct.ath10k* %141, %struct.device* %142, i32* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %179

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %11, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %11, align 8
  br label %135

156:                                              ; preds = %135
  %157 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %158 = call i32 @ath10k_hw_power_on(%struct.ath10k* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @ath10k_err(%struct.ath10k* %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  br label %179

165:                                              ; preds = %156
  %166 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @ath10k_qmi_init(%struct.ath10k* %166, i64 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @ath10k_warn(%struct.ath10k* %172, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %173)
  br label %185

175:                                              ; preds = %165
  %176 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %177 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %178 = call i32 @ath10k_dbg(%struct.ath10k* %176, i32 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %189

179:                                              ; preds = %161, %151, %125
  %180 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %181 = call i32 @ath10k_snoc_free_irq(%struct.ath10k* %180)
  br label %182

182:                                              ; preds = %179, %100
  %183 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %184 = call i32 @ath10k_snoc_release_resource(%struct.ath10k* %183)
  br label %185

185:                                              ; preds = %182, %171, %91, %82
  %186 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %187 = call i32 @ath10k_core_destroy(%struct.ath10k* %186)
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %175, %51, %37, %18
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local %struct.ath10k* @ath10k_core_create(i32, %struct.device*, i32, i32, i32*) #1

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ath10k*) #1

declare dso_local i32 @ath10k_snoc_resource_init(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_snoc_setup_resource(%struct.ath10k*) #1

declare dso_local i32 @ath10k_snoc_request_irq(%struct.ath10k*) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ath10k_get_vreg_info(%struct.ath10k*, %struct.device*, i32*) #1

declare dso_local i32 @ath10k_get_clk_info(%struct.ath10k*, %struct.device*, i32*) #1

declare dso_local i32 @ath10k_hw_power_on(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_qmi_init(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_snoc_free_irq(%struct.ath10k*) #1

declare dso_local i32 @ath10k_snoc_release_resource(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_destroy(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
