; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_init_configure_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_init_configure_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@hi_app_host_interest = common dso_local global i32 0, align 4
@HTC_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"settings HTC version failed\0A\00", align 1
@hi_option_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"setting firmware mode (1/2) failed\0A\00", align 1
@HI_OPTION_NUM_DEV_SHIFT = common dso_local global i32 0, align 4
@HI_OPTION_FW_MODE_AP = common dso_local global i32 0, align 4
@HI_OPTION_FW_MODE_SHIFT = common dso_local global i32 0, align 4
@HI_OPTION_MAC_ADDR_METHOD_SHIFT = common dso_local global i32 0, align 4
@HI_OPTION_FW_BRIDGE_SHIFT = common dso_local global i32 0, align 4
@HI_OPTION_FW_SUBMODE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"setting firmware mode (2/2) failed\0A\00", align 1
@hi_be = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"setting host CPU BE mode failed\0A\00", align 1
@hi_fw_swap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"setting FW data/desc swap flags failed\0A\00", align 1
@hi_hci_uart_pwr_mgmt_params_ext = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to set pwr_mgmt_params: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_init_configure_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_init_configure_target(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = load i32, i32* @hi_app_host_interest, align 4
  %8 = load i32, i32* @HTC_PROTOCOL_VERSION, align 4
  %9 = call i32 @ath10k_bmi_write32(%struct.ath10k* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %93

16:                                               ; preds = %1
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = load i32, i32* @hi_option_flag, align 4
  %19 = call i32 @ath10k_bmi_read32(%struct.ath10k* %17, i32 %18, i32* %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %24 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %93

26:                                               ; preds = %16
  %27 = load i32, i32* @HI_OPTION_NUM_DEV_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @HI_OPTION_FW_MODE_AP, align 4
  %32 = load i32, i32* @HI_OPTION_FW_MODE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @HI_OPTION_MAC_ADDR_METHOD_SHIFT, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @HI_OPTION_FW_BRIDGE_SHIFT, align 4
  %41 = shl i32 0, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @HI_OPTION_FW_SUBMODE_SHIFT, align 4
  %45 = shl i32 0, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %49 = load i32, i32* @hi_option_flag, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ath10k_bmi_write32(%struct.ath10k* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %26
  %55 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %56 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %93

58:                                               ; preds = %26
  %59 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %60 = load i32, i32* @hi_be, align 4
  %61 = call i32 @ath10k_bmi_write32(%struct.ath10k* %59, i32 %60, i32 0)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %66 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %93

68:                                               ; preds = %58
  %69 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %70 = load i32, i32* @hi_fw_swap, align 4
  %71 = call i32 @ath10k_bmi_write32(%struct.ath10k* %69, i32 %70, i32 0)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %76 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %93

78:                                               ; preds = %68
  %79 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %80 = load i32, i32* @hi_hci_uart_pwr_mgmt_params_ext, align 4
  %81 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %82 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ath10k_bmi_write32(%struct.ath10k* %79, i32 %80, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %87, %74, %64, %54, %22, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @ath10k_bmi_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_bmi_read32(%struct.ath10k*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
