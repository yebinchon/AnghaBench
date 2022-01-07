; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_process_ptt_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_process_ptt_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_hal_process_ptt_msg_req_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Sending hal_process_ptt_msg failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"process_ptt_msg response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_process_ptt_msg(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, i8* %2, i64 %3, i8** %4) #0 {
  %6 = alloca %struct.wcn36xx*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.wcn36xx_hal_process_ptt_msg_req_msg*, align 8
  %12 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %14 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* %9, align 8
  %17 = add i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.wcn36xx_hal_process_ptt_msg_req_msg* @kmalloc(i32 %18, i32 %19)
  store %struct.wcn36xx_hal_process_ptt_msg_req_msg* %20, %struct.wcn36xx_hal_process_ptt_msg_req_msg** %11, align 8
  %21 = load %struct.wcn36xx_hal_process_ptt_msg_req_msg*, %struct.wcn36xx_hal_process_ptt_msg_req_msg** %11, align 8
  %22 = icmp ne %struct.wcn36xx_hal_process_ptt_msg_req_msg* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  br label %68

26:                                               ; preds = %5
  %27 = load %struct.wcn36xx_hal_process_ptt_msg_req_msg*, %struct.wcn36xx_hal_process_ptt_msg_req_msg** %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @INIT_HAL_PTT_MSG(%struct.wcn36xx_hal_process_ptt_msg_req_msg* %27, i64 %28)
  %30 = load %struct.wcn36xx_hal_process_ptt_msg_req_msg*, %struct.wcn36xx_hal_process_ptt_msg_req_msg** %11, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_hal_process_ptt_msg_req_msg, %struct.wcn36xx_hal_process_ptt_msg_req_msg* %30, i32 0, i32 1
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @memcpy(i32* %31, i8* %32, i64 %33)
  %35 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %36 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wcn36xx_hal_process_ptt_msg_req_msg*, %struct.wcn36xx_hal_process_ptt_msg_req_msg** %11, align 8
  %39 = call i32 @PREPARE_HAL_PTT_MSG_BUF(i32 %37, %struct.wcn36xx_hal_process_ptt_msg_req_msg* %38)
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %41 = load %struct.wcn36xx_hal_process_ptt_msg_req_msg*, %struct.wcn36xx_hal_process_ptt_msg_req_msg** %11, align 8
  %42 = getelementptr inbounds %struct.wcn36xx_hal_process_ptt_msg_req_msg, %struct.wcn36xx_hal_process_ptt_msg_req_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %40, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %65

50:                                               ; preds = %26
  %51 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %52 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %55 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8**, i8*** %10, align 8
  %58 = call i32 @wcn36xx_smd_process_ptt_msg_rsp(i32 %53, i32 %56, i8** %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %65

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %61, %48
  %66 = load %struct.wcn36xx_hal_process_ptt_msg_req_msg*, %struct.wcn36xx_hal_process_ptt_msg_req_msg** %11, align 8
  %67 = call i32 @kfree(%struct.wcn36xx_hal_process_ptt_msg_req_msg* %66)
  br label %68

68:                                               ; preds = %65, %23
  %69 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %70 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wcn36xx_hal_process_ptt_msg_req_msg* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_HAL_PTT_MSG(%struct.wcn36xx_hal_process_ptt_msg_req_msg*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @PREPARE_HAL_PTT_MSG_BUF(i32, %struct.wcn36xx_hal_process_ptt_msg_req_msg*) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_process_ptt_msg_rsp(i32, i32, i8**) #1

declare dso_local i32 @kfree(%struct.wcn36xx_hal_process_ptt_msg_req_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
