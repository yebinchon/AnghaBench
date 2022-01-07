; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_probe_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_probe_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.siena_nic_data*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i64, i8*, i8* }
%struct.siena_nic_data = type { %struct.efx_nic* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Siena FPGA not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EFX_MAX_CHANNELS = common dso_local global i8* null, align 8
@FR_AZ_CS_DEBUG = common dso_local global i32 0, align 4
@FRF_CZ_CS_PORT_NUM = common dso_local global i32 0, align 4
@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to reset NIC\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"INT_KER at %llx (virt %p phys %llx)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"NVRAM is invalid therefore using defaults\0A\00", align 1
@PHY_TYPE_NONE = common dso_local global i32 0, align 4
@MDIO_PRTAD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @siena_probe_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_probe_nic(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.siena_nic_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.siena_nic_data* @kzalloc(i32 8, i32 %7)
  store %struct.siena_nic_data* %8, %struct.siena_nic_data** %4, align 8
  %9 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %10 = icmp ne %struct.siena_nic_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %156

14:                                               ; preds = %1
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %17 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %16, i32 0, i32 0
  store %struct.efx_nic* %15, %struct.efx_nic** %17, align 8
  %18 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 0
  store %struct.siena_nic_data* %18, %struct.siena_nic_data** %20, align 8
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = call i64 @efx_farch_fpga_ver(%struct.efx_nic* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %26 = load i32, i32* @probe, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netif_err(%struct.efx_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %150

33:                                               ; preds = %14
  %34 = load i8*, i8** @EFX_MAX_CHANNELS, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @EFX_MAX_CHANNELS, align 8
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %41 = load i32, i32* @FR_AZ_CS_DEBUG, align 4
  %42 = call i32 @efx_reado(%struct.efx_nic* %40, i32* %5, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @FRF_CZ_CS_PORT_NUM, align 4
  %45 = call i64 @EFX_OWORD_FIELD(i32 %43, i32 %44)
  %46 = sub nsw i64 %45, 1
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = call i32 @efx_mcdi_init(%struct.efx_nic* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %150

54:                                               ; preds = %33
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = load i32, i32* @RESET_TYPE_ALL, align 4
  %57 = call i32 @efx_mcdi_reset(%struct.efx_nic* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = load i32, i32* @probe, align 4
  %63 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netif_err(%struct.efx_nic* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %145

67:                                               ; preds = %54
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = call i32 @siena_init_wol(%struct.efx_nic* %68)
  %70 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %71 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %72 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %71, i32 0, i32 1
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %70, %struct.TYPE_5__* %72, i32 4, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %144

78:                                               ; preds = %67
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 15
  %84 = call i32 @BUG_ON(i32 %83)
  %85 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %86 = load i32, i32* @probe, align 4
  %87 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %88 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %91 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %96 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %100 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @virt_to_phys(i32 %102)
  %104 = call i32 @netif_dbg(%struct.efx_nic* %85, i32 %86, i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %94, i32 %98, i64 %103)
  %105 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %106 = call i32 @siena_probe_nvconfig(%struct.efx_nic* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %78
  %112 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %113 = load i32, i32* @probe, align 4
  %114 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %115 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @netif_err(%struct.efx_nic* %112, i32 %113, i32 %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @PHY_TYPE_NONE, align 4
  %119 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %120 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @MDIO_PRTAD_NONE, align 4
  %122 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %123 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  br label %130

125:                                              ; preds = %78
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %139

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129, %111
  %131 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %132 = call i32 @efx_mcdi_mon_probe(%struct.efx_nic* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %139

136:                                              ; preds = %130
  %137 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %138 = call i32 @efx_ptp_defer_probe_with_channel(%struct.efx_nic* %137)
  store i32 0, i32* %2, align 4
  br label %156

139:                                              ; preds = %135, %128
  %140 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %141 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %142 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %141, i32 0, i32 1
  %143 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %140, %struct.TYPE_5__* %142)
  br label %144

144:                                              ; preds = %139, %77
  br label %145

145:                                              ; preds = %144, %60
  %146 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %147 = call i32 @efx_mcdi_detach(%struct.efx_nic* %146)
  %148 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %149 = call i32 @efx_mcdi_fini(%struct.efx_nic* %148)
  br label %150

150:                                              ; preds = %145, %53, %24
  %151 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %152 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %151, i32 0, i32 0
  %153 = load %struct.siena_nic_data*, %struct.siena_nic_data** %152, align 8
  %154 = call i32 @kfree(%struct.siena_nic_data* %153)
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %150, %136, %11
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.siena_nic_data* @kzalloc(i32, i32) #1

declare dso_local i64 @efx_farch_fpga_ver(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @efx_mcdi_init(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @siena_init_wol(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64, i32, i64) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @siena_probe_nvconfig(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_mon_probe(%struct.efx_nic*) #1

declare dso_local i32 @efx_ptp_defer_probe_with_channel(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, %struct.TYPE_5__*) #1

declare dso_local i32 @efx_mcdi_detach(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_fini(%struct.efx_nic*) #1

declare dso_local i32 @kfree(%struct.siena_nic_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
