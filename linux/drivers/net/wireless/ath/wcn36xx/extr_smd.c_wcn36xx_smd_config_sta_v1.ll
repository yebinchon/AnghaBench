; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_config_sta_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_config_sta_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.wcn36xx_hal_config_sta_req_msg = type { i32 }
%struct.wcn36xx_hal_config_sta_req_msg_v1 = type { %struct.TYPE_2__, %struct.wcn36xx_hal_config_sta_params_v1 }
%struct.TYPE_2__ = type { i32 }
%struct.wcn36xx_hal_config_sta_params_v1 = type { i32, i32, i32, i32, i32, i32, i32 }

@WCN36XX_HAL_CONFIG_STA_REQ = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"hal config sta v1 action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, %struct.wcn36xx_hal_config_sta_req_msg*)* @wcn36xx_smd_config_sta_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_config_sta_v1(%struct.wcn36xx* %0, %struct.wcn36xx_hal_config_sta_req_msg* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.wcn36xx_hal_config_sta_req_msg*, align 8
  %5 = alloca %struct.wcn36xx_hal_config_sta_req_msg_v1, align 8
  %6 = alloca %struct.wcn36xx_hal_config_sta_params_v1*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.wcn36xx_hal_config_sta_req_msg* %1, %struct.wcn36xx_hal_config_sta_req_msg** %4, align 8
  %7 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, %struct.wcn36xx_hal_config_sta_req_msg_v1* %5, i32 0, i32 1
  store %struct.wcn36xx_hal_config_sta_params_v1* %7, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %8 = load i32, i32* @WCN36XX_HAL_CONFIG_STA_REQ, align 4
  %9 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_config_sta_req_msg_v1* byval(%struct.wcn36xx_hal_config_sta_req_msg_v1) align 8 %5, i32 %8)
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %11 = load %struct.wcn36xx_hal_config_sta_req_msg*, %struct.wcn36xx_hal_config_sta_req_msg** %4, align 8
  %12 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, %struct.wcn36xx_hal_config_sta_req_msg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, %struct.wcn36xx_hal_config_sta_req_msg_v1* %5, i32 0, i32 1
  %14 = call i32 @wcn36xx_smd_convert_sta_to_v1(%struct.wcn36xx* %10, i32* %12, %struct.wcn36xx_hal_config_sta_params_v1* %13)
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PREPARE_HAL_BUF(i32 %17, %struct.wcn36xx_hal_config_sta_req_msg_v1* byval(%struct.wcn36xx_hal_config_sta_req_msg_v1) align 8 %5)
  %19 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %20 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %30 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %33 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %36 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wcn36xx_hal_config_sta_params_v1*, %struct.wcn36xx_hal_config_sta_params_v1** %6, align 8
  %39 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params_v1, %struct.wcn36xx_hal_config_sta_params_v1* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wcn36xx_dbg(i32 %19, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg_v1, %struct.wcn36xx_hal_config_sta_req_msg_v1* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %42, i32 %45)
  ret i32 %46
}

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_config_sta_req_msg_v1* byval(%struct.wcn36xx_hal_config_sta_req_msg_v1) align 8, i32) #1

declare dso_local i32 @wcn36xx_smd_convert_sta_to_v1(%struct.wcn36xx*, i32*, %struct.wcn36xx_hal_config_sta_params_v1*) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_config_sta_req_msg_v1* byval(%struct.wcn36xx_hal_config_sta_req_msg_v1) align 8) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
