; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ath10k = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.ath10k_ahb = type { i32, i32, %struct.platform_device* }
%struct.ath10k_pci = type { %struct.TYPE_2__, i32, %struct.ath10k*, i32, i32 }
%struct.of_device_id = type { i64 }
%struct.ath10k_bus_params = type { i32, i32 }

@ath10k_ahb_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to find matching device tree id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_BUS_AHB = common dso_local global i32 0, align 4
@ath10k_ahb_hif_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to allocate core\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ahb probe\0A\00", align 1
@ath10k_ahb_bus_ops = common dso_local global i32 0, align 4
@ath10k_ahb_qca4019_targ_cpu_to_ce_addr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to setup resource: %d\0A\00", align 1
@ATH10K_DEV_TYPE_LL = common dso_local global i32 0, align 4
@SOC_CHIP_ID_ADDRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to get chip id\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to register driver core: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath10k_ahb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_ahb*, align 8
  %6 = alloca %struct.ath10k_pci*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath10k_bus_params, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = bitcast %struct.ath10k_bus_params* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load i32, i32* @ath10k_ahb_of_match, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.of_device_id* @of_match_device(i32 %13, i32* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %7, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %158

25:                                               ; preds = %1
  %26 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  store i64 48, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @ATH10K_BUS_AHB, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.ath10k* @ath10k_core_create(i64 %30, i32* %32, i32 %33, i32 %34, i32* @ath10k_ahb_hif_ops)
  store %struct.ath10k* %35, %struct.ath10k** %4, align 8
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = icmp ne %struct.ath10k* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %25
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %158

44:                                               ; preds = %25
  %45 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %46 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %47 = call i32 @ath10k_dbg(%struct.ath10k* %45, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %49 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %48)
  store %struct.ath10k_pci* %49, %struct.ath10k_pci** %6, align 8
  %50 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %51 = call %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k* %50)
  store %struct.ath10k_ahb* %51, %struct.ath10k_ahb** %5, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %5, align 8
  %54 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %53, i32 0, i32 2
  store %struct.platform_device* %52, %struct.platform_device** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.ath10k* %56)
  %58 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %59 = call i32 @ath10k_ahb_resource_init(%struct.ath10k* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %152

63:                                               ; preds = %44
  %64 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %65 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %5, align 8
  %67 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %70 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %5, align 8
  %72 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %75 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %77 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %78 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %77, i32 0, i32 2
  store %struct.ath10k* %76, %struct.ath10k** %78, align 8
  %79 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %80 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32* @ath10k_ahb_bus_ops, i32** %81, align 8
  %82 = load i32, i32* @ath10k_ahb_qca4019_targ_cpu_to_ce_addr, align 4
  %83 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %84 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %86 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %85, i32 0, i32 0
  %87 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %88 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %87, i32 0, i32 0
  store %struct.TYPE_2__* %86, %struct.TYPE_2__** %88, align 8
  %89 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %90 = call i32 @ath10k_pci_setup_resource(%struct.ath10k* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %63
  %94 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %149

97:                                               ; preds = %63
  %98 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %99 = call i32 @ath10k_pci_init_napi(%struct.ath10k* %98)
  %100 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %101 = call i32 @ath10k_ahb_request_irq_legacy(%struct.ath10k* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %146

105:                                              ; preds = %97
  %106 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %107 = call i32 @ath10k_ahb_prepare_device(%struct.ath10k* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %143

111:                                              ; preds = %105
  %112 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %113 = call i32 @ath10k_pci_ce_deinit(%struct.ath10k* %112)
  %114 = load i32, i32* @ATH10K_DEV_TYPE_LL, align 4
  %115 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %11, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %117 = load i32, i32* @SOC_CHIP_ID_ADDRESS, align 4
  %118 = call i32 @ath10k_ahb_soc_read32(%struct.ath10k* %116, i32 %117)
  %119 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %11, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %11, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %125 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %138

128:                                              ; preds = %111
  %129 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %130 = call i32 @ath10k_core_register(%struct.ath10k* %129, %struct.ath10k_bus_params* %11)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %138

137:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %158

138:                                              ; preds = %133, %123
  %139 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %140 = call i32 @ath10k_ahb_halt_chip(%struct.ath10k* %139)
  %141 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %142 = call i32 @ath10k_ahb_clock_disable(%struct.ath10k* %141)
  br label %143

143:                                              ; preds = %138, %110
  %144 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %145 = call i32 @ath10k_ahb_release_irq_legacy(%struct.ath10k* %144)
  br label %146

146:                                              ; preds = %143, %104
  %147 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %148 = call i32 @ath10k_pci_free_pipes(%struct.ath10k* %147)
  br label %149

149:                                              ; preds = %146, %93
  %150 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %151 = call i32 @ath10k_ahb_resource_deinit(%struct.ath10k* %150)
  br label %152

152:                                              ; preds = %149, %62
  %153 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %154 = call i32 @ath10k_core_destroy(%struct.ath10k* %153)
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = call i32 @platform_set_drvdata(%struct.platform_device* %155, %struct.ath10k* null)
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %152, %137, %38, %19
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local %struct.ath10k* @ath10k_core_create(i64, i32*, i32, i32, i32*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #2

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #2

declare dso_local %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ath10k*) #2

declare dso_local i32 @ath10k_ahb_resource_init(%struct.ath10k*) #2

declare dso_local i32 @ath10k_pci_setup_resource(%struct.ath10k*) #2

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #2

declare dso_local i32 @ath10k_pci_init_napi(%struct.ath10k*) #2

declare dso_local i32 @ath10k_ahb_request_irq_legacy(%struct.ath10k*) #2

declare dso_local i32 @ath10k_ahb_prepare_device(%struct.ath10k*) #2

declare dso_local i32 @ath10k_pci_ce_deinit(%struct.ath10k*) #2

declare dso_local i32 @ath10k_ahb_soc_read32(%struct.ath10k*, i32) #2

declare dso_local i32 @ath10k_core_register(%struct.ath10k*, %struct.ath10k_bus_params*) #2

declare dso_local i32 @ath10k_ahb_halt_chip(%struct.ath10k*) #2

declare dso_local i32 @ath10k_ahb_clock_disable(%struct.ath10k*) #2

declare dso_local i32 @ath10k_ahb_release_irq_legacy(%struct.ath10k*) #2

declare dso_local i32 @ath10k_pci_free_pipes(%struct.ath10k*) #2

declare dso_local i32 @ath10k_ahb_resource_deinit(%struct.ath10k*) #2

declare dso_local i32 @ath10k_core_destroy(%struct.ath10k*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
