; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_mc_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_mc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i64 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_hal_rcv_flt_mc_addr_list_type = type { i32 }
%struct.wcn36xx_vif = type { i32 }
%struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@WCN36XX_HAL_8023_MULTICAST_LIST_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Sending HAL_8023_MULTICAST_LIST failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"HAL_8023_MULTICAST_LIST rsp failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_set_mc_list(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type* %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type*, align 8
  %7 = alloca %struct.wcn36xx_vif*, align 8
  %8 = alloca %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type* %2, %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type** %6, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %11 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %10)
  store %struct.wcn36xx_vif* %11, %struct.wcn36xx_vif** %7, align 8
  store %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg* null, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg** %8, align 8
  %12 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %13 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg*
  store %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg* %18, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg** %8, align 8
  %19 = load %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg*, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg** %8, align 8
  %20 = getelementptr inbounds %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg* %19, i32 0, i32 0
  %21 = load i32, i32* @WCN36XX_HAL_8023_MULTICAST_LIST_REQ, align 4
  %22 = call i32 @init_hal_msg(%struct.TYPE_4__* %20, i32 %21, i32 16)
  %23 = load %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type*, %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type** %6, align 8
  %24 = icmp ne %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg*, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg** %8, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg* %26, i32 0, i32 1
  %28 = load %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type*, %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type** %6, align 8
  %29 = call i32 @memcpy(%struct.TYPE_3__* %27, %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type* %28, i32 16)
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg*, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg** %8, align 8
  %32 = getelementptr inbounds %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %7, align 8
  %36 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg*, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg** %8, align 8
  %39 = getelementptr inbounds %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %42 = load %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg*, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg** %8, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg, %struct.wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %41, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %65

51:                                               ; preds = %34
  %52 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %53 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %56 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @wcn36xx_smd_rsp_status_check(i64 %54, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %61, %49
  %66 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %67 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_hal_msg(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type*, i32) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_rsp_status_check(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
