; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_init_mgmt_vnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_init_mgmt_vnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_npar_info*, %struct.TYPE_2__*, %struct.qlcnic_hardware_context* }
%struct.qlcnic_npar_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_ADAPTER_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"id:%d active:%d type:%d port:%d min_bw:%d max_bw:%d mac_addr:%pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Max functions = %d, active functions = %d\0A\00", align 1
@qlcnic_use_msi_x = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"HAL Version: %d, Management function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_init_mgmt_vnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_init_mgmt_vnic(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.qlcnic_npar_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 3
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  store %struct.qlcnic_hardware_context* %11, %struct.qlcnic_hardware_context** %4, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = call i32 @qlcnic_83xx_get_minidump_template(%struct.qlcnic_adapter* %18)
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @QLCNIC_ADAPTER_INITIALIZED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %92, label %26

26:                                               ; preds = %1
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = call i64 @qlcnic_init_pci_info(%struct.qlcnic_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %126

32:                                               ; preds = %26
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 1
  %35 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %34, align 8
  store %struct.qlcnic_npar_info* %35, %struct.qlcnic_npar_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %66, %32
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %51 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %54 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %57 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %60 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %43, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %42
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %70 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %69, i32 1
  store %struct.qlcnic_npar_info* %70, %struct.qlcnic_npar_info** %6, align 8
  br label %36

71:                                               ; preds = %36
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %74 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %77 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %81 = call i64 @qlcnic_83xx_set_vnic_opmode(%struct.qlcnic_adapter* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %126

85:                                               ; preds = %71
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %87 = call i64 @qlcnic_set_default_offload_settings(%struct.qlcnic_adapter* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %126

91:                                               ; preds = %85
  br label %99

92:                                               ; preds = %1
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %94 = call i64 @qlcnic_reset_npar_config(%struct.qlcnic_adapter* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %126

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %91
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %101 = call i64 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %126

105:                                              ; preds = %99
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %107 = call i32 @qlcnic_83xx_config_vnic_buff_descriptors(%struct.qlcnic_adapter* %106)
  %108 = load i64, i64* @qlcnic_use_msi_x, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %113 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @QLCNIC_ADAPTER_INITIALIZED, align 4
  %115 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %120 = call i32 @qlcnic_83xx_enable_vnic_mode(%struct.qlcnic_adapter* %119, i32 1)
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %123 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %105, %103, %96, %89, %83, %30
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @qlcnic_83xx_get_minidump_template(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_init_pci_info(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i64 @qlcnic_83xx_set_vnic_opmode(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_set_default_offload_settings(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_reset_npar_config(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_config_vnic_buff_descriptors(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_enable_vnic_mode(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
