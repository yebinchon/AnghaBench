; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_spectral.c_ath10k_spectral_scan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_spectral.c_ath10k_spectral_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wmi_vdev_spectral_conf_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_vif = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@SPECTRAL_DISABLED = common dso_local global i32 0, align 4
@WMI_SPECTRAL_TRIGGER_CMD_CLEAR = common dso_local global i32 0, align 4
@WMI_SPECTRAL_ENABLE_CMD_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to enable spectral scan: %d\0A\00", align 1
@SPECTRAL_BACKGROUND = common dso_local global i32 0, align 4
@WMI_SPECTRAL_COUNT_DEFAULT = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@WMI_SPECTRAL_PERIOD_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_PRIORITY_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_GC_ENA_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_RESTART_ENA_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_NOISE_FLOOR_REF_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_INIT_DELAY_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_NB_TONE_THR_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_STR_BIN_THR_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_WB_RPT_MODE_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_RSSI_RPT_MODE_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_RSSI_THR_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_PWR_FORMAT_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_RPT_MODE_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_BIN_SCALE_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_DBM_ADJ_DEFAULT = common dso_local global i32 0, align 4
@WMI_SPECTRAL_CHN_MASK_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to configure spectral scan: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_spectral_scan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_spectral_scan_config(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi_vdev_spectral_conf_arg, align 4
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 1
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = call %struct.ath10k_vif* @ath10k_get_spectral_vdev(%struct.ath10k* %14)
  store %struct.ath10k_vif* %15, %struct.ath10k_vif** %7, align 8
  %16 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %17 = icmp ne %struct.ath10k_vif* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %119

21:                                               ; preds = %2
  %22 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %23 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SPECTRAL_DISABLED, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %30 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @WMI_SPECTRAL_TRIGGER_CMD_CLEAR, align 4
  %38 = load i32, i32* @WMI_SPECTRAL_ENABLE_CMD_DISABLE, align 4
  %39 = call i32 @ath10k_wmi_vdev_spectral_enable(%struct.ath10k* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ath10k_warn(%struct.ath10k* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %119

47:                                               ; preds = %21
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SPECTRAL_DISABLED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %119

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SPECTRAL_BACKGROUND, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @WMI_SPECTRAL_COUNT_DEFAULT, align 4
  store i32 %57, i32* %9, align 4
  br label %66

58:                                               ; preds = %52
  %59 = load i32, i32* @u8, align 4
  %60 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @max_t(i32 %59, i32 1, i32 %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %58, %56
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @WMI_SPECTRAL_PERIOD_DEFAULT, align 4
  %72 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 18
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @WMI_SPECTRAL_PRIORITY_DEFAULT, align 4
  %74 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 17
  store i32 %73, i32* %74, align 4
  %75 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %76 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 16
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @WMI_SPECTRAL_GC_ENA_DEFAULT, align 4
  %82 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 15
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @WMI_SPECTRAL_RESTART_ENA_DEFAULT, align 4
  %84 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 14
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @WMI_SPECTRAL_NOISE_FLOOR_REF_DEFAULT, align 4
  %86 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 13
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @WMI_SPECTRAL_INIT_DELAY_DEFAULT, align 4
  %88 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 12
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @WMI_SPECTRAL_NB_TONE_THR_DEFAULT, align 4
  %90 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 11
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @WMI_SPECTRAL_STR_BIN_THR_DEFAULT, align 4
  %92 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 10
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @WMI_SPECTRAL_WB_RPT_MODE_DEFAULT, align 4
  %94 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 9
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @WMI_SPECTRAL_RSSI_RPT_MODE_DEFAULT, align 4
  %96 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @WMI_SPECTRAL_RSSI_THR_DEFAULT, align 4
  %98 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 7
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @WMI_SPECTRAL_PWR_FORMAT_DEFAULT, align 4
  %100 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 6
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @WMI_SPECTRAL_RPT_MODE_DEFAULT, align 4
  %102 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 5
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @WMI_SPECTRAL_BIN_SCALE_DEFAULT, align 4
  %104 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 4
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @WMI_SPECTRAL_DBM_ADJ_DEFAULT, align 4
  %106 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @WMI_SPECTRAL_CHN_MASK_DEFAULT, align 4
  %108 = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, %struct.wmi_vdev_spectral_conf_arg* %6, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %110 = call i32 @ath10k_wmi_vdev_spectral_conf(%struct.ath10k* %109, %struct.wmi_vdev_spectral_conf_arg* %6)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %66
  %114 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @ath10k_warn(%struct.ath10k* %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %3, align 4
  br label %119

118:                                              ; preds = %66
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %113, %51, %42, %18
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ath10k_vif* @ath10k_get_spectral_vdev(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_vdev_spectral_enable(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_spectral_conf(%struct.ath10k*, %struct.wmi_vdev_spectral_conf_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
