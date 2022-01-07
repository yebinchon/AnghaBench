; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.qlcnic_adapter*)* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i32, i32*, i32 }

@qlcnic_use_msi_x = common dso_local global i32 0, align 4
@qlcnic_load_fw_file = common dso_local global i32 0, align 4
@QLC_83XX_POST_FAST_MODE = common dso_local global i32 0, align 4
@QLC_83XX_POST_MEDIUM_MODE = common dso_local global i32 0, align 4
@QLC_83XX_POST_SLOW_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed reading flash mfg id\0A\00", align 1
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to setup interrupt\0A\00", align 1
@qlcnic_83xx_idc_aen_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_init(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 6
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load i32, i32* @qlcnic_use_msi_x, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %19 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @qlcnic_load_fw_file, align 4
  switch i32 %20, label %39 [
    i32 2, label %21
    i32 3, label %27
    i32 4, label %33
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @QLC_83XX_POST_FAST_MODE, align 4
  %23 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load i32, i32* @QLC_83XX_POST_MEDIUM_MODE, align 4
  %29 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %32 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load i32, i32* @QLC_83XX_POST_SLOW_MODE, align 4
  %35 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %36 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %33, %27, %21
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %44 = call i32 @qlcnic_83xx_init_rings(%struct.qlcnic_adapter* %43)
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %46 = call i32 @qlcnic_83xx_init_mailbox_work(%struct.qlcnic_adapter* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %167

50:                                               ; preds = %42
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %52 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @qlcnic_sriov_vf_init(%struct.qlcnic_adapter* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %158

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %169

63:                                               ; preds = %50
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %65 = call i64 @qlcnic_83xx_read_flash_descriptor_table(%struct.qlcnic_adapter* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %69 = call i64 @qlcnic_83xx_read_flash_mfg_id(%struct.qlcnic_adapter* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67, %63
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENOTRECOVERABLE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %158

79:                                               ; preds = %67
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %81 = call i32 @qlcnic_83xx_check_hw_status(%struct.qlcnic_adapter* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %158

85:                                               ; preds = %79
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %87 = call i32 @qlcnic_83xx_get_fw_info(%struct.qlcnic_adapter* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %158

91:                                               ; preds = %85
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %93 = call i32 @qlcnic_83xx_idc_init(%struct.qlcnic_adapter* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %158

97:                                               ; preds = %91
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %99 = call i32 @qlcnic_setup_intr(%struct.qlcnic_adapter* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %103, i32 0, i32 5
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %155

108:                                              ; preds = %97
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %110 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %109, i32 0, i32 4
  %111 = load i32, i32* @qlcnic_83xx_idc_aen_work, align 4
  %112 = call i32 @INIT_DELAYED_WORK(i32* %110, i32 %111)
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %114 = call i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %152

118:                                              ; preds = %108
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %120 = call i32 @qlcnic_83xx_clear_function_resources(%struct.qlcnic_adapter* %119)
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %122 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @qlcnic_dcb_enable(i32 %123)
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %126 = call i32 @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter* %125, i32 1)
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @qlcnic_dcb_get_info(i32 %129)
  %131 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %132 = call i32 @qlcnic_83xx_configure_opmode(%struct.qlcnic_adapter* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %118
  br label %152

136:                                              ; preds = %118
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32 (%struct.qlcnic_adapter*)*, i32 (%struct.qlcnic_adapter*)** %140, align 8
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %143 = call i32 %141(%struct.qlcnic_adapter* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %152

147:                                              ; preds = %136
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = call i32 @qlcnic_83xx_idc_poll_dev_state(i32* %150)
  store i32 0, i32* %3, align 4
  br label %169

152:                                              ; preds = %146, %135, %117
  %153 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %154 = call i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter* %153)
  br label %155

155:                                              ; preds = %152, %102
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %157 = call i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter* %156)
  br label %158

158:                                              ; preds = %155, %96, %90, %84, %71, %60
  %159 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %160 = call i32 @qlcnic_83xx_detach_mailbox_work(%struct.qlcnic_adapter* %159)
  %161 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %162 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @qlcnic_83xx_free_mailbox(i32* %163)
  %165 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %166 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %165, i32 0, i32 2
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %158, %49
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %147, %61
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @qlcnic_83xx_init_rings(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_init_mailbox_work(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_vf_init(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_83xx_read_flash_descriptor_table(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_read_flash_mfg_id(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_83xx_check_hw_status(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_get_fw_info(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_init(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_setup_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_clear_function_resources(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_dcb_enable(i32) #1

declare dso_local i32 @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_dcb_get_info(i32) #1

declare dso_local i32 @qlcnic_83xx_configure_opmode(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_poll_dev_state(i32*) #1

declare dso_local i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_detach_mailbox_work(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_free_mailbox(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
